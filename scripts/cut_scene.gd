extends Node2D

var time
const BLANK_TIME = 1
const READ_TIME = 5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$JoiText.hide()
	$DetectiveText.hide()
	$UnfortunateText.hide()
	$MurderTrain.hide()
	time = 0
	$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	preload("res://scenes/main.tscn")

func check_stuff() -> void:
	if (time == BLANK_TIME):
		$JoiText.show()
	elif (time == BLANK_TIME + READ_TIME):
		$JoiText.hide()
	elif (time == 2 * BLANK_TIME + READ_TIME):
		$DetectiveText.show()
	elif (time == 2 * BLANK_TIME + 2 * READ_TIME):
		$DetectiveText.hide()
	elif (time == 3 * BLANK_TIME + 2 * READ_TIME):
		$UnfortunateText.show()
	elif (time == 3 * BLANK_TIME + 3 * READ_TIME):
		$UnfortunateText.hide()
	elif (time == 5 * BLANK_TIME + 3 * READ_TIME):
		$MurderTrain.show()
		$MurderTrain/Button.hide()
	elif  (time == 7 * BLANK_TIME + 3 * READ_TIME):
		$MurderTrain/Button.show()

func _on_timer_timeout() -> void:
	time += 1
	check_stuff()

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
