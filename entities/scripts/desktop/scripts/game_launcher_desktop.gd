extends Area2D
signal Launch



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_input_event(viewport, event, shape_idx):
	if Globals.limiter <= 0:
		if(Input.is_action_just_pressed("Left Mouse Click")):
			Globals.limiter +=1 
#			$Timer.start()
			emit_signal("Launch")
	pass # Replace with function body.


func _on_timer_timeout():
	Globals.limiter = 0
	pass # Replace with function body.
