extends Control

signal closed

var Current_Tweet = -1

func _on_quit_twitter_pressed() -> void:
	emit_signal("closed")
	queue_free()

func _on_texture_quit_gewitter_pressed() -> void:
	emit_signal("closed")
	queue_free()

func makeliterallyeverythinginvisiblelol():
	#Tag 1
	$ScrollContainer/VBoxContainer/Beitrag.visible = false
	$ScrollContainer/VBoxContainer/Trenner.visible = false
	$ScrollContainer/VBoxContainer/Beitrag2.visible = false
	$ScrollContainer/VBoxContainer/Trenner2.visible = false
	$ScrollContainer/VBoxContainer/Beitrag3.visible = false
	$ScrollContainer/VBoxContainer/Trenner3.visible = false
	$ScrollContainer/VBoxContainer/Beitrag4.visible = false
	$ScrollContainer/VBoxContainer/Trenner4.visible = false
	$ScrollContainer/VBoxContainer/Beitrag5.visible = false
	$ScrollContainer/VBoxContainer/Trenner5.visible = false
	$ScrollContainer/VBoxContainer/Beitrag6.visible = false
	$ScrollContainer/VBoxContainer/Trenner6.visible = false
	$ScrollContainer/VBoxContainer/Trenner6.visible = false
	$ScrollContainer/VBoxContainer/Beitrag7.visible = false
	#Tag2
	$ScrollContainer/VBoxContainer/Beitrag2_1.visible = false
	$ScrollContainer/VBoxContainer/Trenner2_1.visible = false
	$ScrollContainer/VBoxContainer/Beitrag2_2.visible = false
	$ScrollContainer/VBoxContainer/Trenner2_2.visible = false
	$ScrollContainer/VBoxContainer/Beitrag2_3.visible = false
	$ScrollContainer/VBoxContainer/Trenner2_3.visible = false
	$ScrollContainer/VBoxContainer/Beitrag2_4.visible = false
	$ScrollContainer/VBoxContainer/Trenner2_4.visible = false
	$ScrollContainer/VBoxContainer/Beitrag2_5.visible = false
	$ScrollContainer/VBoxContainer/Trenner2_5.visible = false
	$ScrollContainer/VBoxContainer/Beitrag2_6.visible = false
	$ScrollContainer/VBoxContainer/Trenner2_6.visible = false
	$ScrollContainer/VBoxContainer/Beitrag2_7.visible = false
	$ScrollContainer/VBoxContainer/Trenner2_7.visible = false
	$ScrollContainer/VBoxContainer/Beitrag2_8.visible = false
	$ScrollContainer/VBoxContainer/Trenner2_8.visible = false
	$ScrollContainer/VBoxContainer/Beitrag2_9.visible = false
	#Tag3
	$ScrollContainer/VBoxContainer/Beitrag3_1.visible = false
	$ScrollContainer/VBoxContainer/Trenner3_1.visible = false
	$ScrollContainer/VBoxContainer/Beitrag3_2.visible = false
	$ScrollContainer/VBoxContainer/Trenner3_2.visible = false
	$ScrollContainer/VBoxContainer/Beitrag3_3.visible = false
	$ScrollContainer/VBoxContainer/Trenner3_3.visible = false
	$ScrollContainer/VBoxContainer/Beitrag3_4.visible = false
	$ScrollContainer/VBoxContainer/Trenner3_4.visible = false
	$ScrollContainer/VBoxContainer/Beitrag3_5.visible = false
	$ScrollContainer/VBoxContainer/Trenner3_5.visible = false
	$ScrollContainer/VBoxContainer/Beitrag3_6.visible = false
	$ScrollContainer/VBoxContainer/Trenner3_6.visible = false
	$ScrollContainer/VBoxContainer/Beitrag3_7.visible = false

