QBCore = exports['qb-core']:GetCoreObject()


CreateThread(function()
    exports['qb-target']:AddBoxZone("Checkableness", vector3(-537.95, -205.84, 37.65), 1.2, 1, {
        name = "Checkableness",
        heading = 30,
        minZ=33.85,
        maxZ=37.85,
    }, {
        options = {
            {
              event = "nc-gardening:startwork",
              icon = Lang.workicon,
              label = Lang.getwork,
            },
            {
                event = 'nc-gardening:client:payment',
                icon = Lang.paymenticon,
                label = Lang.paymentlabel,
            }
        },
        distance = 1.5
    })
end)
