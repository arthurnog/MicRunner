extends Node2D

onready var portal = preload("res://scenes/ladrilho.tscn")

func _ready():
	randomize()

func _on_Timer_timeout():
	createPortal()

func createPortal():
	var clonePortal = portal.instance()
	clonePortal.position = Vector2(740,rand_range(240,1040))
	add_child(clonePortal)
