extends Node2D

func _ready() -> void:
	print("Win Screen is ready.")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Called when the "game_won" signal is emitted
func _on_game_won():
	print("Game won! Showing the win screen.")
	
