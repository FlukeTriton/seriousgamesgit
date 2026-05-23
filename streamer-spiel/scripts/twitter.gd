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

	if GameManager.current_day > GameManager.last_tweet_day:

		if GameManager.current_tweet < tweets.size():
			GameManager.last_tweet_day = GameManager.current_day
			GameManager.current_tweet += 1

	var tweet_index = max(0, GameManager.current_tweet - 1)
	var tweet = tweets[tweet_index]

	username_label.text = tweet["user"]
	tweet_label.text = tweet["text"]
	likes_label.text = str(tweet["likes"]) + " Likes"
