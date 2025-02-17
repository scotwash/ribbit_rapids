extends Control


# starts game, leads to main map 
func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game_levels/test.tscn")
	pass # Replace with function body.

# when this button is pressed it takes the player to the credits scened 
func _on_credits_button_pressed():
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
	pass

# when this button is pressed the game exits out of itself
func _on_quit_button_pressed():
	get_tree().quit()
	pass # Replace with function body.
