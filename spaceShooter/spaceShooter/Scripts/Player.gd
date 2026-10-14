extends CharacterBody2D

var playerVelocity = 25
var playerSlowing = 0.97

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	rotation += PI / 2
	
	if Input.is_action_pressed("PressedA"):
		velocity.x -= playerVelocity
	if Input.is_action_pressed("PressedD"):
		velocity.x += playerVelocity
	if Input.is_action_pressed("PressedW"):
		velocity.y -= playerVelocity
	if Input.is_action_pressed("PressedS"):
		velocity.y += playerVelocity
	
	velocity.x = velocity.x * playerSlowing
	velocity.y = velocity.y * playerSlowing

	move_and_slide()
