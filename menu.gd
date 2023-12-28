extends Node2D



func _on_play_pressed():
	get_tree().change_scene_to_file("res://main.tscn")


func _on_quit_pressed():
	await get_tree().create_timer(0.5).timeout
	get_tree().quit()
