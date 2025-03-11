extends Node2D

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
	print("left input given")

func go_right():
	print("right input given")
