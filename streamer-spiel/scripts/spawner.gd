extends Node2D # spawnt einfache Personen

@export var person_scene: PackedScene # Person.tscn hier reinziehen

@export var spawn_area: Vector2 = Vector2(800, 400) # Bereich im Fenster

@export var spawn_time: float = 1.0 # Sekunden zwischen Spawns

var timer := 0.0 # interner Timer

func _process(delta): # läuft jeden Frame
	
	timer += delta # Zeit hochzählen
	
	if timer >= spawn_time: # wenn Zeit erreicht
		
		timer = 0.0 # Timer reset
		
		spawn_person() # neue Person erstellen

func spawn_person(): # spawnt eine Person
	
	
	var person = person_scene.instantiate() # neue Instanz
	
	add_child(person) # zur Szene hinzufügen
	
	person.position = Vector2( # zufällige Position
		
		randf_range(0, spawn_area.x), # X zufällig
		
		randf_range(0, spawn_area.y) ) # Y zufällig
		
		
		
	var personbutton = Button.new()
	personbutton.custom_minimum_size = Vector2(200, 50)
	personbutton.flat = true
	personbutton.pressed.connect(on_message_clicked.bind(personbutton))
	add_child(personbutton) 

func on_message_clicked(personbutton: Button) -> void:
		personbutton.queue_free()
