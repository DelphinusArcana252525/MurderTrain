extends Area2D

signal clicked

@onready var lock_sprite: Sprite2D = $LockSprite

var can_be_clicked : bool = true

func _input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.is_pressed() and can_be_clicked:
		if event.button_index == MOUSE_BUTTON_LEFT:
			clicked.emit()

func enable():
	unlock()
	modulate.a = 1
	can_be_clicked = true

func disable():
	modulate.a = .25
	can_be_clicked = false

# Quite bad code below

func lock():
	lock_sprite.show()

func unlock():
	lock_sprite.hide()
