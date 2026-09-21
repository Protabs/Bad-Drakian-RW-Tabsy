GLOBAL_LIST_INIT(familiar_types, list(
				"Pondstone Toad" = /mob/living/simple_animal/pet/familiar/pondstone_toad,
				"Mist Lynx" = /mob/living/simple_animal/pet/familiar/mist_lynx,
				"Rune Rat" = /mob/living/simple_animal/pet/familiar/rune_rat,
				"Vaporroot Wisp" = /mob/living/simple_animal/pet/familiar/vaporroot_wisp,
				"Ashcoiler" = /mob/living/simple_animal/pet/familiar/ashcoiler,
				"Glimmer Hare" = /mob/living/simple_animal/pet/familiar/glimmer_hare,
				"Hollow Antlerling" = /mob/living/simple_animal/pet/familiar/hollow_antlerling,
				"Gravemoss Serpent" = /mob/living/simple_animal/pet/familiar/gravemoss_serpent,
				"Starfield Zad" = /mob/living/simple_animal/pet/familiar/starfield_crow,
				"Emberdrake" = /mob/living/simple_animal/pet/familiar/emberdrake,
				"Ripplefox" = /mob/living/simple_animal/pet/familiar/ripplefox,
				"Whisper Stoat" = /mob/living/simple_animal/pet/familiar/whisper_stoat,
				"Thornback Turtle" = /mob/living/simple_animal/pet/familiar/thornback_turtle
))

GLOBAL_LIST_INIT(familiar_display_names, list(
	/mob/living/simple_animal/pet/familiar/pondstone_toad = "Pondstone Toad",
	/mob/living/simple_animal/pet/familiar/mist_lynx = "Mist Lynx",
	/mob/living/simple_animal/pet/familiar/rune_rat = "Rune Rat",
	/mob/living/simple_animal/pet/familiar/vaporroot_wisp = "Vaporroot Wisp",
	/mob/living/simple_animal/pet/familiar/ashcoiler = "Ashcoiler",
	/mob/living/simple_animal/pet/familiar/glimmer_hare = "Glimmer Hare",
	/mob/living/simple_animal/pet/familiar/hollow_antlerling = "Hollow Antlerling",
	/mob/living/simple_animal/pet/familiar/gravemoss_serpent = "Gravemoss Serpent",
	/mob/living/simple_animal/pet/familiar/starfield_crow = "Starfield Zad",
	/mob/living/simple_animal/pet/familiar/emberdrake = "Emberdrake",
	/mob/living/simple_animal/pet/familiar/ripplefox = "Ripplefox",
	/mob/living/simple_animal/pet/familiar/whisper_stoat = "Whisper Stoat",
	/mob/living/simple_animal/pet/familiar/thornback_turtle = "Thornback Turtle",
))

