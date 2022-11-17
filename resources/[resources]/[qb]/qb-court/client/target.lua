QBCore = exports['qb-core']:GetCoreObject()

local PlayerData = QBCore.Functions.GetPlayerData()

local cfg = Config.Target
local qbTarget = cfg['qb-target'].active
local qTarget = cfg['qtarget'].active

RegisterNetEvent('ap-court:notify')
AddEventHandler('ap-court:notify', function(msg)
	QBCore.Functions.Notify(msg)
end)

RegisterNetEvent('ap-court:target:getAppStatus', function()
	TriggerServerEvent('ap-court:getAppStatus')
end)

RegisterNetEvent('ap-court:target:getJuryStatus', function()
	TriggerServerEvent('ap-court:getJuryStatus')
end)

RegisterNetEvent('ap-court:target:getBarStatus', function()
	TriggerServerEvent('ap-court:getBarStatus')
end)

Citizen.CreateThread(function()
  local qbtargetcfg = cfg['qb-target']
  if Config.Interactions.qbTarget then
    if qbtargetcfg['bar'].active == true then
      exports['qb-target']:SpawnPed({
          model = qbtargetcfg['bar'].ped.model, 
          coords = qbtargetcfg['bar'].coords, 
          minusOne = qbtargetcfg['bar'].minusOne, 
          freeze = qbtargetcfg['bar'].freeze,
          invincible = qbtargetcfg['bar'].invincible, 
          blockevents = qbtargetcfg['bar'].blockevents, 
          target = { 
            options = { 
              { 
                type = "client",
                event = "ap-court:target:getBarStatus", 
                icon = 'fas fa-sign-in-alt',
                label = 'National Bar Association',
              }
            },
            distance = 2.5, 
          },
      })
    end
    if qbtargetcfg['court'].active == true then
      exports['qb-target']:SpawnPed({
          model = qbtargetcfg['court'].ped.model, 
          coords = qbtargetcfg['court'].coords, 
          minusOne = qbtargetcfg['court'].minusOne, 
          freeze = qbtargetcfg['court'].freeze,
          invincible = qbtargetcfg['court'].invincible, 
          blockevents = qbtargetcfg['court'].blockevents, 
          target = { 
            options = { 
              { 
                type = "client",
                event = "ap-court:client:courtCases", 
                icon = 'fas fa-sign-in-alt',
                label = 'Public Court Cases',
              },
              { 
                  type = "client",
                  event = "ap-court:target:getAppStatus", 
                  icon = 'fas fa-sign-in-alt',
                  label = 'Appointments',
              },
              { 
                  type = "client",
                  event = "ap-court:target:getJuryStatus", 
                  icon = 'fas fa-sign-in-alt',
                  label = 'Jury Service',
              }
            },
            distance = 2.5, 
          },
      })
    end
    if qbtargetcfg['juryCourt'].active == true then
      exports['qb-target']:AddBoxZone(qbtargetcfg['juryCourt'].boxzone.name, qbtargetcfg['juryCourt'].boxzone.coords, qbtargetcfg['juryCourt'].boxzone.length, qbtargetcfg['juryCourt'].boxzone.width, {
        name=qbtargetcfg['juryCourt'].boxzone.name,
        heading=qbtargetcfg['juryCourt'].boxzone.heading,
        debugPoly=qbtargetcfg['juryCourt'].boxzone.debugPoly, 
        minZ=qbtargetcfg['juryCourt'].boxzone.minZ,
        maxZ=qbtargetcfg['juryCourt'].boxzone.maxZ,
        }, {
          options = {
            {
                type = "client",
                event = "ap-court:client:verdictMenu",
                icon = "fas fa-sign-in-alt",
                label = "Give Verdict",
            },
          },
        distance = 2.5
      })
    end
    if qbtargetcfg['judge'].active == true then
      local input = {
        {
          type = "client",
          event = "ap-court:client:backgroundChecks",
          icon = "fas fa-sign-in-alt",
          label = "Background Checks",
          job = {[qbtargetcfg['judge'].job.name] = qbtargetcfg['judge'].job.grade}
        },
        {
          type = "client",
          event = "ap-court:client:barMembers",
          icon = "fas fa-sign-in-alt",
          label = "Members",
          job = {[qbtargetcfg['judge'].job.name] = qbtargetcfg['judge'].job.grade}
        },
        {
          type = "client",
          event = "ap-court:client:barDecMembers",
          icon = "fas fa-sign-in-alt",
          label = "Denied Applications",
          job = {[qbtargetcfg['judge'].job.name] = qbtargetcfg['judge'].job.grade}
        },
        {
          type = "client",
          event = "ap-court:client:judgeExamQuestions",
          icon = "fas fa-sign-in-alt",
          label = "Update Judge Exam",
          job = {[qbtargetcfg['judge'].job.name] = qbtargetcfg['judge'].job.grade}
        },
        {
          type = "client",
          event = "ap-court:client:appointmentRequests",
          icon = "fas fa-sign-in-alt",
          label = "Appointment Requests",
          job = {[qbtargetcfg['judge'].job.name] = qbtargetcfg['judge'].job.grade}
        },
        {
          type = "client",
          event = "ap-court:client:scheduledAppointments",
          icon = "fas fa-sign-in-alt",
          label = "Scheduled Appointments",
          job = {[qbtargetcfg['judge'].job.name] = qbtargetcfg['judge'].job.grade}
        },
        {
          type = "client",
          event = "ap-court:client:createCourtCase",
          icon = "fas fa-sign-in-alt",
          label = "Create Court Case",
          job = {[qbtargetcfg['judge'].job.name] = qbtargetcfg['judge'].job.grade}
        },
        {
          type = "client",
          event = "ap-court:client:caseConfigureMenu",
          icon = "fas fa-sign-in-alt",
          label = "Configure Court Cases",
          job = {[qbtargetcfg['judge'].job.name] = qbtargetcfg['judge'].job.grade}
        },
      }  
      if Config.CriminalRecordArchives == true then
        table.insert(input, {type = "client", event = "ap-court:client:criminalRecordArc", icon = "fas fa-sign-in-alt", label = "Search Archives", job = {[qbtargetcfg['judge'].job.name] = qbtargetcfg['judge'].job.grade}})
      end
      exports['qb-target']:AddBoxZone(qbtargetcfg['judge'].boxzone.name, qbtargetcfg['judge'].boxzone.coords, qbtargetcfg['judge'].boxzone.length, qbtargetcfg['judge'].boxzone.width, {
        name=qbtargetcfg['judge'].boxzone.name,
        heading=qbtargetcfg['judge'].boxzone.heading,
        debugPoly=qbtargetcfg['judge'].boxzone.debugPoly, 
        minZ=qbtargetcfg['judge'].boxzone.minZ,
        maxZ=qbtargetcfg['judge'].boxzone.maxZ,
        }, {
          options = input,
        distance = 2.5
      })
    end
    if qbtargetcfg['tableCourt'].active == true then
      exports['qb-target']:AddBoxZone(qbtargetcfg['tableCourt'].boxzone.name, qbtargetcfg['tableCourt'].boxzone.coords, qbtargetcfg['tableCourt'].boxzone.length, qbtargetcfg['tableCourt'].boxzone.width, {
        name=qbtargetcfg['tableCourt'].boxzone.name,
        heading=qbtargetcfg['tableCourt'].boxzone.heading,
        debugPoly=qbtargetcfg['tableCourt'].boxzone.debugPoly, 
        minZ=qbtargetcfg['tableCourt'].boxzone.minZ,
        maxZ=qbtargetcfg['tableCourt'].boxzone.maxZ,
        }, {
          options = {
            {
                type = "client",
                event = "ap-court:client:proManagement",
                icon = "fas fa-sign-in-alt",
                label = "Case Management",
                job = {[qbtargetcfg['tableCourt'].job.name] = qbtargetcfg['tableCourt'].job.grade},
            },
          },
        distance = 2.5
      })
    end
  end
end)

