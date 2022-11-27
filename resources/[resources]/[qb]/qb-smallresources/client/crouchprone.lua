local crouched = false
local proned = false
crouchKey = 36
proneKey = 20

Citizen.CreateThread( function()
	while true do 
		Citizen.Wait( 5 )
		local ped = PlayerPedId()
		if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
			ProneMovement()
			DisableControlAction( 0, crouchKey, true ) 
			if ( not IsPauseMenuActive() ) then 
				if ( IsDisabledControlJustPressed( 0, crouchKey ) and not proned ) then 
					RequestAnimSet( "move_ped_crouched" )
                    RequestAnimSet("MOVE_M@TOUGH_GUY@")
					while ( not HasAnimSetLoaded( "move_ped_crouched" ) ) do 
						Citizen.Wait( 100 )
					end 		
                    while ( not HasAnimSetLoaded( "MOVE_M@TOUGH_GUY@" ) ) do 
                        Citizen.Wait( 100 )
                    end 
					if ( crouched and not proned ) then 
						ResetPedMovementClipset( ped )
						ResetPedStrafeClipset(ped)
                        SetPedMovementClipset( ped,"MOVE_M@TOUGH_GUY@", 0.5)
                        crouched = false 
                        Citizen.Wait(700)
                        TriggerEvent("dpemotes:client:ApplySavedWalkstyle")


					elseif ( not crouched and not proned ) then
						SetPedMovementClipset( ped, "move_ped_crouched", 0.65 )
						SetPedStrafeClipset(ped, "move_ped_crouched_strafing")
						crouched = true 
					end 
				end
			end
		else
			proned = false
			crouched = false
		end
	end
end)

function SetProned()
	ped = PlayerPedId()
	ClearPedTasksImmediately(ped)
	TaskPlayAnimAdvanced(ped, "move_crawl", "onfront_fwd", GetEntityCoords(ped), 0.0, 0.0, GetEntityHeading(ped), 1.0, 1.0, 1.0, 46, 1.0, 0, 0)
end

function ProneMovement()
	if proned then
		ped = PlayerPedId()
		if IsControlPressed(0, 32) or IsControlPressed(0, 33) then
			DisablePlayerFiring(ped, true)
		 elseif IsControlJustReleased(0, 32) or IsControlJustReleased(0, 33) then
		 	DisablePlayerFiring(ped, false)
		 end
		if IsControlJustPressed(0, 32) and not movefwd then
			movefwd = true
		    TaskPlayAnimAdvanced(ped, "move_crawl", "onfront_fwd", GetEntityCoords(ped), 1.0, 0.0, GetEntityHeading(ped), 1.0, 1.0, 1.0, 47, 1.0, 0, 0)
		elseif IsControlJustReleased(0, 32) and movefwd then
		    TaskPlayAnimAdvanced(ped, "move_crawl", "onfront_fwd", GetEntityCoords(ped), 1.0, 0.0, GetEntityHeading(ped), 1.0, 1.0, 1.0, 46, 1.0, 0, 0)
			movefwd = false
		end		
		if IsControlJustPressed(0, 33) and not movebwd then
			movebwd = true
		    TaskPlayAnimAdvanced(ped, "move_crawl", "onfront_bwd", GetEntityCoords(ped), 1.0, 0.0, GetEntityHeading(ped), 1.0, 1.0, 1.0, 47, 1.0, 0, 0)
		elseif IsControlJustReleased(0, 33) and movebwd then 
		    TaskPlayAnimAdvanced(ped, "move_crawl", "onfront_bwd", GetEntityCoords(ped), 1.0, 0.0, GetEntityHeading(ped), 1.0, 1.0, 1.0, 46, 1.0, 0, 0)
		    movebwd = false
		end
		if IsControlPressed(0, 34) then
			SetEntityHeading(ped, GetEntityHeading(ped)+2.0 )
		elseif IsControlPressed(0, 35) then
			SetEntityHeading(ped, GetEntityHeading(ped)-2.0 )
		end
	end
end
