extends Node2D

var selected = false
var weapon_estate = 0

@export var mark: Marker2D


func _ready():
	pass
	
func _process(delta):
	if Input.is_action_pressed("mouse_select"):
		FollowMouse()
	elif Input.is_action_just_released("mouse_select") and !selected:
		position = mark.position
	AssembleWeapon()
		
func FollowMouse():
	position = get_global_mouse_position()


func _on_area_2d_area_entered(area):
	if area.name == "Table":
		selected = false
		$Craft.show()
		print("foi")


func _on_area_2d_area_exited(area):
	if area.name == "Table":
		print("saiu")
		selected = true
	else:
		selected = false



func AssembleWeapon():
	match weapon_estate:
		0:
			get_node("Icon").show()
			
		1:
			get_node("Icon2").show()
			get_node("Icon").hide()	
		2:
			get_node("Icon3").show()
			get_node("Icon2").hide()
		3:
			get_node("Icon4").show()
			get_node("Icon3").hide()	
		4:
			get_node("Icon5").show()
			get_node("Icon4").hide()	
			$Craft.hide()

func _on_craft_pressed():
	if weapon_estate <=3:
		weapon_estate +=1

