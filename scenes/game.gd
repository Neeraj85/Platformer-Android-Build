extends Node2D

@onready var coin_count = get_node("HUD").coin_count
@onready var lives_count = get_node("HUD").lives_count
@onready var level_count = get_node("HUD").level

func play_one_up():
	$"player/One Up".play()


func _process(delta):
	coin_count.text = ": X" + str(Global.score)
	lives_count.text = ": X" + str(Global.lives)
	level_count.text = "Level :" + str(Global.level)
	#update_hearts()
	#
#func update_hearts():
	
	#var current_scene = get_tree().current_scene
	#var hud = current_scene.get_node("HUD")
	#if Global.lives == 2:
		#hud.get_node("Heart3").queue_free()
	#if Global.lives == 1:
		#hud.get_node("Heart2").queue_free()
		#hud.get_node("Heart3").queue_free()
