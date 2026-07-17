extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_quit_button_2_pressed() -> void:
	self.visible = false


func _on_t_dokument_button_pressed() -> void:
	self.visible = true
