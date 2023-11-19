extends Node
class_name player_skill

@export var skill_name : String
@export var total_xp: int


func gain_xp(amount):
	total_xp+=amount
	print(total_xp)
	
func lose_xp(amount):
	total_xp -=amount
