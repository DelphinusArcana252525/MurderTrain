extends Node2D

@onready var camera_2d: Camera2D = $".."
@onready var left_arrow: Area2D = $LeftArrow
@onready var right_arrow: Area2D = $RightArrow

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
	camera_2d.move_to_car(camera_2d.current_car - 1)

func go_right():
	camera_2d.move_to_car(camera_2d.current_car + 1)

func reset_arrows():
	right_arrow.enable()
	left_arrow.enable()

func hide_arrow(arrow : String):
	if arrow == "right":
		right_arrow.disable()
	if arrow == "left":
		left_arrow.disable()

func lock_arrow():
	left_arrow.disable()
	left_arrow.lock()
