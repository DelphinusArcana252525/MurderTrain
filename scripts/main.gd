extends Node2D

@onready var inventory: Node2D = $Camera2D/Inventory

var items : Array = ["bag", "key", "knife", "poster_0", "poster_1", "plant"]

# Temp code for testing
func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()

func add_item(item : String):
	inventory.add_item(item)
