--FILE EDITED BY SPJESTER
-- Note: Custom Sound System for Tornado, Added Siren Sound
local IsTornadoActive = false

x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(source), 5.0, 8.0, 1.0))
heading = GetEntityHeading(PlayerPedId(source)+90, 1, 0)
Citizen.CreateThread(function()
    local Script = MainScript:new()
    Script:MainScript()
    IsTornadoActive = false
    local Tornado = nil


    RegisterNetEvent("tornado:spawn")
    AddEventHandler("tornado:spawn", function(pos, dest)
	TriggerServerEvent("alert:sv", "National Weather Service", "A tornado on the ground has been spotted! Get Indoors! Seek shelter immediately!!!")
	TriggerEvent('chat:addMessage', { color = { 255, 0, 0}, multiline = true, args = {"^2[NATIONAL WEATHER SERVICE]", "^1A tornado on the ground has been spotted!"} })
	TriggerEvent('chat:addMessage', { color = { 255, 0, 0}, multiline = true, args = {"^3[TORNADO WARNING!!]", "^5Get Indoors! Seek shelter immediately!!!"} })
        IsTornadoActive = true
		TriggerEvent('TORNADO_CL:Sound:PlayOnAll', 'siren', 0.5) -- if tornado is active then play tornado siren.
		pos = vec3(x,y,z)
        dest = vec3(x,y,z)
        Tornado = Script._factory:CreateVortex(pos)
        Tornado._position = pos
        Tornado._destination = dest
    end)

    RegisterNetEvent("tornado:setPosition")
    AddEventHandler("tornado:setPosition", function(pos)
        pos = vec3(pos.x, pos.y, pos.z)
        Tornado = Script._factory:CreateVortex(pos)
        Tornado._position = pos
    end)

    RegisterNetEvent("tornado:setDestination")
    AddEventHandler("tornado:setDestination", function(dest)
        dest = vec3(dest.x, dest.y, dest.z)
        Tornado = Script._factory:CreateVortex(dest)
        Tornado._destination = dest
    end)

    RegisterNetEvent("tornado:delete")
    AddEventHandler("tornado:delete", function()
	TriggerServerEvent("alert:sv", "National Weather Service", "The Tornado Warning has expired, the tornado has dissipated")
	TriggerEvent('chat:addMessage', { color = { 255, 0, 0}, multiline = true, args = {"^2[NATIONAL WEATHER SERVICE]", "^0The Tornado has now went back into the clouds!"} })
        IsTornadoActive = false
    end)

    while true do
        if IsTornadoActive and Tornado then
		Script:OnUpdate(GetGameTimer())
        else
            if Tornado then		
				Tornado._position = vec3(10000.0, 10000.0, 0.0)
                Script:OnUpdate(GetGameTimer())
                Tornado = nil
            end
        end
        Wait(15)
    end

end)


RegisterNetEvent("sendAcePermissionToClient")
AddEventHandler("sendAcePermissionToClient", function(state)
    isAdmin = state
end)

