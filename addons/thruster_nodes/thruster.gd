@tool
extends EditorPlugin

func _enter_tree():
	#add_custom_type("Thruster", "ImmediateMesh", preload("thruster_node.gd"), preload("res://addons/thruster_nodes/thruster_icon.png"))
	pass

func _exit_tree():
	#remove_custom_type("Thruster")
	pass
