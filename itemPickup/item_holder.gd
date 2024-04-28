extends Node3D

class_name ItemHolder

@export var itemRes:ItemResource

# Called when the node enters the scene tree for the first time.
func _ready():
	var itemNode = itemRes.scene.instantiate()
	add_child(itemNode)

