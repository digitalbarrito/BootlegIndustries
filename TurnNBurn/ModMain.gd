extends Node

const MOD_PRIORITY = -19

func _init(modLoader = ModLoader):
	modLoader.installScriptExtension("res://TurnNBurn/Settings.gd")
	modLoader.installScriptExtension("res://TurnNBurn/ships/ship-ctrl.gd")
