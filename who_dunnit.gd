extends Node2D

@export var win_sprite: Texture2D
@export var lose_sprite: Texture2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pamlet_hemmingsworth_clicked() -> void:
	fail()

func _on_jennifer_soum_clicked() -> void:
	fail()

func _on_chiri_de_pomme_clicked() -> void:
	fail()

func _on_loni_johnson_clicked() -> void:
	fail()

func _on_anwar_isai_clicked() -> void:
	fail()

func _on_inoue_isai_clicked() -> void:
	win()

func fail() -> void:
	$EndScreen.texture = lose_sprite
	print("nope")

func win() -> void:
	$EndScreen.texture = win_sprite
	print("yep")
