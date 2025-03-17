extends Node2D

@onready var camera_2d: Camera2D = $".."


func _input(event):
	if event.is_action_released("left_input"):
		go_left()
	if event.is_action_released("right_input"):
		go_right()

func _on_left_arrow_clicked() -> void:
	print("triggered")
	go_left()

func _on_right_arrow_clicked() -> void:
	go_right()

func go_left():
	camera_2d.go_left()

func go_right():
	camera_2d.go_right()
