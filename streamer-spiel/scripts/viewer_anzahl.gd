extends Label


func _process(delta):
	text = "Viewer: " + str(GameManager.viewer_count)
