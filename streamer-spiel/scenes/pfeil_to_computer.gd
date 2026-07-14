extends TextureButton

func _on_pressed() -> void:
	GameManager.save_timer($Tages_Timer)
	get_tree().change_scene_to_file("res://scenes/zwischen_scene.tscn")
