extends Control

signal closed

func _on_quit_twitter_pressed() -> void:
	emit_signal("closed")
	queue_free()


@onready var username_label = $Username
@onready var tweet_label = $TweetText
@onready var likes_label = $Likes

var tweets = [
	{
		"user": "User1",
		"text": "Tweet1",
		"likes": 1
	},
	{
		"user": "User2",
		"text": "Tweet2",
		"likes": 1
	},
	{
		"user": "User3",
		"text": "Tweet3",
		"likes": 1
	}
]

func _ready():
	load_next_tweet()
	print(username_label)
	print(tweet_label)
	print(likes_label)


func load_next_tweet():

	if GameManager.current_tweet >= tweets.size():
		print("RETURN")
		return

	var tweet = tweets[GameManager.current_tweet]

	username_label.text = tweet["user"]
	tweet_label.text = tweet["text"]
	likes_label.text = str(tweet["likes"]) + " Likes"

	GameManager.current_tweet += 1
