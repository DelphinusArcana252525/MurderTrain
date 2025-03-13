extends Sprite2D

signal reached12
@export var start_hour = 1
var hour

func _ready() -> void:
	hour = start_hour
	$HandNode.rotation = (PI * (1/6.0)) * hour

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("space"):
		rotate_hand()

func rotate_hand() -> void:
	hour += 1
	$HandNode.rotation = (PI * (1/6.0)) * hour
	print(hour)
	if hour >= 12:
		reached12.emit()

func _on_reached_12() -> void:
	print("end")
