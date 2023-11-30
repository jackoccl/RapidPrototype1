extends Node3D

@export var focused: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_window_focus_entered():
	focused = true
	pass # Replace with function body.


func _on_window_focus_exited():
	focused = false
	pass # Replace with function body.
