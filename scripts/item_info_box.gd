extends Node2D

@onready var item_name: Label = $ItemName
@onready var item_description: Label = $ItemDescription

@export var nameVar : String
@export var descriptionVar : String

func _ready() -> void:
	item_name.text = nameVar
	item_description.text = descriptionVar
