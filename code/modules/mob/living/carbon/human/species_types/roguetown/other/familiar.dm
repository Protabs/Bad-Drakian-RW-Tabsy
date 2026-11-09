/*
	Player-controlled familiars. Non-sentient familiars stay simple animals
	(see simple_animal/friendly/familiars.dm); GLOB.familiar_player_types maps each
	of them to the human-based mob used when a player takes over.
*/
/mob/living/carbon/human/species/familiar
	name = "familiar"
	race = /datum/species/familiar
	gender = MALE
	mob_size = MOB_SIZE_SMALL
	density = FALSE
	pass_flags = PASSMOB
	see_in_dark = FAMILIAR_SEE_IN_DARK
	faction = list("rogueanimal", "neutral")
	base_intents = list(INTENT_HELP)
	ambushable = FALSE
	footstep_type = FOOTSTEP_MOB_BAREFOOT
	butcher_results = list(/obj/item/natural/stone = 1)

	var/mob/living/familiar_summoner
	var/buff_given
	var/list/inherent_spell = list()
	var/summoning_emote
	var/flight_capable = FALSE
	var/flight_time = 2 SECONDS
	/// Icon state used on familiars.dmi; the human icon_state is cleared on init, so it is kept here.
	var/familiar_icon_state
	var/list/stored_books = list()
	var/storage_limit = 5
	var/list/saved_trails = list()
	var/stoneform = FALSE

/mob/living/carbon/human/species/familiar/Initialize(mapload)
	. = ..()
	if(flight_capable)
		flying = TRUE
		verbs += list(
			/mob/living/carbon/human/species/familiar/proc/fly_up,
			/mob/living/carbon/human/species/familiar/proc/fly_down
		)

/mob/living/carbon/human/species/familiar/death(gibbed, nocutscene = FALSE)
	var/was_alive = (stat != DEAD)
	. = ..()
	if(!was_alive)
		return
	if(familiar_summoner)
		to_chat(familiar_summoner, span_warning("[real_name] has fallen, and your bond dims. Yet in the quiet beyond, a flicker of their essence remains."))
	if(stoneform)
		revert_from_stoneform()
	drop_stored_books()

/mob/living/carbon/human/species/familiar/Destroy()
	if(familiar_summoner)
		if(buff_given)
			familiar_summoner.remove_status_effect(buff_given)
		if(familiar_summoner.mind)
			familiar_summoner.mind.RemoveSpell(/obj/effect/proc_holder/spell/self/message_familiar)
	drop_stored_books()
	return ..()

/mob/living/carbon/human/species/familiar/Move(atom/newloc, direct)
	if(stoneform)
		return FALSE
	return ..()

/mob/living/carbon/human/species/familiar/examine(mob/user)
	. = ..()
	var/datum/familiar_prefs/familiar_preferences = client?.prefs?.familiar_prefs
	if(familiar_preferences && (familiar_preferences.familiar_flavortext || familiar_preferences.familiar_headshot_link || familiar_preferences.familiar_ooc_notes))
		. += "<a href='?src=[REF(src)];task=view_fam_headshot;'>Examine closer</a>"

/mob/living/carbon/human/species/familiar/Topic(href, list/href_list)
	. = ..()
	if(href_list["task"] != "view_fam_headshot" || !ismob(usr))
		return
	var/datum/familiar_prefs/familiar_preferences = client?.prefs?.familiar_prefs
	if(familiar_preferences)
		show_familiar_preview(usr, familiar_preferences)

/mob/living/carbon/human/species/familiar/proc/drop_stored_books()
	for(var/obj/item/stored_item in stored_books)
		stored_item.forceMove(drop_location())
	stored_books.Cut()

/mob/living/carbon/human/species/familiar/proc/enter_stoneform()
	stoneform = TRUE
	name_override = "Stone"
	name = get_visible_name()
	regenerate_icons()

/mob/living/carbon/human/species/familiar/proc/revert_from_stoneform()
	if(!stoneform)
		return
	stoneform = FALSE
	name_override = null
	name = get_visible_name()
	visible_message(
		span_notice("[src] shifts back into a more animated, toad-like form."),
		span_notice("You shift back into your natural form.")
	)
	regenerate_icons()

