extends CharacterBody2D

var speed = 500
var direction = Vector2.ZERO
var is_moving = false
var is_player_two = false

@onready var ball = get_parent().find_child("ball")

func _ready():
	randomize()
		
func _physics_process(delta):
	if is_player_two:
		moviment_player_two(delta)
	else:
		moviment_ai(delta)

func moviment_player_two(delta):
	if Input.is_action_pressed("ui_up"):
		move_and_collide(Vector2.ZERO)
		position.y -= speed * delta
	
	if Input.is_action_pressed("ui_down"):
		move_and_collide(Vector2.ZERO)
		position.y += speed * delta

func moviment_ai(_delta):
	direction = Vector2(0, _get_direction())
	move_and_collide(direction * speed * _delta)

func _get_direction():
	if abs(ball.position.y - position.y) > 15:
		if ball.position.y > position.y:
			return 1
		else:
			return - 1
	else:
		return 0