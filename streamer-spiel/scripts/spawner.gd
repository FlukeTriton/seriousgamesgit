extends Node2D 

@export var person_scene: PackedScene 
@export var spawn_area: Vector2 = Vector2(400, 200) 
@export var spawn_center: Vector2 = Vector2(980, 600)
var shown_stalkers := 0

func _process(delta):

	if shown_stalkers < GameManager.stalker:

		var amount = GameManager.stalker - shown_stalkers

		for i in range(amount):
			spawn_person()

		shown_stalkers = GameManager.stalker
		
func _ready():

	for i in range(GameManager.stalker):
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
