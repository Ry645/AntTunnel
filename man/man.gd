extends MeshInstance3D

class_name Man

var playerNeck:Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	#var material = get_surface_override_material(0)
	#if playerNeck == null:
		#if material != null && material is StandardMaterial3D:
			#material.billboard_mode = BaseMaterial3D.BILLBOARD_FIXED_Y
		#else:
			#print("man material doesn't exist or isn't a standard material: ", self)
		#print("could not find player neck in man: ", self)
	#else:
		#if material != null && material is StandardMaterial3D:
			#material.billboard_mode = BaseMaterial3D.BILLBOARD_DISABLED
		#else:
			#print("man material doesn't exist or isn't a standard material: ", self)
	
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if playerNeck != null:
		look_at(Vector3(playerNeck.global_position.x, global_position.y, playerNeck.global_position.z))
		rotation.y += PI
		#print(global_rotation_degrees)

func setPlayerNeck(neck):
	playerNeck = neck
