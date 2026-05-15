extends Panel

@onready var chat_box = $VBoxContainer
@onready var timer = $Timer 
var positive_pool
var negative_pool


var max_messages = 15 

var usernames = [ 
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

var gaming_positive_messages = [
	"Es freut mich so, dass Protagonist 
	immer das Beste Gameplay 
	für uns bietet",
	"Sie spiel wieder das Spiel?",
	"You go girl",
	"Du bist so talentiert",
	"Sie ist so gut :0",
	"Shes cooking",
]

var gaming_negative_messages = [
	"Schon so eine 3/10",
	"Oh guck mal eine Frau,
	die im Internet 
	Aufmerksamkeit sucht",
	"Fucking Loser",
	"Ich weiß, wo du wohnst >:)",
	"Was eine bitch",
]

var reaction_positive_messages = [
	"Ich habe so schnell 
	auf den Stream geklickt xD",
	"Guter stream",
	"Ein neuer stream? Meine 
	Mittagspause ist gerettet",
	"Elite refresh pull",
	"Du bist mein 
	Lieblingsstreamer :)",
	"Slay",
]

var reaction_negative_messages = [
	"Die schauen Leute doch eh nur,
	 weil sie eine Frau ist,
	 ganz ehrlich",
	"Die denkt auch, sie 
	wäre etwas besonderes",
	"Kann echt nicht streamen",
	"Wer schaut sich so was an",
	"video wäre besser ohne deine stimme",
]

var outfit2_negative_messages = [
	"Schlampe",
	"Zieh dich aus",
	"Du bist so heiß",
]


func _ready(): 
	timer.timeout.connect(add_random_message) 
	timer.start() 

func add_random_message(): 
	
	var username = usernames.pick_random() 
	
	var is_positive = randi() % 2 == 0 

	
	var text = "" 
	var mood = "" 
	
	
	if GameManager.current_stream_type == "gaming" and GameManager.active_outfit == "outfit1":
		positive_pool = gaming_positive_messages
		negative_pool = gaming_negative_messages
	if GameManager.current_stream_type == "gaming" and GameManager.active_outfit == "outfit2":
		positive_pool = gaming_positive_messages
		negative_pool = gaming_negative_messages + outfit2_negative_messages
	if GameManager.current_stream_type == "reaction" and GameManager.active_outfit == "outfit1":
		positive_pool = reaction_positive_messages
		negative_pool = reaction_negative_messages
	if GameManager.current_stream_type == "reaction" and GameManager.active_outfit == "outfit2":
		positive_pool = reaction_positive_messages
		negative_pool = reaction_negative_messages + outfit2_negative_messages


	if is_positive:
		text = positive_pool.pick_random()
		mood = "positive"
	else:
		text = negative_pool.pick_random()
		mood = "negative"
	
	
	var msg = Button.new() 

	msg.text = username + ": " + text 
	msg.flat = true 
	msg.alignment = HORIZONTAL_ALIGNMENT_LEFT 

	if mood == "positive": 
		msg.modulate = Color(0, 1, 0) 
	else: 
		msg.modulate = Color(1, 0.3, 0.3)

	msg.set_meta("mood", mood) 

	msg.pressed.connect(func(): on_message_clicked(msg))

	chat_box.add_child(msg) 

	chat_box.move_child(msg, 0) 

	if chat_box.get_child_count() > max_messages: 
		var old_msg = chat_box.get_child(max_messages) 
		old_msg.queue_free() 
	update_unwohlsein()

func on_message_clicked(msg): 

	if msg.get_meta("mood") == "negative":
		msg.queue_free()
	update_unwohlsein()
		
		
func count_negative_messages(): 
	var count = 0
	
	
	for child in chat_box.get_children():
		if child.get_meta("mood") == "negative":
			count += 1
			
	return count
		
func update_unwohlsein():
	var negative_count = count_negative_messages()
	GameManager.unwohlsein = negative_count
	
	print("Unwohlsein:", GameManager.unwohlsein)


func _process(delta):

	if GameManager.current_stream_type == "offstream":

		visible = false

		if !timer.is_stopped():
			timer.stop()

	else:

		visible = true

		if timer.is_stopped():
			timer.start()
