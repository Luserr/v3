----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------
local Core = Config.Core

local ItemCheckEvent = Config.ItemCheckEvent

local SnakeFoodItem = Config.SnakeFoodItem
--<!>-- DO NOT EDIT ANYTHING BELOW THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--
local MenuName = Config.MenuName
--<!>-- DO NOT EDIT ANYTHING ABOVE THIS TEXT UNLESS YOU KNOW WHAT YOU ARE DOING SUPPORT WILL NOT BE PROVIDED IF YOU IGNORE THIS --<!>--

RegisterNetEvent('boii-billiardsbar:client:SnakeMenu', function(data)
    local player = PlayerPedId() 
    Core.Functions.TriggerCallback(ItemCheckEvent, function(HasItem)
	    if HasItem then
            FeedSnakeMenu()
        else
            GetSnakeFoodMenu()
        end
    end, SnakeFoodItem)
end)
function GetSnakeFoodMenu()
    exports[MenuName]:openMenu({
        {
            header = Language['snakeheader'],
            txt = Language['snakeheadertext'],
            isMenuHeader = true
        },
        {
            header = Language['snakefoodheader'],
            txt = Language['snakefoodheadertext'],
            params = {
                event = "boii-billiardsbar:client:FeedSnake",
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
function FeedSnakeMenu()
    exports[MenuName]:openMenu({
		{
            header = Language['snakeheader'],
            txt = Language['snakeheadertext'],
            isMenuHeader = true
        },
		{
            header = Language['feedsnakeheader'],
            txt = Language['feedsnakeheadertext'],
            params = {
                event = "boii-billiardsbar:client:FeedSnake",
				args = 2
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