Citizen.CreateThread(function()
  local qtargetcfg = cfg['qtarget']
  if Config.Interactions.qTarget then
    if qtargetcfg['bar'].active == true then
      local hash = GetHashKey(qtargetcfg['bar'].ped.model)
  
      while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(0)
      end

      local sex = 0
      if qtargetcfg['bar'].ped.sex == 'male' then
        sex = 4
      elseif qtargetcfg['bar'].ped.sex == 'female' then
        sex = 5
      end
    
      local ent = CreatePed(sex, hash, qtargetcfg['bar'].coords.x, qtargetcfg['bar'].coords.y, qtargetcfg['bar'].coords.z, qtargetcfg['bar'].coords.h, false, false)
  
      FreezeEntityPosition(ent,true)
      TaskSetBlockingOfNonTemporaryEvents(ent,true)
      SetEntityInvincible(ent,true)

      exports['qtarget']:AddTargetModel({qtargetcfg['bar'].ped.model}, {
        options = {
            {
                event = "ap-court:target:getBarStatus",
                icon = "fas fa-sign-in-alt",
                label = "National Bar Association",
            },
        },
        distance = 2.5,
      })
    end
    if qtargetcfg['court'].active == true then
      local hash = GetHashKey(qtargetcfg['court'].ped.model)
  
      while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(0)
      end

      local sex = 0
      if qtargetcfg['court'].ped.sex == 'male' then
        sex = 4
      elseif qtargetcfg['court'].ped.sex == 'female' then
        sex = 5
      end
    
      local ent = CreatePed(sex, hash, qtargetcfg['court'].coords.x, qtargetcfg['court'].coords.y, qtargetcfg['court'].coords.z, qtargetcfg['court'].coords.h, false, false)
  
      FreezeEntityPosition(ent,true)
      TaskSetBlockingOfNonTemporaryEvents(ent,true)
      SetEntityInvincible(ent,true)

      exports['qtarget']:AddTargetModel({qtargetcfg['court'].ped.model}, {
        options = {
            {
                event = "ap-court:client:courtCases",
                icon = "fas fa-sign-in-alt",
                label = "Public Court Cases",
            },
            {
              event = "ap-court:target:getAppStatus",
              icon = "fas fa-sign-in-alt",
              label = "Appointments",
            },
            {
              event = "ap-court:target:getJuryStatus",
              icon = "fas fa-sign-in-alt",
              label = "Jury Service",
            },
        },
        distance = 2.5,
      })
    end
    if qtargetcfg['juryCourt'].active == true then
      exports['qtarget']:AddBoxZone(qtargetcfg['juryCourt'].boxzone.name, qtargetcfg['juryCourt'].boxzone.coords, qtargetcfg['juryCourt'].boxzone.length, qtargetcfg['juryCourt'].boxzone.width, {
        name=qtargetcfg['juryCourt'].boxzone.name,
        heading=qtargetcfg['juryCourt'].boxzone.heading,
        debugPoly=qtargetcfg['juryCourt'].boxzone.debugPoly, 
        minZ=qtargetcfg['juryCourt'].boxzone.minZ,
        maxZ=qtargetcfg['juryCourt'].boxzone.maxZ,
        }, {
          options = {
            {
                event = "ap-court:client:verdictMenu",
                icon = "fas fa-sign-in-alt",
                label = "Give Verdict",
            },
          },
        distance = 2.5
      })
    end
    if qtargetcfg['judge'].active == true then
      local input = {
        {
          event = "ap-court:client:backgroundChecks",
          icon = "fas fa-sign-in-alt",
          label = "Background Checks"
        },
        {
          event = "ap-court:client:barMembers",
          icon = "fas fa-sign-in-alt",
          label = "Members"
        },
        {
          event = "ap-court:client:barDecMembers",
          icon = "fas fa-sign-in-alt",
          label = "Denied Applications"
        },
        {
          event = "ap-court:client:judgeExamQuestions",
          icon = "fas fa-sign-in-alt",
          label = "Update Judge Exam"
        },
        {
          event = "ap-court:client:appointmentRequests",
          icon = "fas fa-sign-in-alt",
          label = "Appointment Requests"
        },
        {
          event = "ap-court:client:scheduledAppointments",
          icon = "fas fa-sign-in-alt",
          label = "Scheduled Appointments"
        },
        {
          event = "ap-court:client:createCourtCase",
          icon = "fas fa-sign-in-alt",
          label = "Create Court Case"
        },
        {
          event = "ap-court:client:caseConfigureMenu",
          icon = "fas fa-sign-in-alt",
          label = "Configure Court Cases"
        },
      }  
      if Config.CriminalRecordArchives == true then
        table.insert(input, {event = "ap-court:client:criminalRecordArc", icon = "fas fa-sign-in-alt", label = "Search Archives"})
      end
      exports['qtarget']:AddBoxZone(qtargetcfg['judge'].boxzone.name, qtargetcfg['judge'].boxzone.coords, qtargetcfg['judge'].boxzone.length, qtargetcfg['judge'].boxzone.width, {
        name=qtargetcfg['judge'].boxzone.name,
        heading=qtargetcfg['judge'].boxzone.heading,
        debugPoly=qtargetcfg['judge'].boxzone.debugPoly, 
        minZ=qtargetcfg['judge'].boxzone.minZ,
        maxZ=qtargetcfg['judge'].boxzone.maxZ,
        }, {
          options = input,
        job = {[qtargetcfg['judge'].job.name] = qtargetcfg['judge'].job.grade},
        distance = 2.5
      })
    end
    if qtargetcfg['tableCourt'].active == true then
      exports['qtarget']:AddBoxZone(qtargetcfg['tableCourt'].boxzone.name, qtargetcfg['tableCourt'].boxzone.coords, qtargetcfg['tableCourt'].boxzone.length, qtargetcfg['tableCourt'].boxzone.width, {
        name=qtargetcfg['tableCourt'].boxzone.name,
        heading=qtargetcfg['tableCourt'].boxzone.heading,
        debugPoly=qtargetcfg['tableCourt'].boxzone.debugPoly, 
        minZ=qtargetcfg['tableCourt'].boxzone.minZ,
        maxZ=qtargetcfg['tableCourt'].boxzone.maxZ,
        }, {
          options = {
            {
                event = "ap-court:client:proManagement",
                icon = "fas fa-sign-in-alt",
                label = "Case Management",
            },
          },
        job = {[qtargetcfg['tableCourt'].job.name] = qtargetcfg['tableCourt'].job.grade},
        distance = 2.5
      })
    end
  end
  CourtBlip()
end)

