extends Node2D

@export var hindernis_scene: PackedScene 

@onready var bg = $minigame_bg
@onready var spawn_point = $minigame_bg/SpawnPoint 



func _ready(): 
	spawn_loop() 
	randomize()
	
func spawn_loop():
	while true:
		var wait_time = randf_range(0.5, 2.0)
		await get_tree().create_timer(wait_time).timeout
		spawn_hindernis() 

func spawn_hindernis():
	var h = hindernis_scene.instantiate()
	bg.add_child(h)
	h.position = spawn_point.position 
	
signal closed

func _on_quit_minigame_pressed() -> void:
	emit_signal("closed")
	queue_free()
