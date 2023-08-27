	object_const_def
	const UNIONCAVEB1F_POKEFAN_M1
	const UNIONCAVEB1F_POKEFAN_M2
	const UNIONCAVEB1F_SUPER_NERD1
	const UNIONCAVEB1F_SUPER_NERD2
	const UNIONCAVEB1F_POKE_BALL1
	const UNIONCAVEB1F_BOULDER
	const UNIONCAVEB1F_POKE_BALL2

UnionCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacAndrew:
	trainer POKEMANIAC, ANDREW, EVENT_BEAT_POKEMANIAC_ANDREW, PokemaniacAndrewSeenText, PokemaniacAndrewBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacAndrewAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacCalvin:
	trainer POKEMANIAC, CALVIN, EVENT_BEAT_POKEMANIAC_CALVIN, PokemaniacCalvinSeenText, PokemaniacCalvinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacCalvinAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerPhillip:
	trainer HIKER, PHILLIP, EVENT_BEAT_HIKER_PHILLIP, HikerPhillipSeenText, HikerPhillipBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerPhillipAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerLeonard:
	trainer HIKER, LEONARD, EVENT_BEAT_HIKER_LEONARD, HikerLeonardSeenText, HikerLeonardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerLeonardAfterBattleText
	waitbutton
	closetext
	end

UnionCaveB1FTMSwift:
	itemball TM_SWIFT

UnionCaveB1FXDefend:
	itemball X_DEFEND

UnionCaveB1FBoulder:
	jumpstd StrengthBoulderScript

HikerPhillipSeenText:
	text "Mir ist schon"
	line "lange niemand"
	cont "mehr begegnet."

	para "Hab keine Angst."
	line "Lass uns kämpfen!"
	done

HikerPhillipBeatenText:
	text "Uurggh…"
	done

HikerPhillipAfterBattleText:
	text "Ich bin lange"
	line "herumgeirrt…"

	para "Das hier macht mir"
	line "nichts aus, aber"
	cont "ich bin hungrig!"
	done

HikerLeonardSeenText:
	text "Sieh mal einer an!"
	line "Ein Besucher!"
	done

HikerLeonardBeatenText:
	text "Wahahah! Du bist"
	line "aber lebhaft!"
	done

HikerLeonardAfterBattleText:
	text "Ich wohne hier"
	line "unten."

	para "Wenn du möchtest,"
	line "kannst du bei"
	cont "mir einziehen."

	para "Es ist noch"
	line "genügend Platz."
	done

PokemaniacAndrewSeenText:
	text "Wer ist da?"

	para "Lass mich und"
	line "meine #MON"
	cont "in Frieden!"
	done

PokemaniacAndrewBeatenText:
	text "Verschwinde…"
	line "Geh weg!!"
	done

PokemaniacAndrewAfterBattleText:
	text "Nur ich und meine"
	line "#MON. Ich"
	cont "bin überglücklich."
	done

PokemaniacCalvinSeenText:
	text "Ich bin hierher"
	line "gekommen, um"
	cont "meine #MON-"
	cont "Forschungen"
	cont "durchzuführen."

	para "Ich zeige dir"
	line "meine Ergebnisse"
	cont "in einem Kampf!"
	done

PokemaniacCalvinBeatenText:
	text "Du hast es mir"
	line "aber gezeigt!"
	done

PokemaniacCalvinAfterBattleText:
	text "Ich sollte meine"
	line "Ergebnisse sammeln"
	cont "und anschließend"
	cont "veröffentlichen."

	para "Vielleicht werde"
	line "ich so berühmt"
	cont "wie PROF. LIND."
	done

UnionCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, RUINS_OF_ALPH_OUTSIDE, 7
	warp_event  3, 11, RUINS_OF_ALPH_OUTSIDE, 8
	warp_event  7, 19, UNION_CAVE_1F, 1
	warp_event  3, 33, UNION_CAVE_1F, 2
	warp_event 17, 31, UNION_CAVE_B2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerPhillip, -1
	object_event 16,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerLeonard, -1
	object_event  5, 32, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacAndrew, -1
	object_event 17, 30, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacCalvin, -1
	object_event  2, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB1FTMSwift, EVENT_UNION_CAVE_B1F_TM_SWIFT
	object_event  7, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnionCaveB1FBoulder, -1
	object_event 17, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB1FXDefend, EVENT_UNION_CAVE_B1F_X_DEFEND