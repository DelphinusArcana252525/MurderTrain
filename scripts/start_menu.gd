extends Node2D

func _on_credits_button_pressed() -> void:
	pass

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
