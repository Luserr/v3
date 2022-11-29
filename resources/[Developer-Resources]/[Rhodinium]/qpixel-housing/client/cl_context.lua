MenuData = {
    property_check = {
        {
            title = "Property",
            description = "Forfeit Property",
            children = {
                { title = "Yes", action = "caue-housing:handler", params = { forfeit = true, type = "forfeit"} },
                { title = "No", action = "caue-housing:handler", params = { forfeit = false, type = "forfeit" } },
            }
        }
    },
    crafting_check = {
        {
            title = "Crafting",
            description = "Remove Inventory",
            children = {
                { title = "Yes", action = "caue-housing:handler", params = { remove = true, type = "removeInv"} },
                { title = "No", action = "caue-housing:handler", params = { remove = false, type = "removeInv" } },
            }
        }
    },
    inventory_check = {
        {
            title = "Inventory",
            description = "Remove Crafting",
            children = {
                { title = "Yes", action = "caue-housing:handler", params = { remove = true, type = "removeCraft"} },
                { title = "No", action = "caue-housing:handler", params = { remove = false, type = "removeCraft" } },
            }
        }
    }
}
