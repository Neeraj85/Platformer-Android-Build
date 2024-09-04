extends Node

#@onready var current_scene = get_tree().current_scene
#@onready var hud = current_scene.get_node("HUD")
#@onready var coin_count = hud.get_node("Coin Count")
#@onready var lives_count = hud.get_node("Lives Count")
#@onready var level_count = hud.get_node("Level Count")

@onready var coin_count = get_node("../HUD/Container/Coin Count")
@onready var lives_count = get_node("../HUD/Container/Lives Count")
@onready var level_count = get_node("../HUD/Container/Level Count")

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
