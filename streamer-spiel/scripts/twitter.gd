extends Control

signal closed

var Current_Tweet = -1

func _on_quit_twitter_pressed() -> void:
	emit_signal("closed")
	queue_free()

func _on_texture_quit_gewitter_pressed() -> void:
	emit_signal("closed")
	queue_free()

func _ready():
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
	pass
