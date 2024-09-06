extends Node

var level = 1
var lives = 3
var score = 0


func One_up():
	if get_tree().current_scene:
		var scene = get_tree().current_scene
		if scene.has_method("play_one_up"):
			scene.play_one_up()

func update_lives():

	if lives > 0:
			get_tree().reload_current_scene()
	else:
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")

func update_hud_coins():
	score += 1
	if score == 100:
		score = 0
		One_up()
		
		if lives < 3:
			lives += 1
	
	
#func update_hearts():
	#var current_scene = get_tree().current_scene
	#var hud = current_scene.get_node("HUD")
	#if lives == 2:
		#hud.get_node("Heart3").queue_free()
	#if lives == 1:
		#hud.get_node("Heart2").queue_free()
	
func update_level():
	if level == 2:
		get_tree().change_scene_to_file("res://scenes/level_two.tscn")
	if level == 3:
		get_tree().change_scene_to_file("res://scenes/level_three.tscn")
	if level == 4:
		get_tree().change_scene_to_file("res://scenes/level_four.tscn")
	if level == 5:
		score = 0
		lives = 3
		level = 0
		get_tree().change_scene_to_file("res://scenes/game_complete.tscn")
