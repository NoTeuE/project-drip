## Player ##
##--------##
## The player is the CharacterBody3D node the player will take control of.

extends CharacterBody3D

# TODO list!!! #
#--------------#
# TODO: Make set control schemes that can be changed in the options menu

# Controls #
#----------#
# The player will have access to the following controls:
# WASD : Move
# Arrow keys : Aim

func _process(delta: float) -> void:
	handle_movement(delta)
	handle_aim(delta)
	if(Input.is_action_pressed("shoot")) : print("Pew!")
	if(Input.is_action_just_pressed("bomb")) : print("Kaboom!")

## Handle the WASD movement of the player character
func handle_movement (delta: float) -> void:
	if (Input.is_action_pressed("move_up")): print("Move Up")
	if (Input.is_action_pressed("move_down")): print("Move Down")
	if (Input.is_action_pressed("move_left")): print("Move Left")
	if (Input.is_action_pressed("move_right")): print("Move Right")

## Handle the inputs for aiming the reticle
func handle_aim (delta: float) -> void:
	if (Input.is_action_pressed("aim_up")) : print("Reticle Up")
	if (Input.is_action_pressed("aim_down")) : print("Reticle Down")
	if (Input.is_action_pressed("aim_left")) : print("Reticle Left")
	if (Input.is_action_pressed("aim_right")) : print("Reticle Right")
