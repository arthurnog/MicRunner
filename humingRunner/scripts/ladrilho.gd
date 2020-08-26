extends Node2D

var game
var speed = 250

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
	game.countScore()
