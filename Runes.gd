extends Node2D

var rune_name: String

func _on_water_pressed():
	rune_name = "Water"


func _on_earth_pressed():
	rune_name = "Earth"


func _on_fire_pressed():
	rune_name = "Fire"
