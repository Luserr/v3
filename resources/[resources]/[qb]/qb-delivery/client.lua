PLT = nc_delivery
U = PLT.U
local blip 
local imOnOrder
playerPedId = 0
playerCoord = vector3(0.0,0.0,0.0)

--[[ RegisterKeyMapping('openDelivery', 'EopenDelivery', 'keyboard', 'F2') ]]

-- RegisterCommand("openDelivery", function(source, args, rawCommand)
-- 	TriggerEvent("nc_delivery:TakeOrders")
-- end, false)

RegisterCommand("closeDelivery", function(source, args, rawCommand)
	SetNuiFocus(false, false) 
	SendNUIMessage({show = false})
	TriggerServerEvent("nc_delivery:ImTurnoffui")
end, false)

RegisterNetEvent('nc_delivery:TakeOrders')
AddEventHandler('nc_delivery:TakeOrders', function()
	TriggerServerEvent("nc_delivery:SendMeOrders")
end)

RegisterNetEvent('nc_delivery:OpenOrders')
AddEventHandler('nc_delivery:OpenOrders', function(data,now)
	local Orders = {}
	for k,v in pairs(data) do
		local streetName , crossingRoad = GetStreetNameAtCoord(v.coord.x,v.coord.y,v.coord.z)
		local dist = math.floor(GetDistanceBetweenCoords(v.coord.x,v.coord.y,v.coord.z,GetEntityCoords(PlayerPedId()),true))
		local x = v
		x.adres = GetStreetNameFromHashKey(streetName)
		x.distance = dist.."m."
		x.totalPrice = v.amount*PLT.DeliveryItems[v.name].price.."$"
		table.insert(Orders,x)
	end
	SetNuiFocus(true, true) 
 	SendNUIMessage({
		orders = Orders,
		time = now,
		show = true,
		plysrc = GetPlayerServerId(PlayerId()),
	})  
end)

RegisterNUICallback('action', function(data, cb)
	if data.event == "takeOrder" then 
		TriggerServerEvent("nc_delivery:CanIOrder",data.orderId)
		SetNuiFocus(false, false) 
		SendNUIMessage({show = false})  
	elseif data.event == "cancelOrder" then
		imOnOrder = false
		TriggerServerEvent("nc_delivery:CancelOrder",data.orderId)
	elseif data.event == "showLocation" then
		SetNuiFocus(false, false) 
		SendNUIMessage({show = false})  
		TriggerServerEvent("nc_delivery:GetMeCoordForshow",data.orderId)
	elseif data.event == "close" then
		SetNuiFocus(false, false) 
		SendNUIMessage({show = false})  
		TriggerServerEvent("nc_delivery:ImTurnoffui")
	elseif data.event == "orderNotify" then
		TriggerServerEvent("nc_delivery:NewOrderNotify",data.value)
	end
end)

RegisterNetEvent('nc_delivery:ShowCoords')
AddEventHandler('nc_delivery:ShowCoords', function(coord)
	SetNewWaypoint(coord.x,coord.y)
	ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_MP_PAUSE"),true,-1)
end)

RegisterNetEvent('nc_delivery:TakeOrders')
AddEventHandler('nc_delivery:TakeOrders', function()
	TriggerServerEvent("nc_delivery:SendMeOrders")
end)
RegisterNetEvent('nc_delivery:CancelOrder')
AddEventHandler('nc_delivery:CancelOrder', function()
	imOnOrder = false
end)

