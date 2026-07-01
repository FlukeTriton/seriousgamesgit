extends Node2D

func _on_resume_pressed():
	GameManager.set_paused(false)
	visible = false
	

func _on_back_to_titlescreen_pressed() -> void:
	GameManager.set_paused(false)
	get_tree().change_scene_to_file("res://scenes/titlescreen.tscn")
