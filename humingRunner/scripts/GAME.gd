extends Node2D

var scr = 0
enum gameState {ON, OFF}
var state = gameState.ON 

func _ready():
	$hud/score.text = str(scr)
	state = gameState.ON
	
func countScore():
	scr += 1
	print(scr)
	$hud/score.text = str(scr)
	

func gameOver():
	state = gameState.OFF
	$spawn/Timer.stop()
