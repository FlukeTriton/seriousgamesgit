extends Label


func _process(delta):
	text = "Zuschauer: " + str(GameManager.viewer_count) + "\nAbos: " + str(GameManager.abonnenten)
