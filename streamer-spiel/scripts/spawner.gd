extends Node2D 

@export var person_scene: PackedScene 
@export var spawn_area: Vector2 = Vector2(400, 200) 
@export var spawn_center: Vector2 = Vector2(980, 600)
@export var spawn_time: float = 1.0 

var timer := 0.0 

func _process(delta): 
	
	if GameManager.current_day < 3:
		return
		
	timer += delta 
	
	if timer >= spawn_time:
		
		timer = 0.0 
		
		spawn_person() 

func spawn_person():

	var person = person_scene.instantiate()

	add_child(person)

	person.position = Vector2(
	randf_range(
		spawn_center.x - spawn_area.x / 2,
		spawn_center.x + spawn_area.x / 2
	),
	randf_range(
		spawn_center.y - spawn_area.y / 2,
		spawn_center.y + spawn_area.y / 2
	)
)
	GameManager.stalker += 1
