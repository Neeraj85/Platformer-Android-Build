extends Node

func _ready():
	$Timer.start(5)
	Global.lives = 3
	Global.level = 1
	Global.score = 0


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
