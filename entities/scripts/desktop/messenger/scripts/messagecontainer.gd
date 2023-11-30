extends VBoxContainer


@onready var messageTextLabel = $PanelContainer/VBoxContainer/MainMessage
@onready var timeMessageTextLabel = $PanelContainer/VBoxContainer/TimeMessage
@onready var messageObj : messenger_msg

# Called when the node enters the scene tree for the first time.

func init(msg:messenger_msg):
	messageObj = msg


func _ready() -> void:
	messageTextLabel.text = messageObj.MessageMain						

	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
