extends Node2D

@export var jumpandrun_scene: PackedScene
var current_minigame

@export var reaction_scene: PackedScene
var current_reaction

@onready var reaction_button = $Reaction_Button
@onready var gaming_button = $Gaming_Button

func _on_gaming_button_pressed() -> void:
	GameManager.current_stream_type = "gaming"
	GameManager.active_minigame = "gaming"
	print(GameManager.current_stream_type)
	gaming_button.hide()
	gaming_button.disabled = true
	reaction_button.hide()
	reaction_button.disabled = true
	twitter_button.hide()
	twitter_button.disabled = true

	if current_minigame == null:
		current_minigame = jumpandrun_scene.instantiate()
		add_child(current_minigame)
		current_minigame.closed.connect(_on_minigame_closed)
	else:
		current_minigame.queue_free()
		current_minigame = null
		
func _on_t_gaming_button_pressed() -> void:
	GameManager.current_stream_type = "gaming"
	GameManager.active_minigame = "gaming"
	print(GameManager.current_stream_type)
	gaming_button.hide()
	gaming_button.disabled = true
	reaction_button.hide()
	reaction_button.disabled = true
	twitter_button.hide()
	twitter_button.disabled = true

	if current_minigame == null:
		current_minigame = jumpandrun_scene.instantiate()
		add_child(current_minigame)
		current_minigame.closed.connect(_on_minigame_closed)
	else:
		current_minigame.queue_free()
		current_minigame = null

func _on_t_reaction_button_pressed() -> void:
	GameManager.current_stream_type = "reaction"
	GameManager.active_minigame = "reaction"
	print(GameManager.current_stream_type)
	gaming_button.hide()
	gaming_button.disabled = true
	reaction_button.hide()
	reaction_button.disabled = true
	twitter_button.hide()
	twitter_button.disabled = true
	if current_reaction == null:
		current_reaction = reaction_scene.instantiate()
		add_child(current_reaction)
		current_reaction.closed.connect(_on_minigame_closed)
	else:
		current_reaction.queue_free()
		current_reaction = null
		
		

func _on_reaction_button_pressed() -> void:
	GameManager.current_stream_type = "reaction"
	GameManager.active_minigame = "reaction"
	print(GameManager.current_stream_type)
	gaming_button.hide()
	gaming_button.disabled = true
	reaction_button.hide()
	reaction_button.disabled = true
	twitter_button.hide()
	twitter_button.disabled = true
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
	GameManager.active_minigame = "none"
	print(GameManager.current_stream_type)

func show_menu_buttons():
	gaming_button.show()
	reaction_button.show()
	twitter_button.show()
	gaming_button.disabled = false
	reaction_button.disabled = false
	twitter_button.disabled = false

func _ready():

	$Tages_Timer.wait_time = GameManager.remaining_day_time
	$Tages_Timer.start()
	

	if GameManager.active_minigame == "gaming":

		current_minigame = jumpandrun_scene.instantiate()
		add_child(current_minigame)

		current_minigame.closed.connect(_on_minigame_closed)

		gaming_button.hide()
		gaming_button.disabled = true
		reaction_button.hide()
		reaction_button.disabled = true
		twitter_button.hide()
		twitter_button.disabled = true


	elif GameManager.active_minigame == "reaction":

		current_reaction = reaction_scene.instantiate()
		add_child(current_reaction)

		current_reaction.closed.connect(_on_minigame_closed)

		gaming_button.hide()
		gaming_button.disabled = true
		reaction_button.hide()
		reaction_button.disabled = true
		twitter_button.hide()
		twitter_button.disabled = true



@onready var pause_screen = $"pause screen"

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		if GameManager.paused == false:
			GameManager.set_paused(true)
			pause_screen.visible = true
		else:
			return


@export var twitter_scene: PackedScene
var current_twitter

@onready var twitter_button = $Twitter_Button

func _on_twitter_button_pressed() -> void:
	gaming_button.hide()
	gaming_button.disabled = true
	reaction_button.hide()
	reaction_button.disabled = true
	twitter_button.hide()
	twitter_button.disabled = true
		
	if current_twitter == null:
		current_twitter = twitter_scene.instantiate()
		add_child(current_twitter)
		current_twitter.closed.connect(_on_minigame_closed)
	else:
		current_twitter.queue_free()
		current_twitter = null
	
func _on_texture_button_pressed() -> void:
	gaming_button.hide()
	gaming_button.disabled = true
	reaction_button.hide()
	reaction_button.disabled = true
	twitter_button.hide()
	twitter_button.disabled = true
	
	if current_twitter == null:
		current_twitter = twitter_scene.instantiate()
		add_child(current_twitter)
		current_twitter.closed.connect(_on_minigame_closed)
	else:
		current_twitter.queue_free()
		current_twitter = null
		
func _on_tages_timer_timeout() -> void:
	

	var abo_prozent = 0.15
	var neue_abos = int(GameManager.daily_top_viewer_count * abo_prozent)
	GameManager.abonnenten += neue_abos
	GameManager.daily_top_viewer_count = 0
	get_tree().change_scene_to_file("res://scenes/neuer_tag.tscn")
