class_name PacMan extends Hero

var direction: Vector2

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("pacman_left", "pacman_right", "pacman_up", "pacman_down")
	velocity = direction * speed
	move_and_slide()
