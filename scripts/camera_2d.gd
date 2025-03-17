extends Camera2D

const CAR_LENGTH : int = 256
const SCALE : float = 4.5
const OFFSET : int = 576
const START_CAR : int = 0

var train_cars : Array
var current_car : int
var tween : Tween

@onready var train: Node2D = $"../Train"


func _ready() -> void:
	train_cars = train.get_children()[0].get_children()
	position.x = START_CAR * CAR_LENGTH * SCALE + OFFSET
	current_car = START_CAR

func move_to_car(car_index: int):
	if car_index >= 0 and car_index < train_cars.size():
		current_car = car_index
		var target_x = current_car * CAR_LENGTH * SCALE + OFFSET
		tween = get_tree().create_tween()
		tween.tween_property(self, "position:x", target_x, 0.5).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)

func go_left():
	move_to_car(current_car - 1)

func go_right():
	move_to_car(current_car + 1)
