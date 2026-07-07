extends Sprite2D
const Sprech : Texture2D = preload("res://sprites/Wegschicksprechblasen/Tag3/Spot1Tag3.png")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _call():
	global_position = Vector2(449.0,296.0)
	scale = Vector2(0.666,0.687)
	
	if GameManager.current_day == 3:
			texture.Sprech
	if GameManager.current_day == 4:
			var BlipBlup = load("res://sprites/Wegschicksprechblasen/Tag3/Spot1Tag3.png")
			$".".texture = BlipBlup
	if GameManager.current_day == 5:
			texture.load("res://sprites/Wegschicksprechblasen/Tag3/Spot1Tag3.png")
		
	visible = true
	await get_tree().create_timer(2.0).timeout
	print("callItaDay")
	visible = false
