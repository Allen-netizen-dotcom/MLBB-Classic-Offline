extends Node2D

# MLBB-inspired Offline 5v5 MOBA - Main Script
func _ready() -> void:
	print("Handa na ang laro: Offline 5v5 MOBA")
	setup_game()

func setup_game() -> void:
	# Dito natin ilalagay ang mga player at AI bots sa susunod
	var ui_label = Label.new()
	ui_label.text = "Offline 5v5 Mode - AI Active"
	ui_label.position = Vector2(100, 100)
	add_child(ui_label)

func _process(delta: float) -> void:
	# Game loop para sa bawat frame
	pass
