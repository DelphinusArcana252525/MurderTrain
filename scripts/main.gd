extends Node2D

@onready var inventory: Node2D = $Camera2D/Inventory


# Temp code for testing
func _input(_event: InputEvent) -> void:
	if Input.is_action_just_released("ui_accept"):
		inventory.add_item(str(randi_range(0, 2)))
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()