/mob/living/carbon/human/species/familiar/proc/fly_up()
	set category = "Flight"
	set name = "Fly Up"
	familiar_fly(UP)

/mob/living/carbon/human/species/familiar/proc/fly_down()
	set category = "Flight"
	set name = "Fly Down"
	familiar_fly(DOWN)

/mob/living/carbon/human/species/familiar/proc/familiar_fly(vertical_dir)
	var/going_up = (vertical_dir == UP)
	if(pulledby)
		to_chat(src, span_notice("I can't fly away while being grabbed!"))
		return
	visible_message(span_notice("[src] begins to [going_up ? "ascend" : "descend"]!"), span_notice("You take flight..."))
	if(do_after(src, flight_time) && !pulledby)
		zMove(vertical_dir, TRUE)
		to_chat(src, span_notice("I fly [going_up ? "up" : "down"]."))

/datum/species/familiar
	name = "familiar"
	id = "familiar"
	species_traits = list(NO_UNDERWEAR, NO_ORGAN_FEATURES, NO_BODYPART_FEATURES)
	inherent_traits = list(
		TRAIT_NOFALLDAMAGE1,
		TRAIT_INFINITE_STAMINA,
		TRAIT_CHUNKYFINGERS,
		TRAIT_NOHUNGER,
		TRAIT_HARDDISMEMBER, //Decapping animal-shaped humans bugs them out, same as wildshapes.
	)
	inherent_biotypes = MOB_ORGANIC|MOB_BEAST|MOB_HUMANOID
	no_equip = list(SLOT_SHIRT, SLOT_HEAD, SLOT_WEAR_MASK, SLOT_ARMOR, SLOT_GLOVES, SLOT_SHOES, SLOT_PANTS, SLOT_CLOAK, SLOT_BELT, SLOT_BACK_R, SLOT_BACK_L, SLOT_S_STORE)
	nojumpsuit = 1
	sexes = 1
	changesource_flags = MIRROR_BADMIN
	offset_features = list(OFFSET_HANDS = list(0,2), OFFSET_HANDS_F = list(0,2))
	organs = list(
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes/night_vision,
		ORGAN_SLOT_EARS = /obj/item/organ/ears,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue/wild_tongue,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
		ORGAN_SLOT_GUTS = /obj/item/organ/guts,
	)

/datum/species/familiar/regenerate_icons(mob/living/carbon/human/H)
	var/mob/living/carbon/human/species/familiar/familiar_mob = H
	if(!istype(familiar_mob))
		return FALSE
	if(familiar_mob.stoneform)
		H.icon = 'icons/roguetown/items/natural.dmi'
		H.icon_state = "stone1"
	else
		H.icon = 'icons/roguetown/mob/familiars.dmi'
		H.icon_state = familiar_mob.familiar_icon_state
	H.update_damage_overlays()
	return TRUE

/datum/species/familiar/update_damage_overlays(mob/living/carbon/human/H)
	H.remove_overlay(DAMAGE_LAYER)
	return TRUE

/mob/living/carbon/human/species/familiar/pondstone_toad
	name = "Pondstone Toad"
	desc = "This damp, heavy toad pulses with unseen strength. Its skin is cool and lined with mineral veins."
	familiar_icon_state = "pondstone"
	summoning_emote = "A deep thrum echoes beneath your feet, and a mossy toad pushes itself free from the earth, humming low."
	buff_given = /datum/status_effect/buff/familiar/settled_weight
	inherent_spell = list(/obj/effect/proc_holder/spell/self/stillness_of_stone)
	STASTR = 11
	STAPER = 7
	STAINT = 9
	STACON = 11
	STASPD = 5
	STALUC = 9

/mob/living/carbon/human/species/familiar/mist_lynx
	name = "Mist Lynx"
	desc = "A ghostlike lynx, its eyes gleaming like twin moons. It never seems to blink, even when you're not looking."
	familiar_icon_state = "mist"
	alpha = 150
	pass_flags = PASSGRILLE|PASSMOB
	summoning_emote = "Mist coils into feline shape, resolving into a lynx with pale fur and unblinking silver eyes."
	buff_given = /datum/status_effect/buff/familiar/silver_glance
	inherent_spell = list(/obj/effect/proc_holder/spell/self/lurking_step, /obj/effect/proc_holder/spell/invoked/veilbound_shift)
	STASTR = 6
	STAPER = 11
	STAINT = 9
	STACON = 7
	STAWIL = 9
	STASPD = 13
	STALUC = 9

