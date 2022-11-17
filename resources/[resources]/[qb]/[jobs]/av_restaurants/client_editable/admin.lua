if Config.UsingOldESX then 
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
end

RegisterNetEvent('av_restaurant:adminMenu')
AddEventHandler('av_restaurant:adminMenu', function()
    local menu = {
        {
            header = "AV Restaurants",
            isMenuHeader = true,
        },
        {
            header = "Create Zone",
            txt = "Create a new restaurant zone.",
            params = {
                event = "av_restaurant:create",
                args = {
                }
            }
        },
        {
            header = "Edit Zone",
            txt = "Edit an existent restaurant zone.",
            params = {
                event = "av_restaurant:edit",
                args = {
                }
            }
        },
    }
    openMenu(menu)
end)

AddEventHandler('av_restaurant:edit', function()
    TriggerServerEvent('av_restaurant:getData')
end)

RegisterNetEvent('av_restaurant:listZones')
AddEventHandler('av_restaurant:listZones', function(data)
    local items = {{
        header = "AV Restaurants",
        isMenuHeader = true
    }}
    local jobs = {}
    local added = {}
    for k, v in pairs(data) do
        jobs[v['job']] = jobs[v['job']] or {}
        jobs[v['job']][k] = v
        if not added[v['job']] then
            items[#items+1] = {
                header = "Store: "..v['job'],
                txt = "Edit this store zones.",
                params = {
                    event = "av_restaurant:listZones2",
                    args = {
                        job = v['job'],
                        data = data
                    }
                }
            }
            added[v['job']] = true
        end
    end
    items[#items+1] = {
        header = "← Go Back",
        params = {
            event = "av_restaurant:adminMenu",
            args = {
            }
        }
    }
    openMenu(items)
end)

RegisterNetEvent('av_restaurant:listZones2')
AddEventHandler('av_restaurant:listZones2', function(args)
    local data = args['data']
    local job = args['job']
    local items = {{
        header = "AV Restaurants",
        isMenuHeader = true
    }}
    for k, v in pairs(data) do 
        if job == v['job'] then
            items[#items+1] = {
                header = "Job: "..v['job'],
                txt = "Type: "..v['type'],
                params = {
                    event = "av_restaurant:editZone",
                    args = {
                        zone = v
                    }
                }
            }
        end
    end
    items[#items+1] = {
        header = "← Go Back",
        params = {
            isServer = true,
            event = "av_restaurant:getData",
            args = {
            }
        }
    }
    openMenu(items)
end)

RegisterNetEvent('av_restaurant:editZone')
AddEventHandler('av_restaurant:editZone', function(data)
    local info = data['zone']
    local menu = {
        {
            header = "Edit Zone",
            isMenuHeader = true,
        },
        {
            header = "TP to Coords",
            txt = "Teleport to "..round(info['coords']['x'],1)..", "..round(info['coords']['y'],1)..", "..round(info['coords']['z'],1),
            params = {
                event = "av_restaurant:teleport",
                args = {
                    coords = info['coords'],
                    zones = data
                }
            }
        }, 
        {
            header = "Delete Zone",
            txt = "You cannot undo this.",
            params = {
                isServer = true,
                event = "av_restaurant:delete",
                args = {
                    name = info['name'],
                    coords = info['coords']
                }
            }
        }
    }
    openMenu(menu)
end)