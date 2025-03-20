extends Area2D

signal clicked
@export var sprite: Texture2D

func _ready() -> void:
	$'Sprite2D'.texture = sprite

#The following gotten from here: https://www.reddit.com/r/godot/comments/7xwr22/guide_how_to_click_a_sprite/
func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.is_pressed():
		self.on_click()

func on_click():
	clicked.emit()
	print("hi")
