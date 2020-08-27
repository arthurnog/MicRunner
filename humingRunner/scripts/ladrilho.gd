extends Node2D

var game
var speed = 250
var flag = 1

func _ready():
	game = get_tree().current_scene
	
func _process(delta):
	if game.state == game.gameState.ON:
		var posX = position.x
		posX -= speed*delta
		position.x = posX
		
		if position.x < -100:
			queue_free()

func _on_portal_area_entered(area):
	if flag == 1:
		game.countScore()
		flag = 0
