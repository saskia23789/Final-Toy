extends CharacterBody2D

@onready var jump_noise = $JumpSound
@onready var land_noise = $LandSound
const GRAVITY = 10
const JUMP_POWER = -600
var jumps = 2
signal landed

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(0,0) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("left"):
		position -= Vector2(1,0) * 500 * delta
	if Input.is_action_pressed("right"):
		position += Vector2(1,0) * 500 * delta

var was_on_floor = false

func _physics_process(_delta: float) -> void:
	velocity.y += GRAVITY  # Apply gravity
	
	if Input.is_action_just_pressed("jump") and jumps >= 1:
		velocity.y = JUMP_POWER
		jumps -= 1 
		
	move_and_slide()
	
	if is_on_floor() and not was_on_floor:
		on_landed()
		
	was_on_floor = is_on_floor()
	
func on_landed():
	jumps = 2 
	emit_signal("landed")
