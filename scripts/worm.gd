extends CharacterBody2D

var speed = 15
var player_chase = false
var player = null

func _physics_process(delta):
	if player_chase:
		position += (player.position - position)/speed
func _on_hit_box_body_entered(body):
	player = body
	player_chase = true
	pass # Replace with function body.
	



func _on_hit_box_body_exited(body):
	player = null
	player_chase = false
	pass # Replace with function body.
