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

	pass


# buttons make pipes rotate

func _on_button_1_pressed():
	Button1_count +=1
	%pipe2.rotate(0.79)
	if Button1_count == 6:
		%Button1.visible = false
	


func _on_button_2_pressed():
	%pipe3.rotate(0.53)
	Button2_count +=1
	if Button2_count == 3:
		%Button2.visible = false



func _on_button_3_pressed():
	%pipe5.rotate(0.3)
	Button3_count +=1
	if Button3_count == 16:
		%Button3.visible = false



func _on_button_4_pressed():
	%pipe7.rotate(0.43)
	Button4_count +=1
	if Button4_count == 11:
		$Button4.visible = false
	pass # Replace with function body.



func _on_button_5_pressed():
	%pipe10.rotate(0.5)
	Button5_count+=1

	pass # Replace with function body.
