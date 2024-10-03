extends "res://Settings.gd"

func _init():
	for input in ["autopilot_orient_to_mouse", "autopilot_flip_heading"]:
		if !(input in inputs):
			InputMap.add_action(input)
			inputs.append(input)
