extends Node

func _ready():
	pass
 
var viewer_count: int = 0
var daily_top_viewer_count = 0

var unwohlsein: int = 0

var current_stream_type = "offstream"
	
var active_minigame = "none"

var active_outfit = "outfit1"

var current_tweet = 0
var last_tweet_day = -1

var current_day = 1

var abonnenten = 40

var paused := false
func set_paused(value: bool):
	paused = value
	get_tree().paused = paused

var remaining_day_time = 300.0

var stalker = 0
var stalker_spawn_timer := 0.0
var stalker_spawn_time := 10.0 

func _process(delta):

	if current_day <= 2:
			return

	stalker_spawn_timer += delta 

	while stalker_spawn_timer >= stalker_spawn_time:

		stalker_spawn_timer -= stalker_spawn_time

		stalker += 1
		
var wetter = "sonne"

var TweetWirdGesendet: bool = false

func save_timer(timer):
	if timer == null:
		return

	remaining_day_time = timer.time_left
	
	
"Twiter Zeug"

var Ton_soll_spielen = 0
var Tag1_Tweet_Anzahl = 0
	
func Neuer_Tag_Twitter():
	
	print (current_day)
	if wetter == "sonne":
		while current_day == 2 && Tag1_Tweet_Anzahl <= 5:
			print ("Tag1")
			Ton_soll_spielen = 1
			await get_tree().create_timer(2.0).timeout
			print("Tag 1.2")
			Ton_soll_spielen = 0
			Tag1_Tweet_Anzahl += 1
			await get_tree().create_timer(48.0).timeout
	else:
		while current_day == 2 && Tag1_Tweet_Anzahl <= 5:
			print ("Tag1")
			Ton_soll_spielen = 1
			await get_tree().create_timer(2.0).timeout
			print("Tag 1.2")
			Ton_soll_spielen = 0
			Tag1_Tweet_Anzahl += 1
			await get_tree().create_timer(28.0).timeout
	
	
