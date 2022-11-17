local PolyZoneHooks, ActiveInteractions = {}, {}

function AddPolyZoneHook(pZone, pCallbacks)
    PolyZoneHooks[pZone] = pCallbacks
end

function RemovePolyZoneHook(pZone)
    PolyZoneHooks[pZone] = nil
end

function PolyZoneInteraction(pZone, pText, pKey, pAction)
    AddPolyZoneHook(pZone, {
        enter = function(data)
            if ActiveInteractions[pZone] then return end

            ActiveInteractions[pZone] = true

            exports['qpixel-interface']:showInteraction(pText);

            Citizen.CreateThread(function ()
                local keys = type(pKey) == 'table' and pKey or { pKey }

                while ActiveInteractions[pZone] do
                    for _, key in ipairs(keys) do
                        if IsControlJustReleased(0, key) then
                            pAction(data, key)
                        end
                    end
                    Citizen.Wait(0)
                end
            end)
        end,
        exit = function()
            exports['qpixel-ui'].hideInteraction();

            ActiveInteractions[pZone] = false
        end
    })
end

AddEventHandler('qpixel-polyzone:enter', function(zone, data)
    if not PolyZoneHooks[zone] then return end

    PolyZoneHooks[zone]['enter'](data)
end)

AddEventHandler('qpixel-polyzone:exit', function(zone, data)
    if not PolyZoneHooks[zone] then return end

    PolyZoneHooks[zone]['exit']()
end)