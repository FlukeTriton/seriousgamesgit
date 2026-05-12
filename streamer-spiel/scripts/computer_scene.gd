extends Node2D

@export var jumpandrun_scene: PackedScene
var current_minigame

@export var reaction_scene: PackedScene
var current_reaction

@onready var reaction_button = $Reaction_Button
@onready var gaming_button = $Gaming_Button

func _on_gaming_button_pressed() -> void:
	GameManager.current_stream_type = "gaming"
	print(GameManager.current_stream_type)
	gaming_button.hide()
	gaming_button.disabled = true
	reaction_button.hide()
	reaction_button.disabled = true

	if current_minigame == null:
		current_minigame = jumpandrun_scene.instantiate()
		add_child(current_minigame)
		current_minigame.closed.connect(_on_minigame_closed)
	else:
		current_minigame.queue_free()
		current_minigame = null


func _on_reaction_button_pressed() -> void:
	GameManager.current_stream_type = "reaction"
	print(GameManager.current_stream_type)
	gaming_button.hide()
	gaming_button.disabled = true
	reaction_button.hide()
	reaction_button.disabled = true
	if current_reaction == null:
		current_reaction = reaction_scene.instantiate()
		add_child(current_reaction)
		current_reaction.closed.connect(_on_minigame_closed)
	else:
		current_reaction.queue_free()
		current_reaction = null
		
		

func _on_minigame_closed() -> void:
	current_minigame = null
	show_menu_buttons()
	GameManager.current_stream_type = "offstream"
	print(GameManager.current_stream_type)

func show_menu_buttons():
	gaming_button.show()
	reaction_button.show()
	gaming_button.disabled = false
	reaction_button.disabled = false
