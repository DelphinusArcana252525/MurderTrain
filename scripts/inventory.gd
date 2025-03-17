extends Node2D

const FILE_PATH : String = 'res://scenes/items/item_%s.tscn'
const MAX_ITEMS : int = 10

@onready var grid_container: GridContainer = $GridContainer

func add_item(item: String):
	if grid_container.get_child_count() >= MAX_ITEMS:
		return
	grid_container.add_child(load(FILE_PATH % item).instantiate()) 
