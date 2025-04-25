extends AnimatedSprite2D

var state := "idle" 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var player = get_parent()
	player.connect("landed", Callable(self, "_on_Player_landed"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if state != "jump":
		var is_moving = Input.is_action_pressed("left") or Input.is_action_pressed("right")
		
		if is_moving:
			frame = 1
			state = "walk"
			if Input.is_action_pressed("left"):
				flip_h = true
			elif Input.is_action_pressed("right"):
				flip_h = false

		else:
			frame = 0
			state = "idle"

func _input(event: InputEvent) -> void:
	
	if Input.is_action_pressed("jump") and state != "jump":
		frame = 2
		state = "jump"
		if Input.is_action_pressed("left"):
			flip_h = true
		elif Input.is_action_pressed("right"):
			flip_h = false

func _on_Player_landed():
	frame = 0
	state = "idle"
