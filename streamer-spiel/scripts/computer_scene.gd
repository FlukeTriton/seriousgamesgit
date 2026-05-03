extends Node2D


@export var hindernis_scene: PackedScene # Referenz zur Hindernis-Szene (im Inspector setzen)

@onready var spawn_point = $minigame_bg/SpawnPoint # Referenz auf den Spawnpunkt im Background

func _ready(): # Wird einmal beim Start ausgeführt
	spawn_loop() # Startet die Endlosschleife zum Spawnen
	randomize()
	
func spawn_loop(): # Funktion für wiederholtes Spawnen
	while true: # Endlosschleife
		await get_tree().create_timer(2.0).timeout # Wartet 2 Sekunden
		spawn_hindernis() # Spawnt ein neues Hindernis

func spawn_hindernis(): # Erstellt ein Hindernis
	var h = hindernis_scene.instantiate() # Instanziiert die Hindernis-Szene
	h.global_position = spawn_point.global_position # Setzt Position relativ zum SpawnPoint
	add_child(h) # Fügt das Hindernis zur Szene hinzu
