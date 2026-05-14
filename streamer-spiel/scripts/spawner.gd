extends Node2D 

@export var person_scene: PackedScene 
@export var spawn_area: Vector2 = Vector2(800, 400) 
@export var spawn_time: float = 1.0 

var timer := 0.0 

func _process(delta): 
	
	timer += delta 
	
	if timer >= spawn_time:
		
		timer = 0.0 
		
		spawn_person() 

func spawn_person(): 
	
	
	var person = person_scene.instantiate() 
	
	add_child(person)
	
	person.position = Vector2( 
		
		randf_range(0, spawn_area.x),
		
		randf_range(0, spawn_area.y) ) 
		
		
		
	var personbutton = Button.new()
	personbutton.custom_minimum_size = Vector2(200, 50)
	personbutton.flat = true
	personbutton.pressed.connect(on_message_clicked.bind(personbutton))
	add_child(personbutton) 

func on_message_clicked(personbutton: Button) -> void:
		personbutton.queue_free()
