extends Timer


func _on_timeout() -> void:
	var add_amount = randi_range(1, 5)
	GameManager.viewer_count += add_amount
	print("+", add_amount, "Viewers")