local CourtControlPress = 0

Citizen.CreateThread(function()
  local dcfg = cfg['DrawText']
  if Config.Interactions.drawText then
    for k,v in pairs(dcfg['points']) do
      local courtCombo = BoxZone:Create(vector3(v.pos.x, v.pos.y, v.pos.z), v.length, v.width, {
        name = 'court'..k,
        heading = v.heading,
        minZ = v.pos.z - 1,
        maxZ = v.pos.z + 1,
        debugPoly = false
      })
      courtCombo:onPlayerInOut(function(isPointInside)
          if isPointInside then
            if v.enable then
              if v.job.check then
                if PlayerData.job.name == v.job.name and PlayerData.job.grade.level >= v.job.grade then
                  exports['qb-core']:DrawText(v.text,'left')
                  courtFunctionDraw(v)
                  CourtControlPress = k
                end
              else
                exports['qb-core']:DrawText(v.text,'left')
                courtFunctionDraw(v)
                CourtControlPress = k
              end
            end
          else
            CourtControlPress = 0
            exports['qb-core']:HideText()
          end
      end)
    end
  end
end)

courtFunctionDraw = function(v)
  print(CourtControlPress)
  CreateThread(function()
    while CourtControlPress ~= 0 do
      if IsControlPressed(0, 38) then
        exports['qb-core']:KeyPressed()
        if v.isServer == true then
          TriggerServerEvent(v.trigger)
        else
          TriggerEvent(v.trigger)
        end
      end
      Wait(0)
    end
  end)
