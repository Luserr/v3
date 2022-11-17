local QBCore = exports['qb-core']:GetCoreObject();

local locations = Shared.Locations[math.random(#Shared.Locations)]

local reward = Shared.RewardsItem

local vehiclecode = 'stockade'

local deliverystarted = false

local isnear = false

local neardropoff = false

local available = true

local constant = 0

AddEventHandler('onResourceStart', function(resourceName)
  if GetCurrentResourceName() == resourceName then 
    pedSpawn()
  end
end)

AddEventHandler('onResourceStop', function(resourceName)
  if GetCurrentResourceName() == resourceName then 
    pedRemove()
  end
end)

Citizen.CreateThread(function()
  while constant <= 3 do
    Wait(6000)
  end
  if constant >= 4 then
    constant = 0
  end
end)

function pedSpawn()
  RequestModel('u_m_m_aldinapoli')
  while not HasModelLoaded('u_m_m_aldinapoli') do 
    Wait(100)
  end
  firstped = CreatePed(1, 'u_m_m_aldinapoli', 1704.2124, 3845.7126, 34.933917, 92.118095, true, false)
end

function pedRemove()
  DeletePed(firstped)
  DeleteEntity(firstped)
end

RegisterNetEvent('headbag:client:Start')
AddEventHandler('headbag:client:Start', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    constant = constant + 1
    name = PlayerData.name
    cid = PlayerData.citizenid
    license = PlayerData.license
    TriggerEvent('romoy_headbag:client:UpdateTable', constant, name, 'Head Bag', "In Progress By CitizenID "..cid, 'In Progress')
    TriggerServerEvent('romoy_headbag:server:AvailabilityDecide', license, cid, 1, 1)
    RequestModel(vehiclecode)
    while not HasModelLoaded(vehiclecode) do
        Wait(1000)
    end
    RequestModel('s_m_m_fibsec_01')
    while not HasModelLoaded('s_m_m_fibsec_01') do
        Wait(1000)
    end
    if deliverystarted == false then
      available = false
    QBCore.Functions.SpawnVehicle(vehiclecode, function(veh)
        SetVehicleDoorsLocked(veh, true)
        SetVehicleNumberPlateText(veh, 'HEADBAG')
        local guard1 = CreatePedInsideVehicle(veh, 1, 's_m_m_fibsec_01', -1, true, false)
        local guard2 = CreatePedInsideVehicle(veh, 1, 's_m_m_fibsec_01', 0, true, false)
        SetPedArmour(guard1, 100)
        SetPedArmour(guard2, 100)
        SetPedAsEnemy(guard1, true)
        SetPedAsEnemy(guard2, true)
        TriggerServerEvent("inventory:server:addTrunkItems", QBCore.Functions.GetPlate(veh), reward)
        TriggerServerEvent('qb-log:server:CreateLog', 'robbing', 'Head Bag Delivery Started', 'blue', string.format('** '..name..'** **(citizenid: '..cid..'** Started a Head Bag Delivery', true))
        vehcoords = GetEntityCoords(veh)
        dvehicle = veh
    end, locations, true)
    SetNewWaypoint(vehcoords.x, vehcoords.y)
    QBCore.Functions.Notify('Delivery Vehicle is marked on your location', 'primary')
    deliverystarted = true
    --print(pdistance)
    while isnear == false do
      Wait(1000)
      --print(pdistance)
      local coordsd = GetEntityCoords(PlayerPedId())
      pdistance = #(coordsd - vehcoords)
      if pdistance <= 3.0 then
        isnear = true
      end
    end
    if isnear == true then
      TriggerEvent('headbag:client:DeliverTruck', dvehicle)
    end
else
    QBCore.Functions.Notify('You have already started a delivery', 'error')
end
end)

exports['qb-target']:AddTargetModel('u_m_m_aldinapoli', { 
      options = { 
        { 
          type = "client", 
          event = "romoy_headbag:client:ShowUI", 
          icon = 'fas fa-laptop',
          label = 'Get Delivery Location', 
        }
      },
      distance = 1.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
    }
  )

RegisterNetEvent('headbag:client:DeliverTruck')
AddEventHandler('headbag:client:DeliverTruck', function(vehicle)
    local dlocation = Shared.DeliveryLocation[math.random(#Shared.DeliveryLocation)]
    QBCore.Functions.Notify('Take the loot from the trunk and drop the truck off to finish job', 'primary')
    SetNewWaypoint(dlocation.x, dlocation.y)
    while neardropoff == false do
      Wait(1000)
      local pcoords = GetEntityCoords(PlayerPedId())
      local distance = #(pcoords - dlocation)
      if distance <= 10 then
        neardropoff = true
      end
    end
    if neardropoff == true then
        QBCore.Functions.Notify('Break down the truck', 'primary')
        truckBreakDown('start')
   end
end)

RegisterCommand('headbagdebug', function()
  print(available)
end)

RegisterNetEvent('romoy_headbag:client:TruckBreakDown', function()
  local PlayerData = QBCore.Functions.GetPlayerData()
  local namne = PlayerData.name
  local cid = PlayerData.citizenid
  LocalPlayer.state:set('inv_busy', true, true)
  QBCore.Functions.Progressbar('truckbreakdown', 'Breaking Down Truck', 5000, false, true, { -- Name | Label | Time | useWhileDead | canCancel
      disableMovement = true,
      disableCarMovement = true,
      disableMouse = false,
      disableCombat = true,
  }, {
      animDict = 'anim@gangops@facility@servers@',
      anim = 'hotwire',
      flags = 8,
  }, {}, {}, function() -- Play When Done
    LocalPlayer.state:set('inv_busy', false, true)
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
      truckBreakDown('end')
      TriggerServerEvent('qb-smallresources:server:AddItem', 'steel', 15)
      TriggerServerEvent('qb-smallresources:server:AddItem', 'iron', 15)
      TriggerServerEvent('qb-smallresources:server:AddItem', 'copper', 15)
      TriggerServerEvent('qb-smallresources:server:AddItem', 'plastic', 15)
      TriggerEvent("inventory:client:ItemBox", 'steel', "add")
      TriggerEvent("inventory:client:ItemBox", 'iron', "add")
      TriggerEvent("inventory:client:ItemBox", 'copper', "add")
      TriggerEvent("inventory:client:ItemBox", 'plastic', "add")
      QBCore.Functions.DeleteVehicle(dvehicle)
      QBCore.Functions.Notify('Truck Broken Down', 'success')
      TriggerServerEvent('qb-log:server:CreateLog', 'robbing', 'Head Bag Delivery Completed', 'blue', string.format('** '..name..'** **(citizenid: '..cid..'** Completed the Head Bag Delivery', true))
     deliverystarted = false
     neardropoff = false
      isnear = false
      available = true
      TriggerEvent('romoy_headbag:client:UpdateTable', constant, name, 'Head Bag', "Completed By CitizenID "..cid, 'Completed')
      print('Resetting Table in 6 Seconds')
      Wait(6000)
      TriggerEvent('romoy_headbag:client:UpdateTable', constant, 'N/A', 'N/A', "N/A", 'N/A')
      TriggerServerEvent('romoy_headbag:server:Availability')
  end, function() -- Play When Cancel
    LocalPlayer.state:set('inv_busy', false, true)
    QBCore.Functions.Notify('Cancelled...', 'error')
  end)
end)

RegisterNetEvent('romoy_headbag:client:UpdateTable', function(integer, name, type, progress, status)
  SendNUIMessage({
    info = {
      action = 'update',
      number = tonumber(integer),
      name = name,
      type = type,
      progress = progress,
      status = status,
    }
  })
end)

function truckBreakDown(type)
  if type == 'start' then
    exports['qb-target']:AddBoxZone('headbagtruck', vector3(-43.43075, 1959.9876, 190.35333), 1, 1, {
        name='headbagtruck',
        heading=57.45,
        debugPoly=false,
        minZ = 188.04,
        maxZ = 192.64,
        }, {
            options = {
                {
                    type = 'client',
                    event = 'romoy_headbag:client:TruckBreakDown',
                    icon = 'fas fa-user',
                    label = 'Break Down Truck',
                },
            },
        distance = 1.5
    })
else
  if type == 'end' then
    exports['qb-target']:RemoveZone('headbagtruck')
  end
  end
end

RegisterNetEvent('romoy_headbag:client:ShowUI', function()
  TriggerEvent('animations:client:EmoteCommandStart', {"tablet"})
  SetNuiFocus(true, true)
   if available then
    SendNUIMessage({
      type = 'open',
      available = true,
      info = "Deliveries Available"
    })
  else
    SendNUIMessage({
      type = 'open',
      available = true,
      info = "No Deliveries Available"
    })
  end
end)

RegisterNUICallback('Accept', function(data, cb)
  SetNuiFocus(false, false)
  TriggerEvent('romoy_headbag:client:PreDelivery')
  TriggerEvent('animations:client:EmoteCommandStart', {"c"})
  return
end)

RegisterNUICallback('Cancel', function(data, cb)
SetNuiFocus(false, false)
TriggerEvent('emotecancelll')
return
end)

RegisterNUICallback('CloseUI', function(data, cb)
  TriggerEvent('animations:client:EmoteCommandStart', {"c"})
  SetNuiFocus(false, false)
  SendNUIMessage({
    type = 'close'
  })
end)

RegisterNetEvent('emotecancelll', function()
  TriggerEvent('animations:client:EmoteCommandStart', {"c"})
end)

RegisterNetEvent('romoy_headbag:client:AvailabilitySet', function(bool)
  if bool == true then
    available = true
    print('Changed to True')
  else
    available = false
    print('Changed to False')
  end
end)

RegisterNetEvent('romoy_headbag:client:PreDelivery', function()
  local PlayerData = QBCore.Functions.GetPlayerData()
  local spawn = Shared.PedLocations[math.random(#Shared.PedLocations)]
  print(spawn.x)
  if available  and constant <= 3 then 
    TriggerEvent('headbag:client:Start')
    exports['qb-phone']:PhoneNotification('Sketchy Dude', 'The Location of the dude you need to talk has been premarked for you', icon, 'blue', 10000, true, false)
  else
    QBCore.Functions.Notify('No Robberies Available at this time', 'error')
  end
end)

RegisterNetEvent('romoy_headbag:client:TimeOut', function(time)
  SendNUIMessage({
    timeout = true,
    duration = 60 * tonumber(time)
  })
end)
