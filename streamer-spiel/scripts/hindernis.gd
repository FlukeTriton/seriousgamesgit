extends Area2D # Hindernis ist ein Trigger-Bereich

var speed = 350 # Bewegungsgeschwindigkeit

func _process(delta): # Wird jedes Frame ausgeführt
	position.x -= speed * delta # Bewegt das Hindernis nach links

	if position.x < 750: # Wenn außerhalb des Bildschirms links
		queue_free() # Löscht das Hindernis (Performance sparen)


func _ready():
	body_entered.connect(_on_body_entered)
	
func _on_body_entered(body): # Wird ausgelöst wenn etwas reinläuft
	if body is CharacterBody2D: # Prüft ob es der Spieler ist
		var subtract_amount = randi_range(1, 5)
		GameManager.viewer_count -= subtract_amount
		print("+", subtract_amount, "Viewers")
