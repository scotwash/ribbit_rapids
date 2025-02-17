extends CharacterBody2D
var speed = 50
var player_chase = false
var player = null

func _physics_process(delta):
	if player_chase:
		position+=(player.position - position)/speed
		%w_sprites.animation = "w_up_idle"
		
	
	else:
		%w_sprites.animation = "w_right_idle"
		%w_sprites.animation = "w_left_idle"
		
func _on_hit_box_body_entered(body):
	player = body
	player_chase = true
	
	pass # Replace with function body.


func _on_hit_box_body_exited(body):
	player = null
	player_chase = false
	pass # Replace with function body.
