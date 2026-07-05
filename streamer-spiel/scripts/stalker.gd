extends Area2D

@onready var sprite: Sprite2D = $Sprite2D
@onready var Blasensprite: Sprite2D = $Sprechblase1

var textures = [
	preload("res://sprites/Image (65).png"),
	preload("res://sprites/Image (66).png"),
	preload("res://sprites/Image (67).png")
]


func _ready():
	sprite.texture = textures[randi() % textures.size()]
	randomize()


func _input_event(viewport, event, shape_idx):

	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			await get_tree().create_timer(3.0).timeout
			Blasensprite._call()
			queue_free()
			GameManager.stalker -= 1
