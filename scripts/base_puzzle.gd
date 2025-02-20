extends Node2D

var pipesCollected = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	_winStatement()
	pass



func _on_rotate_pressed():
	%"3".rotate(900)
	pipesCollected +=1
	
	pass # Replace with function body.


func _on_rotate_2_pressed():
	%"5".rotate(300)
	pipesCollected+=1
	pass # Replace with function body.


func _on_rotate_3_pressed():
	%"7".rotate(-600)
	pipesCollected+=1
	pass # Replace with function body.


func _on_rotate_4_pressed():
	%"10".rotate(-900)
	pipesCollected+=1
	pass # Replace with function body.


func _on_rotate_5_pressed():
	%"12".rotate(-5000)
	pipesCollected+=1
	pass # Replace with function body.

func _winStatement():
	if pipesCollected == 5:
		print("hi")
