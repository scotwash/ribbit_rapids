extends Node2D

var pipesCollected = 0
@onready var scoreLabel = get_node("%pipe_score_text")
@onready var rotate_button1 = get_node("Rotate")
@onready var rotate_button2 = get_node("Rotate2")
@onready var rotate_button3 = get_node("Rotate3")
@onready var rotate_button4 = get_node("Rotate4")
@onready var rotate_button5 = get_node("Rotate5")
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	_winStatement()
	

func increaseScore():
	pipesCollected+=1
	%pipe_score_text.text = str(pipesCollected)
	
	
	
	
	

func _on_rotate_pressed():
	%"3".rotate(900)
	increaseScore()
	rotate_button1.visible = false
	%pipe_score_text.text = str(pipesCollected)
	pass # Replace with function body.


func _on_rotate_2_pressed():
	%"5".rotate(300)
	increaseScore()
	rotate_button2.visible = false
	%pipe_score_text.text = str(pipesCollected)
	pass # Replace with function body.


func _on_rotate_3_pressed():
	%"7".rotate(-600)
	increaseScore()
	rotate_button3.visible = false
	%pipe_score_text.text = str(pipesCollected)
	pass # Replace with function body.


func _on_rotate_4_pressed():
	%"10".rotate(-900)
	increaseScore()
	rotate_button4.visible = false 
	%pipe_score_text.text = str(pipesCollected)
	pass # Replace with function body.


func _on_rotate_5_pressed():
	%"12".rotate(-5000)
	increaseScore()
	rotate_button5.visible = false
	%pipe_score_text.text = str(pipesCollected)
	pass # Replace with function body.

func _winStatement():
	if pipesCollected == 5:
		get_tree().change_scene_to_file("w")
