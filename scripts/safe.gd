extends Node2D

@onready var key_pad: Control = $KeyPad
@onready var safe_door: Sprite2D = $SafeDoor
@onready var clickable_key: Area2D = $ClickableKey

var unlocked : bool = false

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == MOUSE_BUTTON_LEFT and not unlocked:
			key_pad.activate()

func _on_key_pad_unlocked() -> void:
	safe_door.hide()
	clickable_key.show()
	unlocked = true