RegisterNetEvent('nc_delivery:GetOrder')
AddEventHandler('nc_delivery:GetOrder', function(info)
	imOnOrder = true
	playerPedId = PlayerPedId()
	SetNewWaypoint(info.coord.x,info.coord.y)
	SetBlip(info.coord)
	local streetName , crossingRoad = GetStreetNameAtCoord(info.coord.x,info.coord.y,info.coord.z)
	local address = GetStreetNameFromHashKey(streetName)
	while imOnOrder do Citizen.Wait(0)
		playerToDoor = GetDistanceBetweenCoords(GetEntityCoords(playerPedId), info.coord, true)
		if playerToDoor < 3 then 
			TaskGoStraightToCoord(playerPedId, info.coord.x, info.coord.y, info.coord.z, 1.0, 7500, info.coord.w, 0.5)
			local rSayi = 0 while not (GetDistanceBetweenCoords(GetEntityCoords(playerPedId), info.coord, true) < 0.2 ) do Citizen.Wait(100)  rSayi = rSayi + 1 if rSayi > 85 then break end end 
			while not HasAnimDictLoaded("timetable@jimmy@doorknock@") do RequestAnimDict("timetable@jimmy@doorknock@"); Citizen.Wait(0); end
			TaskPlayAnim( playerPedId, "timetable@jimmy@doorknock@", "knockdoor_idle", 8.0, 8.0, -1, 4, 0, 0, 0, 0 )     
			while IsEntityPlayingAnim(playerPedId, "timetable@jimmy@doorknock@", "knockdoor_idle", 3) do Citizen.Wait(0); end     
			TriggerServerEvent('nc_delivery:Delivey', info)
			RemoveBlip(blip)
			imOnOrder = false
		elseif playerToDoor > 50 then 
			playerPedId = PlayerPedId()
			Citizen.Wait(1000)
		else
			DrawText3Ds(info.coord.x,info.coord.y,info.coord.z, 0.35, 0.35,   "~b~[~y~- ~r~ "..address.."  Delivery Point ~y~-~b~]")
			DrawMarker(6,info.coord.x,info.coord.y,info.coord.z-0.99,0.0, 0.0, 0.0,-90,-90,-90, 0.75,0.75,0.75,255,0.0,0.0,100,false, true, 2, false, false, false, false)  
		end
	end
	RemoveBlip(blip)
end)

function SecondsToClock(seconds) local seconds = tonumber(seconds)
	if seconds <= 0 then return false else
		local day = string.format("%01.f", math.floor(seconds/86400))
		local hours = string.format("%02.f", math.floor(seconds/3600 - (day*24)));
		local mins = string.format("%02.f", math.floor(seconds/60 - (hours*60) - (day*24*60)));
		local secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins*60 - (day*24*3600) ));
		if day == "0"  and hours == "00" then return mins..":"..secs
		elseif day == "0" then return hours..":"..mins..":"..secs
		else return day.." day"..hours..":"..mins..":"..secs
		end
	end
end

function SetBlip(coord)
	if blip then RemoveBlip(blip) end
	blip = AddBlipForCoord(coord)
	SetBlipSprite               (blip, 1)
	SetBlipScale                (blip, 0.7)
	SetBlipColour               (blip, 16742399)
	BeginTextCommandSetBlipName ("STRING")
	AddTextComponentString      (U["blip_name"])
	EndTextCommandSetBlipName   (blip)
end

function DrawText3Ds(x,y,z, sx, sy, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())
	SetTextScale(sx, sy)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 500
	DrawRect(_x,_y+0.0125, 0.0002+ factor, 0.025, 0, 0, 0, 50)
end	

function singleNotify(type,msg,time)
	exports['mythic_notify']:DoCustomHudText(type,msg,time)
end

RegisterNetEvent('nc_delivery:SendNotify')
AddEventHandler('nc_delivery:SendNotify', function(type, message, time)
	singleNotify(type, message, time)
end)

Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("Delivery", vector3(474.78, -1457.01, 29.29), 2.1, 2.1, {
        name="Delivery",
        heading=0,
        debugPoly=false,
        minZ = 28.34,
        maxZ = 30.34,
        }, {
            options = {
                {
                    type = "client",
                    event = "nc_delivery:TakeOrders",
                    icon = "fas fa-shipping-fast",
                    label = "Open Delivery List",
                },
            },
            distance = 3.5
    })
end)
