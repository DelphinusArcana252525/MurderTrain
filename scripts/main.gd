extends Node2D

@onready var inventory: Node2D = $Camera2D/Inventory

func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()

func add_item(item : String):
	inventory.add_item(item)
