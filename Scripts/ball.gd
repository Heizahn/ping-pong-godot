extends CharacterBody2D

var speed = 0
var direction = Vector2.ZERO
var is_moving = false
var contador: int = 0

func _ready():
	randomize()
	initialze_ball()

func initialze_ball():
	speed = 400
	direction.x = [- 1, 1][randi() % 2]
	direction.y = [- 0.8, 0.8][randi() % 2]
	is_moving = true

func _physics_process(delta):
	if is_moving:
		var collision = move_and_collide(direction * speed * delta)

		if collision:
			direction = direction.bounce(collision.get_normal())

func update_contunter():
	contador += 1
	print(contador)

func _on_contador_timeout():
	update_contunter()
	speed += 16
