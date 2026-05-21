extends Label



func _ready() -> void:
	text = "gebrauchte Tage: " + str(GameManager.current_day) + "\nErreichte Abos: " + str(GameManager.abonnenten)
