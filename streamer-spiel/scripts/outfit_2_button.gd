extends Button




func _on_pressed() -> void:
	GameManager.active_outfit = "outfit2"
	get_tree().change_scene_to_file("res://scenes/zwischen_scene.tscn")
