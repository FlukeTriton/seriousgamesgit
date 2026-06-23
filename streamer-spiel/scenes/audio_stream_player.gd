extends AudioStreamPlayer

var Do_Once = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GameManager.Ton_soll_spielen == 1:
		while Do_Once == 1:
			print ("beepBoop")
			$".".play()
			Do_Once = 0
	
	else:
		Do_Once = 1
