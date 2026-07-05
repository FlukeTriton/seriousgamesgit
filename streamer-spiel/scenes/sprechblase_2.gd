extends Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _call():
	global_position = Vector2(1504.0,307.0)
	scale = Vector2(1.0,1.0)
	visible = true
	
	if GameManager.current_day <= 3:
		texture = preload("res://sprites/Wegschicksprechblasen/Tag3/Spot2Tag3.png")
	if GameManager.current_day == 4:
		texture = preload("res://sprites/Wegschicksprechblasen/Tag4/Spot 2 Tag 4.png")
	if GameManager.current_day == 5:
		texture = preload("res://sprites/Wegschicksprechblasen/Tag5/Spot 2 Tag 5.png")
		
	visible = true
	await get_tree().create_timer(1.0).timeout
	visible = false
