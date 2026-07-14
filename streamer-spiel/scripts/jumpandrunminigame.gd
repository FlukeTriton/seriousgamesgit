extends Node2D

@export var hindernis_scene: PackedScene 

@onready var bg = $minigame_bg
@onready var spawn_point = $minigame_bg/SpawnPoint 

var start_day

func _ready(): 
	start_day = GameManager.current_day
	spawn_loop() 
	randomize()
	
	
func spawn_loop():
	while true:
		var wait_time = randf_range(0.8, 2.0)
		await get_tree().create_timer(wait_time).timeout
		spawn_hindernis() 

func spawn_hindernis():
	var h = hindernis_scene.instantiate()
	bg.add_child(h)
	h.position = spawn_point.position 

signal closed

func _process(delta: float) -> void:
	if GameManager.current_day > start_day:
		emit_signal("closed")
		queue_free()
		
		
func _on_quit_minigame_pressed() -> void:
	emit_signal("closed")
	queue_free()


func _on_texture_quit_mini_game_pressed() -> void:
	emit_signal("closed")
	queue_free()


func _on_texture_quit_mini_game_2_pressed() -> void:
	emit_signal("closed")
	queue_free()
