extends Node2D

var selected = false
var weapon_estate = 0
var on_table = false
@export var mark: Marker2D
var cursor = preload("res://sprites/cursores/MãoA.png")


func _ready():
	pass
	
func _process(delta):
	if Input.is_action_pressed("mouse_select") and selected:
		FollowMouse()
	elif Input.is_action_just_released("mouse_select") and on_table:
		position = mark.position
		$Craft.show()
	elif Input.is_action_just_released("mouse_select") and !on_table:
		$Craft.hide()
	AssembleWeapon()
		
func FollowMouse():
	position = get_global_mouse_position()


func _on_area_2d_area_entered(area):
	if area.name == "Table":
		on_table = true
		print("foi")
	else:
		on_table = false


func _on_area_2d_area_exited(area):
	if area.name == "Table":
		on_table = false



func AssembleWeapon():
	match weapon_estate:
		0:
			get_node("Icon").show()
			
		1:
			get_node("Icon").hide()	
			get_node("Icon2").show()
		2:
			get_node("Icon2").hide()
			get_node("Icon3").show()
			get_node("Bainha").show()
		3:
			get_node("Icon3").hide()
			get_node("Bainha").hide()
			get_node("Icon4").show()	
		4:
			get_node("Icon4").hide()	
			get_node("Icon5").show()
			
			$Craft.hide()
			Input.set_custom_mouse_cursor(cursor, 
				Input.CURSOR_ARROW, Vector2(16, 16))


func _on_craft_pressed():
	if weapon_estate <=3:
		weapon_estate +=1



func _on_area_2d_mouse_entered():
	selected = true


func _on_area_2d_mouse_exited():
	selected = false
