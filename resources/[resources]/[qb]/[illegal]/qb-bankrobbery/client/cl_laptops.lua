-- This file configures the laptop ped qb-target exports and corresponding events to purchase laptops for USBs.

local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-bankrobbery:client:BuyGreenLaptop', function()
        if exports['qb-inventory']:HasItem("usb_green") then 
            TriggerServerEvent('qb-bankrobbery:server:BuyLaptop', 1)
        else
            QBCore.Functions.Notify("You are missing something..", "error", 2500)
        end
end)

RegisterNetEvent('qb-bankrobbery:client:BuyBlueLaptop', function()
        if exports['qb-inventory']:HasItem("usb_blue") then 
            TriggerServerEvent('qb-bankrobbery:server:BuyLaptop', 2)
        else
            QBCore.Functions.Notify("You are missing something..", "error", 2500)
        end
end)

RegisterNetEvent('qb-bankrobbery:client:BuyRedLaptop', function()
        if exports['qb-inventory']:HasItem("usb_red") then 
            TriggerServerEvent('qb-bankrobbery:server:BuyLaptop', 3)
        else
            QBCore.Functions.Notify("You are missing something..", "error", 2500)
        end
end)

RegisterNetEvent('qb-bankrobbery:client:BuyGoldLaptop', function()
        if exports['qb-inventory']:HasItem("usb_gold") then 
            TriggerServerEvent('qb-bankrobbery:server:BuyLaptop', 4)
        else
            QBCore.Functions.Notify("You are missing something..", "error", 2500)
        end
end)

CreateThread(function()
    exports['qb-target']:AddBoxZone("greenLaptop", vector3(517.44, 174.29, 100.25), 0.5, 0.5, {
        name = "greenLaptop",
        heading = 159.45,
        debugPoly = false,
        minZ = 99.25,
        maxZ = 101.05,
        }, {
            options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:BuyGreenLaptop",
                icon = 'fas fa-hand-holding',
                label = 'Offer Item',
                item = "usb_green"
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddBoxZone("blueLaptop", vector3(-458.65, -2274.4, 8.52), 0.5, 0.5, {
        name = "blueLaptop",
        heading = 266.45,
        debugPoly = false,
        minZ = 7.52,
        maxZ = 9.32,
        }, {
            options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:BuyBlueLaptop",
                icon = 'fas fa-hand-holding',
                label = 'Offer Item',
                item = "usb_blue"
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddBoxZone("redLaptop", vector3(1579.43, 3617.83, 38.78), 0.5, 0.5, {
        name = "redLaptop",
        heading = 166.87,
        debugPoly = false,
        minZ = 37.78,
        maxZ = 39.58,
        }, {
            options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:BuyRedLaptop",
                icon = 'fas fa-hand-holding',
                label = 'Offer Item',
                item = "usb_red"
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddBoxZone("goldLaptop", vector3(-1600.27, 3070.47, 33.66), 0.5, 0.5, {
        name = "goldLaptop",
        heading = 137.83,
        debugPoly = false,
        minZ = 32.66,
        maxZ = 34.46,
        }, {
            options = { 
            {
                type = "client",
                event = "qb-bankrobbery:client:BuyGoldLaptop",
                icon = 'fas fa-hand-holding',
                label = 'Offer Item',
                item = "usb_gold"
            }
        },
        distance = 1.5,
    })
    exports['qb-target']:AddBoxZone("greyLaptop", vector3(-3169.54, 1093.57, 20.86), 0.5, 0.5, {
        name = "greyLaptop",
        heading = 27.67,
        debugPoly = false,
        minZ = 19.86,
        maxZ = 21.66,
        }, {
            options = { 
            {
                type = "server",
                event = "qb-bankrobbery:server:BuyGreyUsb",
                icon = 'fas fa-hand-holding',
                label = 'Purchase USB'
            }
        },
        distance = 1.5,
    })
end)