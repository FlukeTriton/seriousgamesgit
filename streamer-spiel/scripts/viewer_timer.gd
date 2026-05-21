extends Timer


func _on_timeout() -> void:
	
	if GameManager.current_stream_type == "gaming" and GameManager.active_outfit == "outfit1":
		var add_amount = randi_range(1, 5)
		GameManager.viewer_count += add_amount
		print("+", add_amount, "Viewers")
		if GameManager.viewer_count > GameManager.daily_top_viewer_count:
			GameManager.daily_top_viewer_count = GameManager.viewer_count
		
	elif GameManager.current_stream_type == "gaming" and GameManager.active_outfit == "outfit2":
		var add_amount = randi_range(10, 20)
		GameManager.viewer_count += add_amount
		print("+", add_amount, "Viewers")
		if GameManager.viewer_count > GameManager.daily_top_viewer_count:
			GameManager.daily_top_viewer_count = GameManager.viewer_count

	elif GameManager.current_stream_type == "reaction" and GameManager.active_outfit == "outfit1":
		var add_amount = randi_range(15, 30)
		GameManager.viewer_count += add_amount
		print("+", add_amount, "Viewers")
		if GameManager.viewer_count > GameManager.daily_top_viewer_count:
			GameManager.daily_top_viewer_count = GameManager.viewer_count
			
	elif GameManager.current_stream_type == "reaction" and GameManager.active_outfit == "outfit2":
		var add_amount = randi_range(20, 40)
		GameManager.viewer_count += add_amount
		print("+", add_amount, "Viewers")
		if GameManager.viewer_count > GameManager.daily_top_viewer_count:
			GameManager.daily_top_viewer_count = GameManager.viewer_count

	else:
		GameManager.viewer_count = 0
