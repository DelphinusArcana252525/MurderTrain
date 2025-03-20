extends Control

@onready var item_info_box: Node2D = $ItemInfoBox


func _on_mouse_entered() -> void:
	item_info_box.show()

func _on_mouse_exited() -> void:
	item_info_box.hide()
