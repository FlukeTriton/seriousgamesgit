extends Node2D

func _on_titlescreen_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/neuer_tag.tscn")


func _on_titlescreen_quit_button_pressed() -> void:
	get_tree().quit()
