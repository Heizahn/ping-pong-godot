extends RigidBody2D

@export var speed = 400

func _process(delta):
	moviment_player(delta)

func moviment_player(delta):

	if Input.is_action_pressed("move_up"):
		position.y -= speed * delta
	
	if Input.is_action_pressed("move_down"):
		position.y += speed * delta