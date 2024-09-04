extends Node

var level = 1
var lives = 3
var score = 0

func update_lives():
	
	
	print(lives)
	if lives > 0:
			get_tree().reload_current_scene()
	else:
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")
		score = 0
		lives = 3

func update_hud_coins():
	score += 1
	#var current_scene = get_tree().current_scene
	#var hud = current_scene.get_node("HUD")
	#var coin_count = hud.get_node("Coin Count")
	#coin_count.text = ": X" + str(score)
	if score == 100:
		score = 0
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
		get_tree().change_scene_to_file("res://scenes/game_complete.tscn")
