-- This file handles freezing and position of bank vault doors by looking if the bank is hacked or closed by LEO's

RegisterNetEvent('qb-bankrobbery:client:PDClose', function(bank)
    Config.Banks[bank].policeClose = not Config.Banks[bank].policeClose
end)

CreateThread(function()
    while true do
        Wait(2000)
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)
        for k, v in pairs(Config.Banks) do
            if v.type == 'fleeca' then
                if #(pos - v.coords) < 10 then
                    if not v.policeClose and v.hacked then
                        local object = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 5.0, v.object, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, v.heading.open)
                            FreezeEntityPosition(object, true)
                        end
                    else
                        local object = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 5.0, v.object, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, v.heading.closed)
                            FreezeEntityPosition(object, true)
                        end
                    end
                end
            elseif v.type == 'paleto' then
                if #(pos - v.coords) < 25 then
                    if not v.policeClose and v.hacked then
                        local object = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 5.0, v.object, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, v.heading.open)
                            FreezeEntityPosition(object, true)
                        end
                    else
                        local object = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 5.0, v.object, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, v.heading.closed)
                            FreezeEntityPosition(object, true)
                        end
                    end
                end
            elseif v.type == 'pacific' then
                if #(pos - v.coords) < 15 then
                    if not v.policeClose and v.hacked then
                        local object = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 5.0, v.object, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, v.heading.open)
                            FreezeEntityPosition(object, true)
                        end
                    else
                        local object = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 5.0, v.object, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, v.heading.closed)
                            FreezeEntityPosition(object, true)
                        end
                    end
                end
            elseif v.type == 'vault' then
                if #(pos - v.coords) < 15 then
                    if not v.policeClose and v.hacked then
                        local object = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 5.0, v.object, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, v.heading.open)
                            FreezeEntityPosition(object, true)
                        end
                    else
                        local object = GetClosestObjectOfType(v.coords.x, v.coords.y, v.coords.z, 5.0, v.object, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, v.heading.closed)
                            FreezeEntityPosition(object, true)
                        end
                    end
                end
                -- Vault door
                if #(pos - vector3(263.02, 258.14, 101.71)) < 15 then
                    if not v.code then
                        local object = GetClosestObjectOfType(263.02, 258.14, 101.71, 3.0, 1008631277, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, 340.00)
                            FreezeEntityPosition(object, true)
                        end
                    else
                        local object = GetClosestObjectOfType(263.02, 258.14, 101.71, 3.0, 1008631277, false, false, false)
                        if object ~= 0 then
                            SetEntityHeading(object, 90.00)
                            FreezeEntityPosition(object, true)
                        end
                    end
                end
            end
        end
    end
end)