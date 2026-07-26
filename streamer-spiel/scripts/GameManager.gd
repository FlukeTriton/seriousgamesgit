extends Node

var viewer_count: int
var daily_top_viewer_count
var unwohlsein: int
var current_stream_type
var active_minigame
var active_outfit
var current_tweet
var last_tweet_day
var current_day
var abonnenten
var paused
var remaining_day_time
var stalker
var stalker_spawn_timer
var stalker_spawn_time
var wetter
var TweetWirdGesendet: bool
var Ton_soll_spielen
var Tag1_Tweet_Anzahl
var Tag2_Tweet_Anzahl
var Tag3_Tweet_Anzahl 

func _ready():
	reset()
 
func reset():
	viewer_count = 0
	daily_top_viewer_count = 0
	unwohlsein = 0
	current_stream_type = "offstream"
	active_minigame = "none"
	active_outfit = "outfit1"
	current_tweet = 0
	last_tweet_day = -1
	current_day = 2
	abonnenten = 40
	paused = false
	remaining_day_time = 180.0
	stalker = 0
	stalker_spawn_timer = 0.0
	stalker_spawn_time = 10.0 
	wetter = "sonne"
	TweetWirdGesendet = false
	Ton_soll_spielen = 0
	Tag1_Tweet_Anzahl = 0
	Tag2_Tweet_Anzahl = 0
	Tag3_Tweet_Anzahl = 0


func set_paused(value: bool):
	paused = value
	get_tree().paused = paused

func _process(delta):

	if current_day <= 2:
			return

	stalker_spawn_timer += delta 

	while stalker_spawn_timer >= stalker_spawn_time:

		stalker_spawn_timer -= stalker_spawn_time

		stalker += 1
		
func save_timer(timer):
	if timer == null:
		return

	remaining_day_time = timer.time_left
	
	
func Neuer_Tag_Twitter():
	
	print (current_day)
	if wetter == "sonne":
		while current_day == 1 && Tag1_Tweet_Anzahl <= 7:
			print ("Tag1")
			Ton_soll_spielen = 1
			await get_tree().create_timer(2.0).timeout
			print("Tag 1.2")
			Ton_soll_spielen = 0
			Tag1_Tweet_Anzahl += 1
			await get_tree().create_timer(25.0).timeout
	else:
		while current_day == 1 && Tag1_Tweet_Anzahl <= 7:
			print ("Tag1")
			Ton_soll_spielen = 1
			await get_tree().create_timer(2.0).timeout
			print("Tag 1.2")
			Ton_soll_spielen = 0
			Tag1_Tweet_Anzahl += 1
			await get_tree().create_timer(12.0).timeout
			
	print (current_day)
	if wetter == "sonne":
		while current_day == 2 && Tag1_Tweet_Anzahl <= 9:
			await get_tree().create_timer(2.0).timeout
			print("Tag 1.2")
			Ton_soll_spielen = 0
			Tag2_Tweet_Anzahl += 1
			await get_tree().create_timer(20.0).timeout
	else:
		while current_day == 2 && Tag2_Tweet_Anzahl <= 9:
			print ("Tag2")
			Ton_soll_spielen = 1
			await get_tree().create_timer(2.0).timeout
			print("Tag 2.2")
			Ton_soll_spielen = 0
			Tag2_Tweet_Anzahl += 1
			await get_tree().create_timer(10.0).timeout
			
	print (current_day)
	if wetter == "sonne":
		while current_day == 3 && Tag3_Tweet_Anzahl <= 7:
			await get_tree().create_timer(2.0).timeout
			print("Tag 1.2")
			Ton_soll_spielen = 0
			Tag3_Tweet_Anzahl += 1
			await get_tree().create_timer(24.0).timeout
	else:
		while current_day == 3 && Tag2_Tweet_Anzahl <= 7:
			print ("Tag2")
			Ton_soll_spielen = 1
			await get_tree().create_timer(2.0).timeout
			print("Tag 2.2")
			Ton_soll_spielen = 0
			Tag3_Tweet_Anzahl += 1
			await get_tree().create_timer(11.0).timeout
