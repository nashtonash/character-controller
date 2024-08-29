extends CharacterBody3D

var mouse_sensitivity: float = .005

func _input(event: InputEvent) -> void:
	if (event is InputEventMouseMotion):
		$CameraPivot.rotate_y(-event.relative.x * mouse_sensitivity)
		$CameraPivot.rotate_x(-event.relative.y * mouse_sensitivity)
		

func calculate_velocity() -> void:
	pass
	
func _physics_process(delta: float) -> void:
	var input_dir: Vector2 = Input.get_vector(
		"move_left",
		"move_right",
		"move_forward",
		"move_back",
	)
