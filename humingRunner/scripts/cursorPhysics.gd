extends KinematicBody2D

var vel = Vector2(0,0)
var motion = Vector2(0,0)
const grav = 1000
const speed = 2

func _ready():
	pass # Replace with function body.

func _process(delta):
	#if position.y > 620:
	#	vel.y -= (position.y - 620)*0.1
	#elif position.y < 620:
	#	vel.y -= (620 - position.y)*0.1
	#else:
	#	vel.y = 0
	#position += vel*delta
	pass
	
func _physics_process(delta):
	#a movimentação será em torno de um ponto fixo como um centro gravitacional
	#quando o cursor se afasta ele quer voltar para o centro
	
	#problemas para amortecer o movimento
	
	if Input.is_action_pressed("ui_up"):
		position.y -= speed
	elif Input.is_action_pressed("ui_down"):
		position.y += speed
	else:
		if position.y < 620:
			vel.y += grav*delta
			motion = vel*delta
			
		elif position.y > 620:
			vel.y -= grav*delta
			motion = vel*delta
		else:
			vel.y = 0
			motion.y = 0
	position += motion
func _input_event(viewport, event, shape_idx):
	pass
