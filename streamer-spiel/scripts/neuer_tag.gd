extends Node2D

@onready var tagstarten = $Tag_starten_button
@onready var ergebnisse = $Ergebnisse_ansehen
@onready var sprite = $Sprite2D
@onready var sprite2 = $Sprite2D2
var textures = []
var textures2 = []

func _ready():
	textures = [
		preload("res://sprites/Screenshot 2026-05-20 152706.png"),
		preload("res://sprites/Screenshot 2026-05-20 152713.png"),
		preload("res://sprites/Screenshot 2026-05-20 152718.png"),
		preload("res://sprites/Screenshot 2026-05-20 152723.png"),
		preload("res://sprites/Screenshot 2026-05-20 152730.png")
	]
	
	update_sprite()
	
	textures2 = [
		preload("res://sprites/sonne.png"),
		preload("res://sprites/regen.png")
	]
	
	update_sprite2()
	
	if GameManager.abonnenten >=500:
		tagstarten.disabled = true
		tagstarten.visible = false
		ergebnisse.disabled = false
		ergebnisse.visible = true
	else:
		ergebnisse.disabled = true
		
		
	if GameManager.wetter == "sonne":
		GameManager.remaining_day_time = 300.0
	else:
		GameManager.remaining_day_time = 120.0
	

func _process(delta):
	update_sprite()
	update_sprite2()

func update_sprite2():
	var value = GameManager.unwohlsein
	var index 

	if value <= 5:
		index = 0
		GameManager.wetter = "sonne"
	elif value <=10:
		index = 1
		GameManager.wetter = "regen"
	print(GameManager.wetter)
		
	sprite2.texture = textures2[index]
	
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
