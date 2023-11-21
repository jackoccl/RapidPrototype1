extends Node2D


var control

func _ready():
	control  = get_node("Control")
	$Control/Icons/GameLauncher.connect("Launch",_open_game)
	pass

	
func _open_game():
	var game = load("res://entities/scripts/desktop/game_window.tscn")
	control.add_child(game.instantiate())

