extends Node2D

@export var hindernis_scene: PackedScene # Referenz zur Hindernis-Szene (im Inspector setzen)

@onready var bg = $minigame_bg
@onready var spawn_point = $minigame_bg/SpawnPoint # Referenz auf den Spawnpunkt im Background



func _ready(): # Wird einmal beim Start ausgeführt
	spawn_loop() # Startet die Endlosschleife zum Spawnen
	randomize()
	
func spawn_loop(): # Funktion für wiederholtes Spawnen
	while true: # Endlosschleife
		var wait_time = randf_range(0.5, 2.0)
		await get_tree().create_timer(wait_time).timeout
		spawn_hindernis() # Spawnt ein neues Hindernis

func spawn_hindernis(): # Erstellt ein Hindernis
	var h = hindernis_scene.instantiate()
	bg.add_child(h)
	h.position = spawn_point.position 
	
signal closed

func _on_quit_minigame_pressed() -> void:
	emit_signal("closed")
	queue_free()
