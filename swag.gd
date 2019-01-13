extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var position_tile = Vector2(0, 0)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	
var is_picked = false

func _on_Area2D_body_entered(body):
	print ("enter")
	var hero = body.get_node("..")
	if hero.has_method("isCloseToMe"):
		hero.isCloseToMe(self)

func doAction(body):
	print ("Pick item")
	if is_picked == false:
		hide()
		

func _give_gold_to_hero(smycke):
	self.get_node('../../../CanvasLayer/GuldmatareLabel')._laggtill("safir")


func _on_Area2D_body_exited(body):
	print ("exit")
	var hero = body.get_node("..")
	if hero.has_method("isNotCloseToMe"):
		hero.isNotCloseToMe(self)
