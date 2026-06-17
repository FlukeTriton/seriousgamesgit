
extends Node 

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

var remaining_day_time = 300.0

var stalker = 0
var stalker_spawn_timer := 0.0
var stalker_spawn_time := 10.0 

func _process(delta):

	if current_day == 1:
			return

	stalker_spawn_timer += delta 

	while stalker_spawn_timer >= stalker_spawn_time:

		stalker_spawn_timer -= stalker_spawn_time

		stalker += 1
		
var wetter = "sonne"


func save_timer(timer):
	if timer == null:
		return

	remaining_day_time = timer.time_left
