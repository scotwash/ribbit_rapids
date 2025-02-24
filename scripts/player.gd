extends CharacterBody2D

var save_file_path = "user://save/"
var save_file_name = "PlayerSave.tres"
var playerData = PlayerData.new()

var current_dir = "none"

func on_start_load():
	self.position = playerData.SavePos

func _ready():
	verify_save_directory(save_file_path)
	
func verify_save_directory(path: String):
	DirAccess.make_dir_absolute(path)

func load_data():
	playerData = ResourceLoader.load(save_file_path + save_file_name).duplicate(true)
	on_start_load()
	print("loaded")
	
func save():
	ResourceSaver.save(playerData, save_file_path + save_file_name)
	print("save")

func _process(delta):
	if Input.is_action_just_pressed("save"):
		save()
	if Input.is_action_just_pressed("load"):
		load_data()
	emit_signal("update_ui", self.position)
	playerData.UpdatePos(self.position)

func _physics_process(delta):
	player_movement(delta)
	pass
func player_movement(delta):
	pass
	
	if Input.is_action_pressed("move_right"):
		current_dir = "right"
		%sprites.animation = "walk_r"
		
		velocity.x = playerData.speed
		velocity.y = 0
	elif Input.is_action_pressed("move_left"):
		current_dir = "left"
		%sprites.animation = "walk_l"
		
		velocity.x =-playerData.speed
		velocity.y = 0
	elif Input.is_action_pressed("move_down"):
		current_dir = "down"
		%sprites.animation = "walk_f"
		velocity.y = playerData.speed
		velocity.x = 0
	elif Input.is_action_pressed("move_up"):
		current_dir = "up"
		%sprites.animation = "walk_b"
		
		velocity.y = -playerData.speed
		velocity.x = 0
	else:
		velocity.x = 0
		velocity.y = 0
	
	move_and_slide()
