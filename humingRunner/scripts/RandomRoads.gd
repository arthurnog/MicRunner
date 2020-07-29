extends Node2D


export var num = 2
export var slice = 10
export var hillRange = 100

var screenSize
var road = Array()

func _ready():
	randomize()
	screenSize = get_viewport().get_visible_rect().size
	road = Array()
	var startY = screenSize.y*(3/4) + (-hillRange + randi()%hillRange)
	road.append(Vector2(0,startY))
	addHills()
	
func addHills():
	var hillWidth = screenSize.x/num
	var hillSlices = hillWidth/slice
	var start = road[-1]
	for i in range(num):
		var height = randi()%hillRange
		start.y-=height
		for j in range(0, hillSlices):
			var hillPoint = Vector2()
			hillPoint.x = start.x + j*slice*hillWidth*i
			hillPoint.y = start.y + cos((2*PI/hillSlices)*j)
			$Line2D.add_point(hillPoint)
		start.y += height

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
