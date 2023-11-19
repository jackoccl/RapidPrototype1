extends RigidBody3D
class_name WorldEntity

var xp_val: int = 10
var health: int = 100
var title: String = "Basic Entity"

var player_skill

# Called when the node enters the scene tree for the first time.
func _ready():
	title = "Parent"
	player_skill = get_node("../Player").get_node("Skills").get_node("Mining")
	
	
func die():
	visible = false;
	
	player_skill.gain_xp(xp_val)
	$Timer.start();

func respawn():
	visible = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_input_event(camera, event, position, normal, shape_idx):
	
	if Input.is_action_just_released("Left Mouse Click"):
		if visible:
			die()
	pass # Replace with function body.
