extends Node2D

#counts how many pipes have been solved

var pipesCollected = 0 

# button_press variables count how many times a button has been pressed
var button_3_press = 0
var button_5_press = 0
var button_8_press = 0
var button_9_press = 0
var button_12_press = 0
var button_14_press = 0
var button_17_press = 0

# called at the beginning
func _ready():
	scoreCount()

# called every frame 
func _process(delta):
	scoreCount()
	buttonCondition()
# called at the beginning


	

func _on_rotate_3_pressed():
	button_3_press+=1
	%"3".rotate(0.35)
	%"3".position = Vector2(366, 428)
	
	
func _on_rotate_5_pressed():
	button_5_press +=1
	%"5".rotate(0.35)
	%"5".position = Vector2(416, 284)

func _on_rotate_8_pressed():
	button_8_press +=1
	%"8".rotate(35)

func _on_rotate_9_pressed():
	button_9_press +=1
	%"9".rotate(35)
func scoreCount():
	pipesCollected +=1
	
func buttonCondition():
	if button_3_press == 5:
		pipesCollected+=1
		$Rotate_3.visible = false
	
	if button_5_press == 5:
		pipesCollected+=1
		$Rotate_5.visible = false
	
	if button_8_press ==3:
		pipesCollected+=1
		$Rotate_8.visible = false
		
	if button_9_press == 9:
		pipesCollected+=1
		$Rotate_9.visible = false
