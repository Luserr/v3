----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.CoreSettings.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

-- Event to open menu
RegisterNetEvent('boii-whitewidow:client:AccessGarage', function(data)
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
            header = Language.Locations.Garage['rentheader'],
            icon = Language.Locations.Garage['rentheadericon'],
            isMenuHeader = true
        },
        {
            header = Language.Locations.Garage['rentmenuheader'],
            txt = Language.Locations.Garage['rentmenutext'],
            icon = Language.Locations.Garage['rentmenuicon'],
            params = {
                event = "boii-whitewidow:client:RentVehicle",
				args = 1
            }
        },
        {
            header = Language.Shared['exitmenu'],
            icon = Language.Shared['exitmenuicon'],
            params = {
                event = "boii-whitewidow:client:StopMenu"
            }
        },
    })
end 
function ReturnVehicle()
    exports[MenuName]:openMenu({
		{
            header = Language.Locations.Garage['rentheader'],
            icon = Language.Locations.Garage['rentheadericon'],
            isMenuHeader = true
        },
		{
            header = Language.Locations.Garage['returnmenuheader'],
            txt = Language.Locations.Garage['returnmenutext'],
            icon = Language.Locations.Garage['returnmenuicon'],
            params = {
                event = "boii-whitewidow:client:ReturnVehicle",
				args = 1
            }
        },
        {
            header = Language.Shared['exitmenu'],
            icon = Language.Shared['exitmenuicon'],
            params = {
                event = "boii-whitewidow:client:StopMenu"
            }
        },
    })
end