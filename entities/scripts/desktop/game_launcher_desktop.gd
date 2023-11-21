extends Area2D
signal Launch


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_input_event(viewport, event, shape_idx):
	if(Input.is_action_pressed("Left Mouse Click")):
		emit_signal("Launch")
	pass # Replace with function body.
