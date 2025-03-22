extends Control

const CODE : String = "2025"

signal unlocked

@onready var timer: Timer = $Timer

func _on_line_edit_text_changed(new_text: String) -> void:
	if new_text == CODE:
		unlocked.emit()
		hide()

func activate():
	show()
	timer.start(5)

func _on_timer_timeout() -> void:
	hide()
