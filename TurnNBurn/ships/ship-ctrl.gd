extends "res://ships/ship-ctrl.gd"

# Functions to invert autopilot heading.
# Credit to cxcorp for the original implementation, and Za'krin for ZKY, which this is pulled from.
var _autopilotManualHeadingFlipped: bool = false

func _enter_tree():
	_autopilotManualHeadingFlipped = false
	.enter_tree()

func _onDespawn():
	_autopilotManualHeadingFlipped = false
	._onDespawn()

func manualControl(delta):
	.manualControl(delta)
	if Input.is_action_pressed("autopilot_orient_to_mouse") and ( not queueTargetting or mouseQueueClickTime > autopilotMouseDeadTime):
		if _autopilotManualHeadingFlipped:
			var a = autopilotDesiredRotation
			a += PI
			if a > 2 * PI:
				a -= 2 * PI
			autopilotDesiredRotation = a

	if Input.is_action_just_pressed("autopilot_flip_heading"):
			_autopilotManualHeadingFlipped = not _autopilotManualHeadingFlipped
			autopilotDesiredRotation += PI
			if autopilotDesiredRotation > 2 * PI:
				autopilotDesiredRotation -= 2 * PI