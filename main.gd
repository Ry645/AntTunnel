extends Node3D

@onready var man = %man
@onready var player = %Player


# Called when the node enters the scene tree for the first time.
func _ready():
	man.setPlayerNeck(player.neck)
