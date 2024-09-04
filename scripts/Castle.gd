extends Area2D

var player = null

func _on_body_entered(body):
	Engine.time_scale = 0.5
	$Timer.start(3.5)
	$win.play()
	player = body
	player.set_physics_process(false)
	


func _on_timer_timeout():
	Global.level += 1
	Global.update_level()
	Engine.time_scale = 1
