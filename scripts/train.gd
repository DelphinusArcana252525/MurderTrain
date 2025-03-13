extends Node2D

const CAR_LENGTH : int = 256
const SCALE : float = 4.5
const OFFSET : int = 576
# Starts at 0 (not 1)
const START_CAR : int = 0

var train_cars : Array
var current_car : int

func _ready() -> void:
	train_cars = get_children()[0].get_children()
	position.x = -START_CAR * CAR_LENGTH * SCALE + OFFSET
	current_car = START_CAR

func go_left():
	var new_car : int = current_car - 1
	if new_car >= 0:
		position.x += CAR_LENGTH * SCALE
		current_car = new_car

func go_right():
	var new_car : int = current_car + 1
	if new_car < train_cars.size():
		position.x -= CAR_LENGTH * SCALE
		current_car = new_car
