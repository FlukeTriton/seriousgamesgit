extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.visible = false

func _on_t_streaming_button_pressed() -> void:
	self.visible = true

func _on_quit_button_pressed() -> void:
	self.visible = false

func _on_t_reaction_button_pressed() -> void:
	self.visible = false

func _on_t_gaming_button_pressed() -> void:
	pass # Replace with function body.