GLOBAL_LIST_INIT(familiar_lore_blurbs, list(
	/mob/living/simple_animal/pet/familiar/pondstone_toad = "Pondstone Toads are ancient, patient creatures, said to carry the wisdom of the marshes. They are calm, resilient, and often serve as silent observers.",
	/mob/living/simple_animal/pet/familiar/mist_lynx = "Mist Lynxes are elusive and mysterious, moving unseen through fog and shadow. They are clever, perceptive, and fiercely loyal to those they trust.",
	/mob/living/simple_animal/pet/familiar/rune_rat = "Rune Rats are quick-witted and curious, always seeking knowledge. They are drawn to secrets and the written word, leaving trails of glowing runes wherever they go.",
	/mob/living/simple_animal/pet/familiar/vaporroot_wisp = "Vaporroot Wisps are gentle spirits of mist and healing. They drift quietly, bringing calm and comfort to those around them.",
	/mob/living/simple_animal/pet/familiar/ashcoiler = "Ashcoilers are serpents born of long-forgotten hearth fires and latent magic. Patient and enduring, their presence brings resilience.",
	/mob/living/simple_animal/pet/familiar/glimmer_hare = "Glimmer Hares are quick and elusive, their bodies shimmering with light. They are symbols of luck and agility, always a step ahead of danger.",
	/mob/living/simple_animal/pet/familiar/hollow_antlerling = "Hollow Antlerlings are gentle forest spirits, symbols of luck and renewal. They are playful, curious, and bring fortune to their companions.",
	/mob/living/simple_animal/pet/familiar/gravemoss_serpent = "Gravemoss Serpents are ancient guardians of the earth, their scales flecked with lichen and grave-dust. They are wise, patient, and deeply connected to the cycle of life and death.",
	/mob/living/simple_animal/pet/familiar/starfield_crow = "Starfield Crows are mysterious and intelligent, their feathers shimmering with constellations. They are omens of fate and keepers of secrets.",
	/mob/living/simple_animal/pet/familiar/emberdrake = "Emberdrakes are tiny dragons of warmth and memory. Their presence stirs old stories and brings comfort in the darkest nights.",
	/mob/living/simple_animal/pet/familiar/ripplefox = "Ripplefoxes are tricksters and guides, flickering at the edge of sight. They are masters of illusion and always seem to know more than they let on.",
	/mob/living/simple_animal/pet/familiar/whisper_stoat = "Whisper Stoats are subtle and insightful, listening to thoughts and secrets. They are trusted confidants and clever companions.",
	/mob/living/simple_animal/pet/familiar/thornback_turtle = "Thornback Turtles are sturdy guardians, embodying endurance and protection. They are slow to anger but steadfast in defense of their friends.",
))

GLOBAL_LIST_INIT(familiar_ability_blurbs, list(
	/mob/living/simple_animal/pet/familiar/pondstone_toad = list("Stillness of Stone" = "Become an immobile stone, blending into the surroundings until you return to your natural form."),
	/mob/living/simple_animal/pet/familiar/mist_lynx = list("Lurking Step" = "Mark up to three locations.", "Veilbound Shift" = "Teleport to a marked location."),
	/mob/living/simple_animal/pet/familiar/rune_rat = list("Inscription Cache" = "Store up to five books or papers.", "Recall Cache" = "Retrieve a stored item."),
	/mob/living/simple_animal/pet/familiar/vaporroot_wisp = list("Soothing Bloom" = "Heal nearby living allies over time.", "Flight" = "Fly over suitable terrain."),
	/mob/living/simple_animal/pet/familiar/ashcoiler = list("Smolder Shroud" = "Release a cloud of smoke around yourself."),
	/mob/living/simple_animal/pet/familiar/glimmer_hare = list("Blink" = "Instantly teleport a short distance."),
	/mob/living/simple_animal/pet/familiar/hollow_antlerling = list("Verdant Veil" = "Briefly conceal nearby allies in illusionary invisibility.", "Glow Petals" = "Leave glowing petals while moving."),
	/mob/living/simple_animal/pet/familiar/gravemoss_serpent = list("Scent of the Grave" = "Detect and track the direction of nearby corpses."),
	/mob/living/simple_animal/pet/familiar/starfield_crow = list("Starseer's Cry" = "Reveal nearby invisible or sneaking creatures.", "Flight" = "Fly over suitable terrain."),
	/mob/living/simple_animal/pet/familiar/emberdrake = list("Pyroclastic Puff" = "Emit sparks at the tile ahead or an adjacent target."),
	/mob/living/simple_animal/pet/familiar/ripplefox = list("Phantom Flicker" = "Create an illusory duplicate that vanishes after a short time."),
	/mob/living/simple_animal/pet/familiar/whisper_stoat = list("Phantasm Fade" = "Become invisible for a short time."),
	/mob/living/simple_animal/pet/familiar/thornback_turtle = list("Verdant Sprout" = "Turn dirt into grass or grow a bush on suitable grass."),
))
