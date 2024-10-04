extends "res://Settings.gd"


func _init():
	for input in ["toggle_mpu"]:
		if !(input in inputs):
			InputMap.add_action(input)
			inputs.append(input)