/mob/living/carbon/human/species/familiar/rune_rat
	name = "Rune Rat"
	desc = "This rat leaves fading runes in the air as it twitches. The smell of old paper clings to its fur."
	familiar_icon_state = "runerat"
	summoning_emote = "A faint spark dances through the air. A rat with a softly glowing tail scampers into existence."
	buff_given = /datum/status_effect/buff/familiar/threaded_thoughts
	inherent_spell = list(/obj/effect/proc_holder/spell/self/inscription_cache, /obj/effect/proc_holder/spell/self/recall_cache)
	STASTR = 5
	STAPER = 9
	STAINT = 11
	STACON = 7
	STAWIL = 8
	STASPD = 11

/mob/living/carbon/human/species/familiar/vaporroot_wisp
	name = "Vaporroot Wisp"
	desc = "This vaporroot wisp shimmers and shifts like smoke but feels solid enough to lean on."
	familiar_icon_state = "vaporroot"
	alpha = 150
	pass_flags = PASSTABLE|PASSGRILLE|PASSMOB
	movement_type = FLYING
	flight_capable = TRUE
	summoning_emote = "A swirl of silvery mist gathers, coalescing into a small wisp of vaporroot."
	buff_given = /datum/status_effect/buff/familiar/quiet_resilience
	inherent_spell = list(/obj/effect/proc_holder/spell/self/soothing_bloom)
	STASTR = 4
	STACON = 11
	STAWIL = 9
	STASPD = 8

/mob/living/carbon/human/species/familiar/ashcoiler
	name = "Ashcoiler"
	desc = "This long-bodied snake coils slowly, like a heated rope. Its breath carries a faint scent of burnt herbs."
	familiar_icon_state = "ashcoiler"
	summoning_emote = "Dust rises and circles before coiling into a gray-scaled creature that radiates dry, residual warmth."
	buff_given = /datum/status_effect/buff/familiar/desert_bred_tenacity
	inherent_spell = list(/obj/effect/proc_holder/spell/self/smolder_shroud)
	STASTR = 7
	STAPER = 8
	STAINT = 9
	STACON = 9
	STAWIL = 11
	STASPD = 8
	STALUC = 8

/mob/living/carbon/human/species/familiar/glimmer_hare
	name = "Glimmer Hare"
	desc = "A quick, nervy creature. Light bends strangely around its translucent body."
	familiar_icon_state = "glimmer"
	alpha = 150
	summoning_emote = "The air glints, and a translucent hare twitches into existence."
	buff_given = /datum/status_effect/buff/familiar/lightstep
	inherent_spell = list(/obj/effect/proc_holder/spell/invoked/blink/glimmer_hare)
	STASTR = 4
	STAPER = 9
	STACON = 6
	STAWIL = 9
	STASPD = 9
	STALUC = 11

/mob/living/carbon/human/species/familiar/hollow_antlerling
	name = "Hollow Antlerling"
	desc = "A dog-sized deer with gleaming hollow antlers that emit flute-like sounds."
	familiar_icon_state = "antlerling"
	summoning_emote = "A musical chime sounds. A tiny deer with antlers like bone flutes steps gently into view."
	buff_given = /datum/status_effect/buff/familiar/soft_favor
	inherent_spell = list(/obj/effect/proc_holder/spell/self/verdant_veil)
	STASTR = 6
	STACON = 8
	STAWIL = 9
	STASPD = 9
	STALUC = 11

/mob/living/carbon/human/species/familiar/hollow_antlerling/Move(atom/newloc, direct)
	. = ..()
	if(. && prob(60) && isturf(loc))
		var/obj/item/glow_petal/petal = new(loc)
		QDEL_IN(petal, rand(50, 60))

