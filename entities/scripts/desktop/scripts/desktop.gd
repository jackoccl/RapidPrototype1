extends Node2D


func _ready():
	$Control/Icons/GameLauncher.connect("Launch",_open_game)
	
	pass

	
func _open_game():
	var game = load("res://entities/scripts/desktop/scenes/game_window.tscn")
	add_child(game.instantiate())

