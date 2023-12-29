extends Node2D


var cursorA = preload("res://sprites/cursores/MãoA.png")
var cursorF = preload("res://sprites/cursores/MãoF.png")
var cursorT = preload("res://sprites/cursores/MarteloF.png")
var cursorH = preload("res://sprites/cursores/MarteloSelecionado.png")

var pressed = false


func _ready():
	Input.set_custom_mouse_cursor(cursorA, Input.CURSOR_ARROW, Vector2(16, 16))

func _process(delta):
#	elif pressed:
#		print("press")
#		Input.set_custom_mouse_cursor(cursorH, Input.CURSOR_ARROW, Vector2(16, 16))
#	elif !pressed:
#		Input.set_custom_mouse_cursor(cursorA, Input.CURSOR_ARROW, Vector2(16, 16))
#		#pressed = false
		
	if pressed:
		print("pressed")
		Input.set_custom_mouse_cursor(cursorH, Input.CURSOR_ARROW, Vector2(16, 16))
	elif !pressed:
		Input.set_custom_mouse_cursor(cursorA, Input.CURSOR_ARROW, Vector2(16, 16))

		if Input.is_action_pressed("mouse_select"):
			Input.set_custom_mouse_cursor(cursorF, Input.CURSOR_ARROW, Vector2(16, 16))

func _on_hammer_pressed():
	print("ei")
	pressed = true



func _on_table_mouse_exited():
	print("jjjjjjjjjj")
	pressed = false
