extends Node2D

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
	$LoseScreen.show()
	print("nope")

func win() -> void:
	$WinScreen.show()
	print("yep")
