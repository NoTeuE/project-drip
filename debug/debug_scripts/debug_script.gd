extends Node3D

# Move the cube
func _process(delta: float) -> void:
	if(Input.is_action_pressed("move_up")) : position.y += .2
	if(Input.is_action_pressed("move_down")) : position.y -= .2
	if(Input.is_action_pressed("move_right")) : position.x += .2
	if(Input.is_action_pressed("move_left")) : position.x -= .2
	
