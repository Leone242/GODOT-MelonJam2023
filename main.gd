extends Node2D

var coin = 0
var payment = 200
@export var coin_audio: AudioStreamPlayer2D
@export var metal_audio: AudioStreamPlayer2D
@export var botao_audio: AudioStreamPlayer2D

func _ready():
	$Label.text = str(coin)

func _process(delta):
	if Input.is_action_pressed("escape"):
		get_tree().change_scene_to_file("res://menu.tscn")
	


func UpdateCoinText():
	$Label.text = str(coin)
	
func UpdateCoin():
	coin += payment
	UpdateCoinText()
	coin_audio.play()
	


func _on_table_area_exited(area):
	if area.name == "Area2D":
		$Finish.show()
		metal_audio.play()

func _on_finish_pressed():
	botao_audio.play()
	$Finish.hide()
	UpdateCoin()