/mob/living/carbon/human/species/familiar/gravemoss_serpent
	name = "Gravemoss Serpent"
	desc = "Its scales are flecked with lichen and grave-dust. Wherever it passes, roots twitch faintly in the soil."
	familiar_icon_state = "gravemoss"
	butcher_results = list(/obj/item/natural/dirtclod = 1)
	summoning_emote = "The ground heaves faintly as a long, moss-veiled serpent uncoils from it."
	buff_given = /datum/status_effect/buff/familiar/burdened_coil
	inherent_spell = list(/obj/effect/proc_holder/spell/self/scent_of_the_grave)
	STASTR = 11
	STAPER = 8
	STAINT = 9
	STAWIL = 11
	STASPD = 6
	STALUC = 8

/mob/living/carbon/human/species/familiar/starfield_crow
	name = "Starfield Zad"
	desc = "Its glossy feathers shimmer with shifting constellations, eyes gleaming with uncanny awareness even in the darkest shadows."
	familiar_icon_state = "crow_flying"
	butcher_results = list(/obj/item/roguegem/amethyst = 1)
	pass_flags = PASSTABLE|PASSMOB
	movement_type = FLYING
	flight_capable = TRUE
	summoning_emote = "A rift in the air reveals a fragment of the starry void, from which a sleek zad with feathers like the night sky takes flight."
	buff_given = /datum/status_effect/buff/familiar/starseam
	inherent_spell = list(/obj/effect/proc_holder/spell/self/starseers_cry)
	STASTR = 4
	STAPER = 11
	STACON = 6
	STAWIL = 8
	STALUC = 11

/mob/living/carbon/human/species/familiar/emberdrake
	name = "Emberdrake"
	desc = "Tiny and warm to the touch, this drake's wingbeats stir old memories. Runes flicker behind it like afterimages."
	familiar_icon_state = "emberdrake"
	butcher_results = list(/obj/item/ash = 1)
	summoning_emote = "A hush falls as glowing ash collects into a fluttering emberdrake."
	buff_given = /datum/status_effect/buff/familiar/steady_spark
	inherent_spell = list(/obj/effect/proc_holder/spell/invoked/pyroclastic_puff)
	STASTR = 9
	STAPER = 8
	STAINT = 11
	STACON = 11
	STAWIL = 9
	STASPD = 8
	STALUC = 8

/mob/living/carbon/human/species/familiar/ripplefox
	name = "Ripplefox"
	desc = "They flicker when not directly observed. They leave no tracks. You're not always sure they're still nearby."
	familiar_icon_state = "ripple"
	summoning_emote = "A ripple in the air becomes a sleek fox, their fur twitching between shades of color as they pad forth."
	buff_given = /datum/status_effect/buff/familiar/subtle_slip
	inherent_spell = list(/obj/effect/proc_holder/spell/self/phantom_flicker)
	STASTR = 5
	STACON = 8
	STAWIL = 9
	STASPD = 11
	STALUC = 11

/mob/living/carbon/human/species/familiar/whisper_stoat
	name = "Whisper Stoat"
	desc = "Its gaze is too knowing. It tilts its head as if listening to something inside your skull."
	familiar_icon_state = "whisper"
	summoning_emote = "A thought twists into form, a tiny stoat slinks into view."
	buff_given = /datum/status_effect/buff/familiar/noticed_thought
	inherent_spell = list(/obj/effect/proc_holder/spell/self/phantasm_fade)
	STASTR = 5
	STAPER = 11
	STAINT = 11
	STACON = 7
	STAWIL = 8
	STASPD = 11
	STALUC = 9

/mob/living/carbon/human/species/familiar/thornback_turtle
	name = "Thornback Turtle"
	desc = "It barely moves, but seems unshakable. Vines twist gently around its limbs."
	familiar_icon_state = "thornback"
	summoning_emote = "The ground gives a slow rumble. A turtle with a bark-like shell emerges."
	buff_given = /datum/status_effect/buff/familiar/worn_stone
	inherent_spell = list(/obj/effect/proc_holder/spell/self/verdant_sprout)
	STAPER = 7
	STAINT = 9
	STACON = 11
	STAWIL = 12
	STASPD = 5
	STALUC = 8
