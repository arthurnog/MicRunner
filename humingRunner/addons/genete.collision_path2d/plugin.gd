tool
extends EditorPlugin

func _enter_tree():
	# Initialization of the plugin goes here
	add_custom_type("CollisionPath", "Path2D", load("collision_path.gd"), load("icon.png"))
	pass

func _exit_tree():
	# Clean-up of the plugin goes here
	remove_custom_type("CollisionPath")
	pass
