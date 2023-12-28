extends Node2D

var selected = false

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_pressed("mouse_select"):
		FollowMouse()
		
func FollowMouse():
	position = get_global_mouse_position()



func _on_area_2d_area_exited(area):
	if area.name == "Table":
		print("saiu")
		selected = true
	else:
		selected = false


func _on_area_2d_area_entered(area):
	if area.name == "Table":
		selected = true
		print("foi")
	else:
		selected = false
