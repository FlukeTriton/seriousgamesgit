
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

var remaining_day_time = 10.0

var stalker = 0


func save_timer(timer):
	if timer == null:
		return

	remaining_day_time = timer.time_left
