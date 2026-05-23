extends Area2D


func _input_event(viewport, event, shape_idx):

	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:

			queue_free()
			GameManager.stalker -= 1
			
