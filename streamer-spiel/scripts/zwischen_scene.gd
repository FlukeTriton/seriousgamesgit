extends Node2D


func _ready():
	$Tages_Timer.wait_time = GameManager.remaining_day_time
	$Tages_Timer.start()


func _on_tages_timer_timeout() -> void:
	

	var abo_prozent = 0.15
	var neue_abos = int(GameManager.daily_top_viewer_count * abo_prozent)
	GameManager.abonnenten += neue_abos
	GameManager.daily_top_viewer_count = 0
	GameManager.current_day += 1
	get_tree().change_scene_to_file("res://scenes/neuer_tag.tscn")

	
