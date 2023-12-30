extends Node2D

var n = 0
func _ready():
	SortDraw()
	
func SortDraw():
	get_child(n).hide()
	n = randi() % 9
	match n:
		0:
			get_node("EspadaAgua").show()
		1:
			get_node("EspadaFogo").show()
		2:
			get_node("EspadaTerra").show()
		3:
			get_node("MachadoAgua").show()
		4:
			get_node("MachadoFogo").show()
		5:
			get_node("MachadoTerra").show()
		6:
			get_node("MaçaAgua").show()
		7:
			get_node("MaçaFogo").show()
		8:
			get_node("MaçaTerra").show()





func _on_finish_pressed():
	SortDraw()

