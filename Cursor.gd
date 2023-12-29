extends Node2D


var cursorA = preload("res://sprites/cursores/MãoA.png")
var cursorF = preload("res://sprites/cursores/MãoF.png")
var cursorT = preload("res://sprites/cursores/MarteloF.png")
var cursorH = preload("res://sprites/cursores/MarteloSelecionado.png")


func _ready():
	Input.set_custom_mouse_cursor(cursorA, Input.CURSOR_ARROW, Vector2(16, 16))

func _process(delta):
	if Input.is_action_pressed("mouse_select"):
		Input.set_custom_mouse_cursor(cursorF, Input.CURSOR_ARROW, Vector2(16, 16))
	elif !Input.is_action_pressed("mouse_select"):
		Input.set_custom_mouse_cursor(cursorA, Input.CURSOR_ARROW, Vector2(16, 16))



func _on_hammer_pressed():
	Input.set_custom_mouse_cursor(cursorH, Input.CURSOR_ARROW, Vector2(16, 16))
	
