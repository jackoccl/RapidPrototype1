extends Window

var messageScene = preload("res://entities/scripts/desktop/messenger/components/message.tscn")
var responseScene = preload("res://entities/scripts/desktop/messenger/components/response_message.tscn")
var msgVboxScene
@onready var msg = messenger_msg.new("Hello")
@onready var msgVbox = $Control/HBoxMain/VBoxRight/MessagePanel/VScrollBar/MessageTabContainer/VBoxMessages
@onready var MsgTab = $Control/HBoxMain/VBoxRight/MessagePanel/VScrollBar/MessageTabContainer
@onready var msgEdit = $Control/HBoxMain/VBoxRight/Panel2/MessageEdit
@onready var msgArr = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var newMsg = messageScene.instantiate()
	newMsg.init(msg)
	msgVbox.add_child(newMsg)
	
	for i in $Control/HBoxMain/VBoxFriends/FriendButtons.get_child_count():
		var vbox = VBoxContainer.new()
		vbox.name = str(i)
		MsgTab.add_child(vbox)
		
	
	
		

func createResponse():
		var newMsg = messenger_msg.new(msgEdit.text)
		var response = responseScene.instantiate()
		response.init(newMsg)
		msgVbox.add_child(response)
		msgEdit.text = ""
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if msgEdit.text != "" and msgEdit.has_focus():
		if Input.is_action_just_pressed("Enter"):
			createResponse()