end

function CourtBlip()
  local blips = Config.Blip
	if blips.Active == true then
		local blip = AddBlipForCoord(blips.Coords)
		SetBlipSprite (blip, blips.Sprite)
		SetBlipDisplay(blip, blips.Display)
		SetBlipScale  (blip, blips.Scale)
		SetBlipColour (blip, blips.Color)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(blips.Label)
		EndTextCommandSetBlipName(blip)
	end
end

RegisterNetEvent('ap-court:client:drawtext:court', function()
  local courtMainMenu = ContextMenu({
    {
      header = "Public Court Cases",
      txt = "View scheduled court cases.",
      params = {
        isServer = false,
        event = "ap-court:client:courtCases",
        args = {}
      }
    },
    {
      header = "Appointments",
      txt = "View/Make an appointment.",
      params = {
        isServer = false,
        event = "ap-court:target:getAppStatus",
        args = {}
      }
    },
    {
      header = "Jury Service",
      txt = "View/Join jury service.",
      params = {
        isServer = false,
        event = "ap-court:target:getJuryStatus",
        args = {}
      }
    },
  })
end)

RegisterNetEvent('ap-court:client:drawtext:judge', function()
  local judgeMainMenu = {
    {
      header = "Background Checks",
      txt = "Approve/deny bar applications background checks.",
      params = {
        isServer = false,
        event = "ap-court:client:backgroundChecks",
        args = {}
      }
    },
    {
      header = "Bar Members",
      txt = "View/Remove bar members.",
      params = {
        isServer = false,
        event = "ap-court:client:barMembers",
        args = {}
      }
    },
    {
      header = "Denied Applications",
      txt = "View/Reissue denied applications.",
      params = {
        isServer = false,
        event = "ap-court:client:barDecMembers",
        args = {}
      }
    },
    {
      header = "Update Judge Exam",
      txt = "View/Change the judge exam.",
      params = {
        isServer = false,
        event = "ap-court:client:judgeExamQuestions",
        args = {}
      }
    },
    {
      header = "Appointment Requests",
      txt = "View/Issue appointment requests.",
      params = {
        isServer = false,
        event = "ap-court:client:appointmentRequests",
        args = {}
      }
    },
    {
      header = "Scheduled Appointments",
      txt = "View/Close scheduled appointments.",
      params = {
        isServer = false,
        event = "ap-court:client:scheduledAppointments",
        args = {}
      }
    },
    {
      header = "Create Court Case",
      txt = "Make a court case.",
      params = {
        isServer = false,
        event = "ap-court:client:createCourtCase",
        args = {}
      }
    },
    {
      header = "Configure Court Cases",
      txt = "View/Change current court cases.",
      params = {
        isServer = false,
        event = "ap-court:client:caseConfigureMenu",
        args = {}
      }
    },
  }
  if Config.CriminalRecordArchives == true then
    table.insert(judgeMainMenu, {
      header = "Search Archives",
      txt = "Check a players criminal history.",
      params = {
        isServer = false,
        event = "ap-court:client:criminalRecordArc",
        args = {}
      }
    })
  end
  ContextMenu(judgeMainMenu)
end)
