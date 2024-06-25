extends CharacterBody2D

@export var speed = 500

func _process(delta):
	moviment_player(delta)

func moviment_player(delta):
	if Input.is_action_pressed("move_up"):
		move_and_collide(Vector2.ZERO)
		position.y -= speed * delta
	
	if Input.is_action_pressed("move_down"):
		move_and_collide(Vector2.ZERO)
		position.y += speed * delta
