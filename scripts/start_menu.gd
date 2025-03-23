extends Node2D

@onready var credits_lable: Label = $SecondScreenNodes/CreditsLable
@onready var settings_label: Label = $SecondScreenNodes/SettingsLabel
@onready var engine: AnimatedSprite2D = $AstheticsNode/Engine
@onready var camera_2d: Camera2D = $Camera2D

var original_camera_position: Vector2 

func _ready() -> void:
	engine.play("default")
	original_camera_position = camera_2d.position 

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _on_credits_button_pressed() -> void:
	settings_label.hide()
	credits_lable.show()
	move_camera(1152)

func _on_settings_button_pressed() -> void:
	credits_lable.hide()
	settings_label.show()
	move_camera(1152)

func _on_back_button_pressed() -> void:
	move_camera_to(original_camera_position.x)

func _on_quit_button_pressed() -> void:
	get_tree().quit()

func move_camera(offset: float) -> void:
	var tween := get_tree().create_tween()
	tween.tween_property(camera_2d, "position:x", camera_2d.position.x + offset, 1.5).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)

func move_camera_to(target_x: float) -> void:
	var tween := get_tree().create_tween()
	tween.tween_property(camera_2d, "position:x", target_x, 1.5).set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_IN_OUT)
