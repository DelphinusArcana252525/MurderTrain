extends Node2D

@onready var inventory: Node2D = $Camera2D/Inventory
@onready var camera_2d: Camera2D = $Camera2D

func _ready() -> void:
	preload("res://scenes/who_dunnit.tscn")

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()

func _on_guess_button_pressed() -> void:
	$Camera2D/Inventory.hide()
	$Camera2D/ArrowSet.hide()
	$Camera2D/GuessButton.hide()
	$Train.hide()
	$Camera2D/WhoDunnit.show()
	
func add_item(item : String):
	inventory.add_item(item)
	if item == "key":
		camera_2d.got_key()
