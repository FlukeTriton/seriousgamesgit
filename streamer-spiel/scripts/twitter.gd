extends Control

signal closed

var Current_Tweet = -1

func _on_quit_twitter_pressed() -> void:
	emit_signal("closed")
	queue_free()

@export var tweet_Tag1 = [
	$ScrollContainer/VBoxContainer/Beitrag,
	$ScrollContainer/VBoxContainer/Beitrag2,
	$ScrollContainer/VBoxContainer/Beitrag3,
	$ScrollContainer/VBoxContainer/Beitrag4,
	$ScrollContainer/VBoxContainer/Beitrag5,
	$ScrollContainer/VBoxContainer/Beitrag6
]

func _ready():
	pass

func display_tweet():
	Current_Tweet = Current_Tweet +1
	print(Current_Tweet)
	"hier muss noch was gesetzt werden"
	tweet_Tag1[Current_Tweet].visible 
	
func New_Tweet():
		if GameManager.TweetWirdGesendet == true:
			print("Twoot")
			GameManager.TweetWirdGesendet = false
