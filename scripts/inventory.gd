extends Node2D

const FILE_PATH : String = 'res://scenes/items/item_%s.tscn'
const MAX_ITEMS : int = 10

@onready var grid_container: GridContainer = $GridContainer
@onready var new_item_text: CenterContainer = $NewItemText

var is_first_item: bool = true

func add_item(item: String):
	if grid_container.get_child_count() >= MAX_ITEMS:
		return
	grid_container.add_child(load(FILE_PATH % item).instantiate()) 
	if is_first_item:
		is_first_item = false
		new_item_text.show()
