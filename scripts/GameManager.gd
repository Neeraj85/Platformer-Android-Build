extends Node

var score = 0

@export @onready var label = get_node("/root/HUD/Label")


func add_point():
	score += 1
	label.text = "You collected " + str(score) +  " coins."
