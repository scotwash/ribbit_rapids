extends CharacterBody2D

const speed = 100
var current_dir = "none"


func _physics_process(delta):
	player_movement(delta)
	pass
func player_movement(delta):
	pass
	
	if Input.is_action_pressed("move_right"):
		current_dir = "right"
		%sprites.animation = "walk_r"
		
		velocity.x = speed
		velocity.y = 0
	elif Input.is_action_pressed("move_left"):
		current_dir = "left"
		%sprites.animation = "walk_l"
		
		velocity.x =-speed
		velocity.y = 0
	elif Input.is_action_pressed("move_down"):
		current_dir = "down"
		%sprites.animation = "walk_f"
		velocity.y = speed
		velocity.x = 0
	elif Input.is_action_pressed("move_up"):
		current_dir = "up"
		%sprites.animation = "walk_b"
		
		velocity.y = -speed
		velocity.x = 0
	else:
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()
	
