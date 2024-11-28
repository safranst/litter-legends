extends RigidBody3D

var velocity = Vector3(0, 0, 0)

func _ready():
	pass

func _physics_process(delta):
	while (Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left")):
		if Input.is_action_pressed("ui_right"):
			velocity.x = 5
		if Input.is_action_pressed("ui_left"):
			velocity.x = -5
	move_and_collide(velocity)
