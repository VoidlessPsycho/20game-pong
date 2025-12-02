extends PhysicsBody2D

var screen_size
@export var paddle_speed = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	
	position += velocity * paddle_speed * delta
	position = position.clamp(Vector2(15,25), Vector2(15,335))
	
	
	