func _ready():
	makeliterallyeverythinginvisiblelol()
	print ("Twitter Ready")
	if GameManager.current_day == 1:
		if GameManager.Tag1_Tweet_Anzahl >= 1:
			$ScrollContainer/VBoxContainer/Beitrag.visible = true
			$ScrollContainer/VBoxContainer/Trenner.visible = true
		if GameManager.Tag1_Tweet_Anzahl >= 2:
			$ScrollContainer/VBoxContainer/Beitrag2.visible = true
			$ScrollContainer/VBoxContainer/Trenner2.visible = true
		if GameManager.Tag1_Tweet_Anzahl >= 3:
			$ScrollContainer/VBoxContainer/Beitrag3.visible = true
			$ScrollContainer/VBoxContainer/Trenner3.visible = true
		if GameManager.Tag1_Tweet_Anzahl >= 4:
			$ScrollContainer/VBoxContainer/Beitrag4.visible = true
			$ScrollContainer/VBoxContainer/Trenner4.visible = true
		if GameManager.Tag1_Tweet_Anzahl >= 5:
			$ScrollContainer/VBoxContainer/Beitrag5.visible = true
			$ScrollContainer/VBoxContainer/Trenner5.visible = true
		if GameManager.Tag1_Tweet_Anzahl >= 6:
			$ScrollContainer/VBoxContainer/Trenner5.visible = true
			$ScrollContainer/VBoxContainer/Beitrag6.visible = true
		if GameManager.Tag1_Tweet_Anzahl >= 7:
			$ScrollContainer/VBoxContainer/Trenner6.visible = true
			$ScrollContainer/VBoxContainer/Beitrag7.visible = true
	
	pass
	if GameManager.current_day == 2:
		if GameManager.Tag2_Tweet_Anzahl >= 1:
			$ScrollContainer/VBoxContainer/Beitrag2_1.visible = true
			$ScrollContainer/VBoxContainer/Trenner2_1.visible = true
		if GameManager.Tag2_Tweet_Anzahl >= 2:
			$ScrollContainer/VBoxContainer/Beitrag2_2.visible = true
			$ScrollContainer/VBoxContainer/Trenner2_2.visible = true
		if GameManager.Tag2_Tweet_Anzahl >= 3:
			$ScrollContainer/VBoxContainer/Beitrag2_3.visible = true
			$ScrollContainer/VBoxContainer/Trenner2_3.visible = true
		if GameManager.Tag2_Tweet_Anzahl >= 4:
			$ScrollContainer/VBoxContainer/Beitrag2_4.visible = true
			$ScrollContainer/VBoxContainer/Trenner2_4.visible = true
		if GameManager.Tag2_Tweet_Anzahl >= 5:
			$ScrollContainer/VBoxContainer/Beitrag2_5.visible = true
			$ScrollContainer/VBoxContainer/Trenner2_5.visible = true
		if GameManager.Tag2_Tweet_Anzahl >= 6:
			$ScrollContainer/VBoxContainer/Trenner2_6.visible = true
			$ScrollContainer/VBoxContainer/Beitrag2_6.visible = true
		if GameManager.Tag2_Tweet_Anzahl >= 7:
			$ScrollContainer/VBoxContainer/Trenner2_7.visible = true
			$ScrollContainer/VBoxContainer/Beitrag2_7.visible = true
		if GameManager.Tag2_Tweet_Anzahl >= 8:
			$ScrollContainer/VBoxContainer/Trenner2_8.visible = true
			$ScrollContainer/VBoxContainer/Beitrag2_8.visible = true
		if GameManager.Tag2_Tweet_Anzahl >= 9:
			$ScrollContainer/VBoxContainer/Beitrag2_9.visible = true
	
	pass
	
	if GameManager.current_day == 3:
		if GameManager.Tag3_Tweet_Anzahl >= 1:
			$ScrollContainer/VBoxContainer/Beitrag3_1.visible = true
			$ScrollContainer/VBoxContainer/Trenner3_1.visible = true
		if GameManager.Tag3_Tweet_Anzahl >= 2:
			$ScrollContainer/VBoxContainer/Beitrag3_2.visible = true
			$ScrollContainer/VBoxContainer/Trenner3_2.visible = true
		if GameManager.Tag3_Tweet_Anzahl >= 3:
			$ScrollContainer/VBoxContainer/Beitrag3_3.visible = true
			$ScrollContainer/VBoxContainer/Trenner3_3.visible = true
		if GameManager.Tag3_Tweet_Anzahl >= 4:
			$ScrollContainer/VBoxContainer/Beitrag3_4.visible = true
			$ScrollContainer/VBoxContainer/Trenner3_4.visible = true
		if GameManager.Tag3_Tweet_Anzahl >= 5:
			$ScrollContainer/VBoxContainer/Beitrag3_5.visible = true
			$ScrollContainer/VBoxContainer/Trenner3_5.visible = true
		if GameManager.Tag3_Tweet_Anzahl >= 6:
			$ScrollContainer/VBoxContainer/Trenner3_6.visible = true
			$ScrollContainer/VBoxContainer/Beitrag3_6.visible = true
		if GameManager.Tag3_Tweet_Anzahl >= 7:
			$ScrollContainer/VBoxContainer/Beitrag3_7.visible = true
	
	pass
	
	if GameManager.current_day == 4:
		if GameManager.Tag4_Tweet_Anzahl >= 1:
			$ScrollContainer/VBoxContainer/Beitrag4_1.visible = true
			$ScrollContainer/VBoxContainer/Trenner4_1.visible = true
		if GameManager.Tag4_Tweet_Anzahl >= 2:
			$ScrollContainer/VBoxContainer/Beitrag4_2.visible = true
			$ScrollContainer/VBoxContainer/Trenner4_2.visible = true
		if GameManager.Tag4_Tweet_Anzahl >= 3:
			$ScrollContainer/VBoxContainer/Beitrag4_3.visible = true
			$ScrollContainer/VBoxContainer/Trenner4_3.visible = true
		if GameManager.Tag4_Tweet_Anzahl >= 4:
			$ScrollContainer/VBoxContainer/Beitrag4_4.visible = true
			$ScrollContainer/VBoxContainer/Trenner4_4.visible = true
		if GameManager.Tag4_Tweet_Anzahl >= 5:
			$ScrollContainer/VBoxContainer/Beitrag4_5.visible = true
			$ScrollContainer/VBoxContainer/Trenner4_5.visible = true
		if GameManager.Tag4_Tweet_Anzahl >= 6:
			$ScrollContainer/VBoxContainer/Trenner4_6.visible = true
			$ScrollContainer/VBoxContainer/Beitrag4_6.visible = true
		if GameManager.Tag4_Tweet_Anzahl >= 7:
			$ScrollContainer/VBoxContainer/Beitrag4_7.visible = true
