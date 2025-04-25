extends Node2D

@onready var player = $Player/ThePlayer
@onready var carrot = $Carrot/CarrotArea2D
@onready var win_screen = $Win_Screen  

func _ready() -> void:
	carrot.connect("show", Callable(win_screen, "_on_show"))
	print("Player reference:", player)  
	if player:
		player.landed.connect
	print("Player reference:", player)
	print("Carrot reference:", carrot)
	print("Win screen reference:", win_screen)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_show():
	print("You won the game!") 
	$Win_Screen.visible = true
