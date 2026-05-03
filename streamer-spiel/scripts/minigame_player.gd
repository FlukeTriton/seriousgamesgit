extends CharacterBody2D


const GRAVITY : int = 4200
const JUMP_SPEED : int = -1000

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	if is_on_floor(): #wenn Character nichtt springt
		if Input.is_action_just_pressed("move_up"): #wenn W gedrückt wird
			velocity.y = JUMP_SPEED #Character springt
	
	
	move_and_slide()
