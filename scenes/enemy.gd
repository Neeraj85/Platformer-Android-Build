extends Node2D
var direction = 1
const speed = 50
@onready var direction_timer = $"Direction Timer"

@onready var r_cright = $RCright
@onready var r_cleft = $RCleft
@onready var animated_sprite_2d = $AnimatedSprite2D

func change_direction():
	direction = -direction
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if r_cright.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if r_cleft.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += direction * speed * delta
	if direction == 1:
		animated_sprite_2d.flip_h = false
	else:
		animated_sprite_2d.flip_h = true


func _on_direction_timer_timeout():
	change_direction()
