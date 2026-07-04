extends Node2D


func _on_introszeneallesklarbutton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/neuer_tag.tscn")
