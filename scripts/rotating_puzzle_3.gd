extends Node2D

# number of pipes collected
var pipesCollected = 0

# button press count variables
var Button1_count = 0
var Button2_count = 0
var Button3_count = 0
var Button4_count = 0
var Button5_count = 0
var Button6_count = 0
var Button7_count = 0
var Button8_count = 0
var Button9_count = 0
var Button10_count = 0 


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pipeCount()
	pass


# buttons make pipes rotate

func _on_button_1_pressed():
	Button1_count +=1
	%pipe2.rotate(0.79)
	if Button1_count == 6:
		%Button1.visible = false
		pipesCollected+=1
	


func _on_button_2_pressed():
	%pipe3.rotate(0.53)
	Button2_count +=1
	if Button2_count == 3:
		%Button2.visible = false
		pipesCollected+=1



func _on_button_3_pressed():
	%pipe5.rotate(0.3)
	Button3_count +=1
	if Button3_count == 16:
		%Button3.visible = false
		pipesCollected+=1



func _on_button_4_pressed():
	%pipe7.rotate(0.43)
	Button4_count +=1
	if Button4_count == 11:
		$Button4.visible = false
		pipesCollected+=1
	pass # Replace with function body.



func _on_button_5_pressed():
	%pipe10.rotate(0.5)
	Button5_count+=1
	if Button5_count == 9:
		$Button5.visible = false
		pipesCollected+=1
	pass # Replace with function body.


func _on_button_6_pressed():
	%pipe12.rotate(0.75)
	Button6_count+=1
	if Button6_count == 2:
		$Button6.visible = false
		pipesCollected+=1
	pass # Replace with function body.


func pipeCount():
	%pipe_score_text.text = str(pipesCollected)
	


func _on_button_7_pressed():
	%pipe16.rotate(0.3)
	Button7_count+=1
	if Button7_count == 3:
		$Button7.visible = false
		pipesCollected+=1

func _on_button_8_pressed():
	%pipe19.rotate(0.4)
	Button8_count+=1
	if Button8_count == 11:
		$Button8.visible = false 
		pipesCollected+=1
	pass # Replace with function body.


func _on_button_9_pressed():
	%pipe23.rotate(0.45)
	Button9_count+=1
	if Button9_count ==3:
		$Button9.visible = false
		pipesCollected+=1

	pass # Replace with function body.


func _on_button_10_pressed():
	%pipe13.rotate(0.2)
	Button10_count+=1
	if Button10_count ==10:
		$Button10.visible = false 
		pipesCollected +=1
	pass # Replace with function body.
