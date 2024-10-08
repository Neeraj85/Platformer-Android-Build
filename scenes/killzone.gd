extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	Engine.time_scale = 0.5
	timer.start()
	body.get_node("CollisionShape2D").queue_free()
	body.get_node("AnimatedSprite2D").play("death")
	body.get_node("hurt").play()
	#Global.update_hearts()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	Global.lives -= 1
	Global.update_lives()
	

