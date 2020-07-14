extends KinematicBody2D

var vel = 0

func _ready():
	pass # Replace with function body.

func _process(delta):
	if position.y > 620:
		vel = -(position.y - 620)*0.001
	elif position.y < 620:
		vel = (620 - position.y)*0.001
	else:
		vel = 0
		
#	pass
