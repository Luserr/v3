QBCore = exports['qb-core']:GetCoreObject()

local cfg = Config.Target
local qbTarget = cfg['qb-target'].active
local qTarget = cfg['qtarget'].active

RegisterNetEvent('ap-government:notify')
AddEventHandler('ap-government:notify', function(msg)
	QBCore.Functions.Notify(msg)
end)

Citizen.CreateThread(function()
  local qbtargetcfg = cfg['qb-target']
  if qbTarget == true then
    if qbtargetcfg['votingSystem']['votingStaff']['active'] == true then
      local input = {
        { 
          type = "client",
          event = "ap-government:client:applyCandidate", 
          icon = 'fas fa-sign-in-alt',
          label = 'Apply As Candidate'
        },
      }
      if Config.VotingSettings.Job then
        table.insert(input, {type = "client", event = "ap-government:client:viewRequestedCandidates", icon = 'fas fa-sign-in-alt', label = 'View Candidate Applications', job = {[qbtargetcfg['votingSystem']['votingStaff']['ped'].job.name] = qbtargetcfg['votingSystem']['votingStaff']['ped'].job.grade}})
        table.insert(input, {type = "client", event = "ap-government:client:viewCandidates", icon = 'fas fa-sign-in-alt', label = 'View Current Candidates', job = {[qbtargetcfg['votingSystem']['votingStaff']['ped'].job.name] = qbtargetcfg['votingSystem']['votingStaff']['ped'].job.grade}})
        table.insert(input, {type = "client", event = "ap-government:client:votingOptions", icon = 'fas fa-sign-in-alt', label = 'Voting Options', job = {[qbtargetcfg['votingSystem']['votingStaff']['ped'].job.name] = qbtargetcfg['votingSystem']['votingStaff']['ped'].job.grade}})
      end
      exports['qb-target']:SpawnPed({
        model = qbtargetcfg['votingSystem']['votingStaff']['ped'].ped.model, 
        coords = qbtargetcfg['votingSystem']['votingStaff']['ped'].coords, 
        minusOne = qbtargetcfg['votingSystem']['votingStaff']['ped'].minusOne, 
        freeze = qbtargetcfg['votingSystem']['votingStaff']['ped'].freeze,
        invincible = qbtargetcfg['votingSystem']['votingStaff']['ped'].invincible, 
        blockevents = qbtargetcfg['votingSystem']['votingStaff']['ped'].blockevents, 
        target = { 
          options = input,
          distance = 2.5, 
        },
      })
    end
    if qbtargetcfg['votingSystem']['votingPoints']['active'] == true then
      local onSelect = {
        {
            type = "server",
            event = "ap-government:server:isRegistered",
            icon = "fas fa-sign-in-alt",
            label = "Vote For Candidate"
        }
      }
      for k,v in pairs(qbtargetcfg['votingSystem']['votingPoints']['points']) do
        if v.active == true then
          exports['qb-target']:AddBoxZone(v.name, v.coords, v.length, v.width, {
            name=v.name,
            heading=v.heading,
            debugPoly=false, 
            minZ=v.minZ,
            maxZ=v.maxZ,
            }, {
              options = onSelect,
            distance = 2.5
          })
        end
      end
    end
    if qbtargetcfg['majorOffice']['active'] == true then
      local onSelect = {
        {
            type = "client",
            event = "ap-government:client:majorOffice",
            icon = "fas fa-sign-in-alt",
            label = "Major Options",
            job = {[qbtargetcfg['majorOffice']['job'].name] = qbtargetcfg['majorOffice']['job'].grade},
        }
      }
      for k,v in pairs(qbtargetcfg['majorOffice']['points']) do
        if v.active == true then
          exports['qb-target']:AddBoxZone(v.name, v.coords, v.length, v.width, {
            name=v.name,
            heading=v.heading,
            debugPoly=false, 
            minZ=v.minZ,
            maxZ=v.maxZ,
            }, {
              options = onSelect,
            distance = 2.5
          })
        end
      end
    end
    if qbtargetcfg['appointmentsPed']['active'] == true then
      exports['qb-target']:SpawnPed({
        model = qbtargetcfg['appointmentsPed']['ped'].ped.model, 
        coords = qbtargetcfg['appointmentsPed']['ped'].coords, 
        minusOne = qbtargetcfg['appointmentsPed']['ped'].minusOne, 
        freeze = qbtargetcfg['appointmentsPed']['ped'].freeze,
        invincible = qbtargetcfg['appointmentsPed']['ped'].invincible, 
        blockevents = qbtargetcfg['appointmentsPed']['ped'].blockevents, 
        target = { 
          options = { 
            { 
              type = "server",
              event = "ap-government:server:appointmentData", 
              icon = 'fas fa-sign-in-alt',
              label = 'Mayor Appointments'
            }
          },
          distance = 2.5, 
        },
      })
    end
  end
end)

Citizen.CreateThread(function()
  local qtargetcfg = cfg['qtarget']
  if qTarget == true then
    
  end
end)