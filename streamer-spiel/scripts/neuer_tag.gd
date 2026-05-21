extends Node2D

@onready var tagstarten = $Tag_starten_button
@onready var ergebnisse = $Ergebnisse_ansehen
@onready var sprite = $Sprite2D
var textures = []

func _ready():
	textures = [
		preload("res://sprites/Screenshot 2026-05-20 152706.png"),
		preload("res://sprites/Screenshot 2026-05-20 152713.png"),
		preload("res://sprites/Screenshot 2026-05-20 152718.png"),
		preload("res://sprites/Screenshot 2026-05-20 152723.png"),
		preload("res://sprites/Screenshot 2026-05-20 152730.png")
	]
	
	update_sprite()
	
	if GameManager.abonnenten >=500:
		tagstarten.disabled = true
		tagstarten.visible = false
		ergebnisse.disabled = false
		ergebnisse.visible = true
	else:
		ergebnisse.disabled = true

	

func _process(delta):
	update_sprite()
	
func update_sprite():
	var value = GameManager.current_day
	var index = 0

	if value <= 1:
		index = 0
	elif value <=2:
		index = 1
	elif value <=3:
		index = 2
	elif value <=4:
		index = 3
	elif value <=5:
		index = 4


	sprite.texture = textures[index]


func _on_tag_starten_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/computer_scene.tscn")


func _on_ergebnisse_ansehen_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/ending_screen.tscn")
