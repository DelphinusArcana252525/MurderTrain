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
	camera_2d.go_left()

func go_right():
	camera_2d.go_right()

func reset_arrows():
	right_arrow.modulate.a = 1
	left_arrow.modulate.a = 1

func hide_arrow(arrow : String):
	if arrow == "right":
		right_arrow.modulate.a = .25
	if arrow == "left":
		left_arrow.modulate.a = .25
