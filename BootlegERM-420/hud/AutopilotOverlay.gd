extends "res://hud/AutopilotOverlay.gd"




func processAutopilotOptions(delta:float):
	if pathShape:
		lookaheadCntr += delta
		if lookaheadCntr > lookaheadTime:
			lookaheadCntr = 0
			
	mmCount += delta
	if mmCount >= mineralMarkersEvery:
		if isPoweredUp():
			while mmCount >= mineralMarkersEvery:
				mmCount -= mineralMarkersEvery
				for i in range(CurrentGame.getCrewNumberWithRole("CREW_OCCUPATION_GEOLOGIST")):
					geologistMineralMarkers()
				for i in range(CurrentGame.getCrewNumberWithRole("CREW_OCCUPATION_ASTROGATOR")):
					astrogatorTacticalMarkers()

	var path = false
	var ai = false
	match autopilotType:
		"SYSTEM_AUTOPILOT_BLI":
			path = true
		"SYSTEM_AUTOPILOT_RTYPE":
			path = true
		"SYSTEM_AUTOPILOT_MK4":
			ai = true
	if path and Tool.claim(ship):
		if not pathShape:
			pathShape = ship.getCollisionPoints()
			pathShape.append(pathShape[0])
			
		shipLinearAcceleration = (ship.linear_velocity - shipLinearVelocity) / delta
		shipAngularAcceleration = (ship.angular_velocity - shipAngularVelocity) / delta
		shipLinearVelocity = ship.linear_velocity
		shipAngularVelocity = ship.angular_velocity
		shipRotation = ship.global_rotation
		shipPosition = ship.global_position
		
		if ship.autopilot:
			shipTargetLinearVelocity = ship.getTargetVelocity()
		else :
			shipTargetLinearVelocity = null
		
		var sf = clamp(delta * accelerationSmoothing, 0, 1)
		shipAngularAccelerationSmoothed = shipAngularAccelerationSmoothed * (1 - sf) + shipAngularAcceleration * sf
		shipLinearAcceleraionSmoothed = shipLinearAcceleraionSmoothed * (1 - sf) + shipLinearAcceleration * sf
		Tool.release(ship)
		
	if Tool.claim(ship):
		ship.aiExpose = ai
		if ship.autopilotTargetSweep != null:
			addSweepVector(ship.autopilotTargetSweep)
		else :
			addSweepVector(Vector2(0, 0))
		Tool.release(ship)
		
	refreshCounter += delta
	if refreshCounter > (1.0 / refreshRate):
		refreshCounter = 0.0
		processBusyAutopilotFunctions(1.0 / refreshRate)
	else :
		return 

func processBusyAutopilotFunctions(delta:float):
	busy.lock()
	var colwar = false
	var boresight = false
	var ai = false
	match autopilotType:
		"SYSTEM_AUTOPILOT_BLI":
			boresight = true
		"SYSTEM_AUTOPILOT_MK3":
			colwar = true
			boresight = true
		"SYSTEM_AUTOPILOT_MK4":
			ai = true
	if ship.forceHudFeature.get("boresight", false):
		boresight = true
	contrast = ship.forceHudFeature.get("contrast", contrast)
		
	if ai and Tool.claim(ship):
		aiPaths = ship.aiPaths
		prepareAiAwareness(delta)
		prepareAiSpikes(delta)
		Tool.release(ship)

	if colwar and Tool.claim(ship):
		if ship.isPlayerControlled():
			hitWarning = ship.getPendingCollision(20000)
		else :
			hitWarning = null
		Tool.release(ship)
	else :
		hitWarning = null
		
	if boresight and Tool.claim(ship):
		if ship.isPlayerControlled() or ship.forceHud:
			boresightShapes = ship.getBoresightShapes()
		else :
			boresightShapes = []
		Tool.release(ship)
	else :
		boresightShapes = []
		
	busy.unlock()
