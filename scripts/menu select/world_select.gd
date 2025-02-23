extends Control


func _on_next_pressed():
	get_tree().change_scene_to_file("res://scenes/level_select_child.tscn")
	pass # Replace with function body.


func _on_world_pressed():
	get_tree().change_scene_to_file("res://scenes/game_levels/world.tscn")
	pass # Replace with function body.
