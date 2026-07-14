extends Node2D

signal closed

func _on_texture_quit_reaction_pressed() -> void:
		emit_signal("closed")
		queue_free()

func _on_texture_quit_reaction_2_pressed() -> void:
	emit_signal("closed")
	queue_free()

func _on_quit_reaction_pressed() -> void:
	emit_signal("closed")
	queue_free()

@onready var Comm1 = $Commentary1
@onready var Comm2 = $Commentary2
@onready var timer = $CommentaryCycle


func _ready():
	timer.start()
	
func _on_commentary_cycle_timeout() -> void:
	Comm1.visible = true
	Comm2.visible = true
	
func _on_commentary_1_pressed() -> void:
	reset_cycle()
	Comm1.visible = false
	Comm2.visible = false
	timer.start()

func _on_commentary_2_pressed() -> void:
	reset_cycle()
	Comm1.visible = false
	Comm2.visible = false
	timer.start()
	var subtract_amount = randi_range(1, 5)
	GameManager.viewer_count -= subtract_amount
	GameManager.viewer_count = max(GameManager.viewer_count, 5)
	print("+", subtract_amount, "Viewers")
	if GameManager.viewer_count > GameManager.daily_top_viewer_count:
		GameManager.daily_top_viewer_count = GameManager.viewer_count

func reset_cycle():
	Comm1.visible = false
	Comm2.visible = false
	timer.start()
