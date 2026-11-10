/// Assert that player-controlled familiar types have the correct properties and behavior.
/datum/unit_test/familiar_player_types/Run()
	var/turf/spawn_at = run_loc_floor_bottom_left
	var/mob/living/carbon/human/summoner = allocate(/mob/living/carbon/human/consistent, spawn_at)

	for(var/familiar_name in GLOB.familiar_types)
		var/animal_type = GLOB.familiar_types[familiar_name]
		var/player_type = GLOB.familiar_player_types[animal_type]
		TEST_ASSERT(ispath(player_type, /mob/living/carbon/human/species/familiar), "[familiar_name] has no player-controlled counterpart")

		var/mob/living/carbon/human/species/familiar/familiar_mob = allocate(player_type, spawn_at)
		TEST_ASSERT_EQUAL(familiar_mob.dna.species.type, /datum/species/familiar, "[familiar_name] has the wrong species")
		TEST_ASSERT(familiar_mob.familiar_icon_state, "[familiar_name] has no icon state")
		TEST_ASSERT_EQUAL(familiar_mob.icon_state, familiar_mob.familiar_icon_state, "[familiar_name] did not render its sprite")
		for(var/spell_path in familiar_mob.inherent_spell)
			TEST_ASSERT(ispath(spell_path, /obj/effect/proc_holder/spell), "[familiar_name] has an invalid spell [spell_path]")

		set_familiar_summoner(familiar_mob, summoner)
		TEST_ASSERT_EQUAL(get_familiar_summoner(familiar_mob), summoner, "[familiar_name] summoner was not stored")
		set_familiar_summoner(familiar_mob, null)
		TEST_ASSERT_NULL(get_familiar_summoner(familiar_mob), "[familiar_name] summoner was not cleared")

/datum/unit_test/familiar_stoneform/Run()
	var/mob/living/carbon/human/species/familiar/pondstone_toad/toad = allocate(/mob/living/carbon/human/species/familiar/pondstone_toad, run_loc_floor_bottom_left)
	var/obj/effect/proc_holder/spell/self/stillness_of_stone/spell = new
	var/familiar_icon = toad.icon_state

	spell.cast(user = toad)
	TEST_ASSERT(toad.stoneform, "Stillness of Stone did not enter stoneform")
	TEST_ASSERT_EQUAL(toad.icon_state, "stone1", "Stoneform did not change the sprite")
	TEST_ASSERT_EQUAL(toad.get_visible_name(), "Stone", "Stoneform did not change the visible name")

	spell.cast(user = toad)
	TEST_ASSERT(!toad.stoneform, "Stillness of Stone did not leave stoneform")
	TEST_ASSERT_EQUAL(toad.icon_state, familiar_icon, "Leaving stoneform did not restore the sprite")
	qdel(spell)

/datum/unit_test/familiar_death/Run()
	var/mob/living/carbon/human/species/familiar/rune_rat/rat = allocate(/mob/living/carbon/human/species/familiar/rune_rat, run_loc_floor_bottom_left)
	var/obj/item/paper/stored_paper = allocate(/obj/item/paper, rat.loc)
	stored_paper.forceMove(rat)
	rat.stored_books += stored_paper

	rat.death()
	TEST_ASSERT_EQUAL(rat.stat, DEAD, "Familiar did not die")
	TEST_ASSERT(!length(rat.stored_books), "Stored items were not released on death")
	TEST_ASSERT_EQUAL(stored_paper.loc, rat.loc, "Stored items were not dropped where the familiar died")

/// The preferences UI can draw a preview and list abilities for every registered familiar.
/datum/unit_test/familiar_prefs_preview/Run()
	var/datum/familiar_prefs/preferences = new
	for(var/familiar_name in GLOB.familiar_types)
		var/familiar_type = GLOB.familiar_types[familiar_name]
		preferences.familiar_specie = familiar_type
		TEST_ASSERT(length(preferences.get_familiar_preview_html()), "[familiar_name] has no preview sprite")
		TEST_ASSERT(length(GLOB.familiar_ability_blurbs[familiar_type]), "[familiar_name] has no ability blurbs")
	qdel(preferences)

/// Ensures requirements for free familiar spawning are met.
/datum/unit_test/familiar_free_spawn/Run()
	allocate(/obj/structure/well/fountain/mana, run_loc_floor_bottom_left)
	var/turf/spawn_turf = get_familiar_fountain_spawn_turf()
	TEST_ASSERT_NOTNULL(spawn_turf, "No spawn tile was found beside a mana fountain")
	TEST_ASSERT(isopenturf(spawn_turf), "The spawn tile is not open ground")

	var/datum/familiar_prefs/preferences = new
	TEST_ASSERT(!preferences.has_required_details(), "Empty preferences counted as complete")
	preferences.familiar_name = "Test"
	TEST_ASSERT(!preferences.has_required_details(), "A name alone counted as complete")
	preferences.familiar_flavortext_display = "A description."
	preferences.familiar_specie = /mob/living/simple_animal/pet/familiar/rune_rat
	TEST_ASSERT(preferences.has_required_details(), "Complete preferences were rejected")

	var/mob/living/carbon/human/bystander = allocate(/mob/living/carbon/human/consistent)
	TEST_ASSERT(preferences.get_free_spawn_block_reason(bystander), "A player already in the round could spawn as a familiar")
	TEST_ASSERT_NULL(awaken_familiar(bystander, spawn_turf), "A mob with no client was turned into a familiar")
	qdel(preferences)
