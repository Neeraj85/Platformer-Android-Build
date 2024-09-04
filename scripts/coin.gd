extends Area2D


@onready var pick_up_sound = $PickUpSound
@onready var collision_shape_2d = $CollisionShape2D


func _on_body_entered(body):
	Global.update_hud_coins()
	pick_up_sound.play()
	hide()
	collision_shape_2d.set_deferred("disabled", true)
