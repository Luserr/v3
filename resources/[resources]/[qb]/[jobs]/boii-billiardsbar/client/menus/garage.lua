----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Event to open menu
RegisterNetEvent('boii-billiardsbar:client:GarageMenu', function(data)
    local player = PlayerPedId()
    local inVehicle = IsPedInAnyVehicle(player)
    if inVehicle then
        ReturnVehicle()
    else
        VehicleRentMenu()
    end
end)
function VehicleRentMenu()
    exports[MenuName]:openMenu({
        {
            header = Language['rentheader'],
            isMenuHeader = true
        },
        {
            header = Language['rentmenuheader'],
            txt = Language['rentmenutext'],
            params = {
                event = "boii-billiardsbar:client:RentVehicle",
				args = 1
            }
        },
        {
            header = Language['exitmenu'],
            params = {
                event = "boii-billiardsbar:client:StopMenu"
            }
        },
    })
end 
function ReturnVehicle()
    exports[MenuName]:openMenu({
		{
            header = Language['rentheader'],
            isMenuHeader = true
        },
		{
            header = Language['returnmenuheader'],
            txt = Language['returnmenutext'],
            params = {
                event = "boii-billiardsbar:client:ReturnVehicle",
				args = 1
            }
        },
        {
            header = Language['exitmenu'],
            params = {
                event = "boii-billiardsbar:client:StopMenu"
            }
        },
    })
end