extends Node2D

var selected = false
var weapon_estate = 0
var on_table = false
@export var mark: Marker2D
var rune_name: String
@export var rune: Node2D
var set_rune = false

@export var pega_audio: AudioStreamPlayer2D
@export var crafta_audio: AudioStreamPlayer2D
@export var coloca_audio: AudioStreamPlayer2D

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_pressed("mouse_select") and selected:
		pega_audio.play()
		FollowMouse()
	elif Input.is_action_just_released("mouse_select") and on_table:
		coloca_audio.play()
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
		set_rune = true
		print("foi")
	else:
		on_table = false
		set_rune = false


func _on_area_2d_area_exited(area):
	if area.name == "Table":
		on_table = false
		set_rune = false



func AssembleWeapon():
	match weapon_estate:
		0:
			get_node("BaseMachado").show()
			
		1:
			get_node("BaseMachado").hide()	
			get_node("Moldado").show()
		2:
			get_node("Cabo").show()
		3:
			get_node("Cabo").hide()
			get_node("Moldado").hide()
			get_node("Completo").show()
	
			
			$Craft.hide()
	if on_table and set_rune:
		DefineRune()

func DefineRune():
	rune_name = rune.rune_name
	match rune_name:
		"Fire":
			get_node("CompletoFogo").show()
		"Water":
			get_node("CompletoAgua").show()
		"Earth":
			get_node("CompletoTerra").show()	
	


func _on_craft_pressed():
	if weapon_estate <=2:
		crafta_audio.play()
		weapon_estate +=1



func _on_area_2d_mouse_entered():
	selected = true


func _on_area_2d_mouse_exited():
	selected = false


