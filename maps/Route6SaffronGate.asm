	object_const_def
	const ROUTE6SAFFRONGATE_OFFICER

Route6SaffronGate_MapScripts:
	def_scene_scripts
	scene_script Route6SaffronGateNoopScene ; unusable

	def_callbacks

Route6SaffronGateNoopScene:
	end

Route6SaffronGuardScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedPart
	writetext Route6SaffronGuardWelcomeText
	waitbutton
	closetext
	end

.ReturnedPart:
	writetext Route6SaffronGuardMagnetTrainText
	waitbutton
	closetext
	end

Route6SaffronGuardWelcomeText:
	text "Willkommen in"
	line "SAFFRONIA CITY,"
	cont "der Heimat des"
	cont "MAGNETZUGs!"

	para "…Das sage ich"
	line "sonst immer, aber"

	para "der MAGNETZUG"
	line "fährt momentan"
	cont "nicht."

	para "Die Stromzufuhr"
	line "ist unterbrochen,"

	para "weil es im"
	line "KRAFTWERK ein"

	para "Problem gibt."
	done

Route6SaffronGuardMagnetTrainText:
	text "Der MAGNETZUG ist"
	line "das Aushängeschild"

	para "von SAFFRONIA"
	line "CITY."
	done

Route6SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, SAFFRON_CITY, 12
	warp_event  5,  0, SAFFRON_CITY, 13
	warp_event  4,  7, ROUTE_6, 2
	warp_event  5,  7, ROUTE_6, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route6SaffronGuardScript, -1