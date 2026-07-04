extends Node2D

@onready var sprite = $Sprite2D
@onready var facecam = $FaceCam

var textures = []

func _ready():
	textures = [
		preload("res://sprites/emotion1.png"),
		preload("res://sprites/emotion2.png"),
		preload("res://sprites/emotion3.png"),
		preload("res://sprites/emotion4.png"),
		preload("res://sprites/emotion5.png")
	]
	
	update_sprite()

func _process(delta):
	update_sprite()
	
	if GameManager.current_stream_type == "offstream":
		visible = false
	else:
		visible = true

func update_sprite():
	var value = GameManager.unwohlsein
	var index = 0

	if value <= 0:
		index = 0
	elif value <=2:
		index = 1
	elif value <=4:
		index = 2
	elif value <=8:
		index = 3
	else:
		index = 4

	sprite.texture = textures[index]
	
