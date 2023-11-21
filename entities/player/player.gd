extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5
var tar_pos
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

func _ready():
	tar_pos=self.position

func _physics_process(delta):
	if(self.position!=tar_pos):
		self.position=position.lerp(tar_pos,1*delta)
	

func _on_static_body_3d_input_event(camera, event, position, normal, shape_idx):
	
	if(Input.is_action_pressed("Left Mouse Click")):
		tar_pos=position
		
