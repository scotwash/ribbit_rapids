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
var win = 0
# called at the beginnin

# called every frame 
func _process(delta):
	
	buttonCondition()
	print(pipesCollected)
# called at the beginning

func updateScore():
	$score.text = str(pipesCollected)
	

func _on_rotate_3_pressed():
	button_3_press+=1
	%"3".rotate(0.35)
	%"3".position = Vector2(366, 428)
	$score.text = str(pipesCollected)
	
func _on_rotate_5_pressed():
	button_5_press +=1
	%"5".rotate(0.35)
	%"5".position = Vector2(416, 284)
	$score.text = str(pipesCollected)
func _on_rotate_8_pressed():
	button_8_press +=1
	%"8".rotate(35)
	pipesCollected+=1
	$score.text = str(pipesCollected)

func _on_rotate_9_pressed():
	button_9_press +=1
	%"9".rotate(35)
	pipesCollected+=1
	$score.text = str(pipesCollected)
func _on_rotate_12_pressed():
	button_12_press+=1
	%"12".rotate(0.45)
	pipesCollected+=1
	$score.text = str(pipesCollected)



func _on_rotate_17_pressed():
	button_17_press+=1
	%"17".rotate(0.1)
	pipesCollected+=1
	$score.text = str(pipesCollected)


func _on_rotate_14_pressed():
	button_14_press+=1
	%"14".rotate(0.46)
	%"14".position = Vector2(426,84)
	pipesCollected+=1
	$score.text = str(pipesCollected)
	
func buttonCondition():
	if button_3_press == 5:
		$Rotate_3.visible = false
		
		
	
			
		
		
	
	if button_5_press == 5:
		$Rotate_5.visible = false
	
	
		

		
		
	
	if button_8_press ==3:
		$Rotate_8.visible = false
		
		

		
		
	if button_9_press == 9:
		$Rotate_9.visible = false
		

		
		
		
	if button_12_press ==11:
		$Rotate_12.visible = false
		
		
		
	

		
	if button_17_press == 17:
		$Rotate_17.visible = false
		
	


		
	if button_14_press == 3:
		$Rotate_14.visible = false
	
		
	

	
	
