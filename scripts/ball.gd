extends PhysicsBody2D	
var velocity : Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity.x = -250
	velocity.y = randf_range(-50,50)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
