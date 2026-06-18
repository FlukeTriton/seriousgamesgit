extends Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

"timer starten wann hilfe es ist spät, ich mache das noch vertrau"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_timer_timeout():
	print("itstweetintime")
	GameManager.TweetWirdGesendet = true
