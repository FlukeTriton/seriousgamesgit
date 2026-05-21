extends Area2D 

var speed = 350 

func _process(delta): 
	position.x -= speed * delta 

	if position.x < 4: 
		queue_free() 


func _ready():
	body_entered.connect(_on_body_entered)
	
func _on_body_entered(body): 
	if body is CharacterBody2D: 
		var subtract_amount = randi_range(1, 5)
		GameManager.viewer_count -= subtract_amount
		GameManager.viewer_count = max(GameManager.viewer_count, 5)
		print("+", subtract_amount, "Viewers")
		if GameManager.viewer_count > GameManager.daily_top_viewer_count:
			GameManager.daily_top_viewer_count = GameManager.viewer_count
