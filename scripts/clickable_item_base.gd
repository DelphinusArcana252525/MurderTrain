extends Area2D

@export var item_name : String

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT:
			get_tree().root.get_child(0).add_item(item_name)
			hide()
