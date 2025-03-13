extends Node2D

@onready var train: Node2D = $"../Train"

func _input(event):
	if event.is_action_released("left_input"):
		go_left()
	if event.is_action_released("right_input"):
		go_right()

func _on_left_arrow_clicked() -> void:
	go_left()

func _on_right_arrow_clicked() -> void:
	go_right()

func go_left():
	train.go_left()

func go_right():
	train.go_right()
