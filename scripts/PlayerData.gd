extends Resource
class_name PlayerData

@export var speed = 135

@export var SavePos : Vector2

func UpdatePos(value : Vector2):
	SavePos = value
	
