extends Node2D

func _on_titlescreen_play_button_pressed() -> void:
	GameManager.reset()
	get_tree().change_scene_to_file("res://scenes/introszene.tscn")


func _on_titlescreen_quit_button_pressed() -> void:
	get_tree().quit()


func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
