extends Panel

@onready var chat_box = $VBoxContainer # Holt die VBox mit Nachrichten
@onready var timer = $Timer # Holt den Timer


var max_messages = 15 # Maximal 8 Nachrichten sichtbar

var usernames = [ # Liste mit Namen
	"PixelPixy",
	"JumpAndRunEnjoyer",
	"ILovePotatos",
	":3~-~3:",
	"JohnHancock1965",
	"P1anoMan",
	"Jabott",
	"Allseeingcryptid",
	"HjShotgunAngle",
	"AnkleBroken",
	"Gambling1sveeyCool",
	"JustAnotherBot",
	"GenericCommentator728",
	"Protagonistsleftshoe",
	"Sonn3nblümchen",
	"Hate.me.123",
]

var positive_messages = [ # Positive Nachrichten
	"Es freut mich so, dass
	Protagonist immer das Beste 
	Gameplay für uns bieten",
	"Sie spiel wieder das Spiel?",
	"Ich habe so schnell auf 
	den Streaming geklickt xD",
	"Guter stream",
	"You go girl",
	"Ein neuer stream? Meine 
	Mittagspause ist gerettet",
	"Du bist so talentiert",
	"Elite refresh pull",
	"Sie ist so gut :0",
	"Shes cooking",
	"Slay",
	"Du bist mein 
	Lieblingsstreamer :)",
]

var negative_messages = [ # Negative Nachrichten
	"Die schauen Leute doch
	eh nur, weil sie eine Frau
	ist ganz ehrlich",
	"Fucking Loser",
	"Die denkt auch, sie
	wäre etwas besonderes",
	"Kann echt nicht streamen",
	"Oh guck mal eine Frau im,
	 die im Internet Aufmerksamkeit sucht",
	"Wer schaut sich so was an",
	"Ich weiß, wo du wohnst >:)",
	"Was eine bitch",
	"video wäre besser 
	ohne deine stimme",
	"Schon so eine 3/10",
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
	update_unwohlsein()

func on_message_clicked(msg): # Wenn Nachricht angeklickt wird

	if msg.get_meta("mood") == "negative": # Nur negative Nachrichten
		msg.queue_free() # Nachricht löschen
	update_unwohlsein()
		
		
func count_negative_messages(): # zählt wie viele negative nachrichten da sind
	var count = 0
	
	
	for child in chat_box.get_children():
		if child.get_meta("mood") == "negative":
			count += 1
			
	return count
		
func update_unwohlsein():
	var negative_count = count_negative_messages()
	GameManager.unwohlsein = negative_count
	
	print("Unwohlsein:", GameManager.unwohlsein)
