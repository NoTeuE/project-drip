extends Node3D

# Rotate the cube
func _process(delta: float) -> void:
	self.rotation.y += (PI/6)*delta
