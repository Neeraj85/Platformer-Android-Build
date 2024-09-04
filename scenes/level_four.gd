extends Node

@onready var coin_count = get_node("HUD").coin_count
@onready var lives_count = get_node("HUD").lives_count
@onready var level_count = get_node("HUD").level

func _process(delta):
	coin_count.text = ": X" + str(Global.score)
	lives_count.text = ": X" + str(Global.lives)
	level_count.text = "Level :" + str(Global.level)
	#update_hearts()
	#
#func update_hearts():
	#
	
	#if Global.lives == 2:
		#hud.get_node("Heart3").queue_free()
	#elif Global.lives == 1:
		#hud.get_node("Heart2").queue_free()
		#hud.get_node("Heart3").queue_free()
