extends Node2D

var game = preload("res://entities/scripts/desktop/game_window.tscn")
var control

func _ready():
	control  = get_node("Control")
	$Control/Icons/GameLauncher.connect("Launch",_open_game)
	pass

	
func _open_game():
	
	control.add_child(game.instantiate())

