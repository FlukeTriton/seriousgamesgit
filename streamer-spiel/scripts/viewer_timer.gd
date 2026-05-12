extends Timer


func _on_timeout() -> void:
	
	if GameManager.current_stream_type == "gaming":
		var add_amount = randi_range(1, 5)
		GameManager.viewer_count += add_amount
		print("+", add_amount, "Viewers")

	elif GameManager.current_stream_type == "reaction":
		var add_amount = randi_range(10, 15)
		GameManager.viewer_count += add_amount
		print("+", add_amount, "Viewers")

	else:
		GameManager.viewer_count = 0
