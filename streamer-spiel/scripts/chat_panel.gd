extends Panel

@onready var chat_box = $VBoxContainer # Holt die VBox mit Nachrichten
@onready var timer = $Timer # Holt den Timer


var max_messages = 8 # Maximal 8 Nachrichten sichtbar

var usernames = [ # Liste mit Namen
	"User1",
	"User2",
	"User3",
	"User4",
	"User5",
	"User6"
]

var positive_messages = [ # Positive Nachrichten
	"toll",
	"gut",
	"schön",
	"nett",
	"wow",
	"stark"
]

var negative_messages = [ # Negative Nachrichten
	"blöd",
	"schlecht",
	"kacke",
	"öde",
	"hör auf",
	"peinlich"
]

func _ready(): # Startet wenn Szene geladen wird
	timer.timeout.connect(add_random_message) # Wenn Timer fertig ist -> neue Nachricht
	timer.start() # Timer starten

func add_random_message(): # Fügt neue Nachricht hinzu
	
	var username = usernames.pick_random() # Zufälliger Name
	
	var is_positive = randi() % 2 == 0 # 50% Chance positiv
	
	var text = "" # Nachricht Text leer
	var mood = "" # Speichert positiv oder negativ
	
	if is_positive: # Wenn positiv
		text = positive_messages.pick_random() # Positive Nachricht wählen
		mood = "positive" # Stimmung speichern
	else: # Sonst negativ
		text = negative_messages.pick_random() # Negative Nachricht wählen
		mood = "negative" # Stimmung speichern
	
		
	
	var msg = Button.new() # Klickbare Nachricht erstellen

	msg.text = username + ": " + text # Text setzen
	msg.flat = true # Sieht nicht wie Button aus
	msg.alignment = HORIZONTAL_ALIGNMENT_LEFT # Text links

	if mood == "positive": # Wenn positiv
		msg.modulate = Color(0, 1, 0) # Grün
	else: # Wenn negativ
		msg.modulate = Color(1, 0.3, 0.3) # Rot

	msg.set_meta("mood", mood) # Speichert Stimmung

	msg.pressed.connect(func(): on_message_clicked(msg)) # Klick verbindet Funktion

	chat_box.add_child(msg) # Nachricht hinzufügen

	chat_box.move_child(msg, 0) # Nach oben setzen

	if chat_box.get_child_count() > max_messages: # Wenn zu viele
		var old_msg = chat_box.get_child(max_messages) # Unterste Nachricht
		old_msg.queue_free() # Löschen

func on_message_clicked(msg): # Wenn Nachricht angeklickt wird

	if msg.get_meta("mood") == "negative": # Nur negative Nachrichten
		msg.queue_free() # Nachricht löschen
		
		
		
