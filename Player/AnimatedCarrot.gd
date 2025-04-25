extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	frame = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	
	if Input.is_action_pressed("left"):
		frame = 1
