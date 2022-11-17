ConfigHeroin = {}
ConfigHeroin.Framework = 'qbcore' ---[ 'esx' / 'qbcore' / 'vrp' ] Choose your framework.

ConfigHeroin.PlayerLoadEvent   = 'QBCore:Client:OnPlayerLoaded' --event for player load, ESX = esx:playerLoaded, qbcore = QBCore:Client:OnPlayerLoaded
ConfigHeroin.MainCoreEvent     = 'QBCore:GetObject' --ESX = 'esx:getSharedObject'   qbcore = 'QBCore:GetObject'
ConfigHeroin.CoreResourceName  = 'qb-core'   --ESX = 'es_extended'           QBCORE = 'qb-core'
ConfigHeroin.TargetResourceName  = 'qb-target' --If you have a custom target, change the name
ConfigHeroin.InventoryEventForRequiredItems = 'inventory:client:requiredItems'
ConfigHeroin.TerritoriesResourceName  = 'none' --If you have integration with the qp-gangwars or qp-territories or none
ConfigHeroin.SetPoliceUpdateEvent  = 'police:SetCopCount' --event that will receive the updated police amount, only used for QB-core
ConfigHeroin.ESXProgressBarResourceName = 'progressbar' --only for ESX
ConfigHeroin.ItemBoxEvent = 'inventory:client:ItemBox' --event to show the items, ex: 'inventory:client:ItemBox' , or 'none'

ConfigHeroin.PoliceMinInfluence = 30 --0 - 100, min vale for police protect territories and you cannot process heroin
ConfigHeroin.MinNumberOfCopsToProcessHeroin = 0 --min number of cops in your city to cook meth
ConfigHeroin.PoliceJobs = {--only for ESX, the qb-core have her own event ConfigHeroin.SetPoliceUpdateEvent
    'police',                         -- The police job names.
}

ConfigHeroin.Plantation = {
  job = nil, -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
  gang = nil, -- This is the gang, set it nil if you dont want it, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
  item = nil,--mandatory item to interact with the dealer
  poppiesLocations = {
    vector3(-551.13, 4764.79, 211.22),
    vector3(3158.53, 2136.64, 30.95),
  },
  poppyProp = 'prop_bzzz_gardenpack_poppy001', --prop_plant_01b
  poppyPropOffsetZ = 0.0,
  distanceBetweenPoppies = 1.5,
  fieldRadius = 15,
  distanceToTarget = 2,
  reward = 'poppy', --poppie item reward
}

ConfigHeroin.ProcessAmmonium = {
  enable = true, --you can disable it 
  job = nil, -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
  gang = nil, -- This is the gang, set it nil if you dont want it, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
  item = nil,--mandatory item to interact with the dealer
  ammoniumBarrelProps = { --type of barrels to produce ammonium_chloride
    'prop_barrel_03a'
  },
  items = {
    ['water'] = {
        qty = 2
    },
    ['petrol_raffin'] = {
        qty = 1
    },
  },
  distanceToTarget = 1.0,
  reward = 'ammonium_chloride', --morphine item reward
}

ConfigHeroin.ProcessMorphine = {
  job = nil, -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
  gang = nil, -- This is the gang, set it nil if you dont want it, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
  item = nil,--mandatory item to interact with the dealer
  morphineLocations = {
    vector3(1389.61, 3608.7, 38.94),
    vector3(1391.87, 3605.93, 38.94),
  },
  items = {
    ['water'] = {
        qty = 5
    },
    ['ammonium_chloride'] = {
        qty = 2
    },
    ['poppy'] = {
        qty = 2
    },
  },
  distanceToTarget = 1.5,
  reward = 'morphine', --morphine item reward
  enableMorphineEffect = true, --enable the use item with effect
  morphineEffectHeal = 5, --heal number for iteraction
}

ConfigHeroin.ProcessHeroin = {
  job = nil, -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
  gang = nil, -- This is the gang, set it nil if you dont want it, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
  item = nil,--mandatory item to interact with the dealer
  processLocations = {
    vector3(1389.08, 3605.54, 38.94),
    vector3(1389.62, 3603.62, 38.94),
  },
  items = {
    ['morphine'] = {
        qty = 2
    },
    ['ammonium_chloride'] = {
        qty = 1
    },
    -- ['hydrochloric_acid'] = {
    --     qty = 1
    -- },
    -- ['acetone'] = {
    --     qty = 1
    -- },
    ['plastic'] = {
        qty = 1
    },
  },
  distanceToTarget = 1.0,
  reward = 'heroin', --morphine item reward
  maskComponentVariation = {idMask = 175, texture=0, color=1}, --mask to process heroin
  enableHeroinEffect = true, --enable effect to consume heroin
}

ConfigHeroin.ReputationIdentifier = 'drugsrep' --rep name that you use in your server for restaurants reputation

if ConfigHeroin.Framework == 'esx' then
  --esx only allow one level
  ConfigHeroin.ReputationLevels = {
      repLevelLimit = 1, --the level is between 0 and 1
      increaseRepValue = 0.01, --value to increase rep
      numberOfPoppies = 10, --number of poppies in the field
      harvestTimer = 5000, --collect poppie
      qtyPoppy = { min = 1, max = 3}, --number of poppie to receive
      qtyMorphine = { min = 1, max = 3}, --number of morphine to receive
      processMorphineTimer = 10000, --process the morphine timer
      processAmmoniumTimer = 10000, --process the ammonium timer
      qtyAmmonium = { min = 1, max = 1}, --number of ammonium to receive
      processHeroinTimer = 11000, --timer to process heroin
      qtyHeroin = { min = 1, max = 1}, --number of heroin to receive
      qtyHeroinDominatedTerritories = { min = 2, max = 3}, --number of heroin to receive if your gang dominates the territory
      useMorphineTimer = 5000, --use morphine timer
      useHeroinTimer = 5000, --use heroin timer
      useHeroinEffectTimer = 60, --use heroin timer in seconds
      useHeroinAccuracy = 100, --heroin effect increase the player accuracy
      useHeroinRechargerHealMultiplier = 3.0, --heroin effect, increase the heal faster
  } 

elseif ConfigHeroin.Framework == 'qbcore' then
  ConfigHeroin.ReputationLevels = {--the last level will be the higther configuration, for example if the player have reputation of 20 the level will be the last one (Level 4)
      [1] = {
          repLevelLimit = 1, --the level is between 0 and 1
          increaseRepValue = 0.01, --value to increase rep
          numberOfPoppies = 10, --number of poppies in the field
          harvestTimer = 5000, --collect poppie
          qtyPoppy = { min = 1, max = 2}, --number of poppie to receive
          qtyMorphine = { min = 1, max = 3}, --number of morphine to receive
          processMorphineTimer = 12000, --process the morphine timer
          processAmmoniumTimer = 11000, --process the ammonium timer
          qtyAmmonium = { min = 1, max = 1}, --number of ammonium to receive
          processHeroinTimer = 15000, --timer to process heroin
          qtyHeroin = { min = 1, max = 1}, --number of heroin to receive
          qtyHeroinDominatedTerritories = { min = 2, max = 2}, --number of heroin to receive if your gang dominates the territory
          useMorphineTimer = 5000, --use morphine timer
          useHeroinTimer = 5000, --use heroin timer
          useHeroinEffectTimer = 60, --use heroin timer in seconds
          useHeroinAccuracy = 90, --heroin effect increase the player accuracy
          useHeroinRechargerHealMultiplier = 2.0, --heroin effect, increase the heal faster
      },
      [2] = {
          repLevelLimit = 3, --the level is between 1 and 3
          increaseRepValue = 0.01, --value to increase rep
          numberOfPoppies = 12, --number of poppies in the field
          harvestTimer = 5000, --collect poppie
          qtyPoppy = { min = 1, max = 3}, --number of poppie to receive
          qtyMorphine = { min = 1, max = 3}, --number of morphine to receive
          processMorphineTimer = 10000, --process the morphine timer
          processAmmoniumTimer = 10000, --process the ammonium timer
          qtyAmmonium = { min = 1, max = 1}, --number of ammonium to receive
          processHeroinTimer = 12000, --timer to process heroin
          qtyHeroin = { min = 1, max = 1}, --number of heroin to receive
          qtyHeroinDominatedTerritories = { min = 2, max = 3}, --number of heroin to receive if your gang dominates the territory
          useMorphineTimer = 5000, --use morphine timer
          useHeroinTimer = 5000, --use heroin timer
          useHeroinEffectTimer = 60, --use heroin timer in seconds
          useHeroinAccuracy = 95, --heroin effect increase the player accuracy
          useHeroinRechargerHealMultiplier = 3.0, --heroin effect, increase the heal faster
      },
      [3] = {
          repLevelLimit = 5, --the level is between 3 and 5
          increaseRepValue = 0.01, --value to increase rep
          numberOfPoppies = 13, --number of poppies in the field
          harvestTimer = 4000, --collect poppie
          qtyPoppy = { min = 2, max = 3}, --number of poppie to receive
          qtyMorphine = { min = 2, max = 3}, --number of morphine to receive
          processMorphineTimer = 9000, --process the morphine timer
          processAmmoniumTimer = 7000, --process the ammonium timer
          qtyAmmonium = { min = 1, max = 2}, --number of ammonium to receive
          processHeroinTimer = 10000, --timer to process heroin
          qtyHeroin = { min = 1, max = 2}, --number of heroin to receive
          qtyHeroinDominatedTerritories = { min = 3, max = 3}, --number of heroin to receive if your gang dominates the territory
          useMorphineTimer = 5000, --use morphine timer
          useHeroinTimer = 5000, --use heroin timer
          useHeroinEffectTimer = 60, --use heroin timer in seconds
          useHeroinAccuracy = 100, --heroin effect increase the player accuracy
          useHeroinRechargerHealMultiplier = 3.0, --heroin effect, increase the heal faster
      },
      [4] = {
          repLevelLimit = 10, --the level is between 5 and 10
          increaseRepValue = 0.01, --value to increase rep
          numberOfPoppies = 15, --number of poppies in the field
          harvestTimer = 3000, --collect poppie
          qtyPoppy = { min = 2, max = 4}, --number of poppie to receive
          qtyMorphine = { min = 2, max = 4}, --number of morphine to receive
          processMorphineTimer = 8000, --process the morphine timer
          processAmmoniumTimer = 5000, --process the ammonium timer
          qtyAmmonium = { min = 1, max = 3}, --number of ammonium to receive
          processHeroinTimer = 8000, --timer to process heroin
          qtyHeroin = { min = 1, max = 2}, --number of heroin to receive
          qtyHeroinDominatedTerritories = { min = 3, max = 4}, --number of heroin to receive if your gang dominates the territory
          useMorphineTimer = 5000, --use morphine timer
          useHeroinTimer = 5000, --use heroin timer
          useHeroinEffectTimer = 60, --use heroin timer in seconds
          useHeroinAccuracy = 100, --heroin effect increase the player accuracy
          useHeroinRechargerHealMultiplier = 3.0, --heroin effect, increase the heal faster
      }
  }

end

ConfigHeroin.Locale = 'EN'
ConfigHeroin.Locales = {
    ['EN'] = {
      ['NEW_LEVEL_REP'] = 'Raised your dealer reputation. Level %d',
      ['LABEL_GRAB_POPPIES'] = 'Collect Poppie',
      ['PROG_POPPIE_COLLECT'] = 'Collecting Poppie...',
      ['NO_SPACE'] = 'No space in your inventory.',
      ['PROCCESS_MORPHINE_LABEL'] = 'Produce Morphine',
      ['PROG_CREATE_MORPHINE'] = 'Producing Morphine...',
      ['NO_ITEMS'] = 'You do not have all the required items.',
      ['PROCESS_SUCCESS'] = 'You receive %s',
      ['NO_PROCCESS_ITEMS'] = 'You do not have %s',
      ['PRODUCE_AMMONIUM_LABEL'] = 'Produce Ammonium Chloride',
      ['PROG_CREATE_AMMONIUM'] = 'Producing Ammonium Chloride...',
      ['PROCCESS_HEROIN_LABEL'] = 'Produce Heroin',
      ['PROG_CREATE_HEROIN'] = 'Producing Heroin...',
      ['SEIZE_POLICE_LABEL'] = 'Police is protecting the zone.',
      ['NO_COPS'] = 'Minimum %d polices in the city.',
      ['PROG_USE_MORPHINE'] = 'Using Morphine...',
      ['HEROIN_EFFECT_TIMER'] = 'Heroin effect [%d s]',
      ['PROG_USE_HEROIN'] = 'Injecting Heroin...',
    },
    ['PT'] = {
      ['NEW_LEVEL_REP'] = 'Aumentaste a reputação de traficante. Estás nivel %d',
      ['LABEL_GRAB_POPPIES'] = 'Apanhar Papoila',
      ['PROG_POPPIE_COLLECT'] = 'A apanhar a papoila...',
      ['NO_SPACE'] = 'Não tens espaço no inventário.',
      ['PROCCESS_MORPHINE_LABEL'] = 'Produzir Morfina',
      ['PROG_CREATE_MORPHINE'] = 'A produzir Morfina...',
      ['NO_ITEMS'] = 'Não tens os items necessários.',
      ['PROCESS_SUCCESS'] = 'Tu recebeste %s',
      ['NO_PROCCESS_ITEMS'] = 'Não tens %s',
      ['PRODUCE_AMMONIUM_LABEL'] = 'Produzir Cloreto de Amônio',
      ['PROG_CREATE_AMMONIUM'] = 'A produzir Cloreto de Amônio...',
      ['PROCCESS_HEROIN_LABEL'] = 'Produzir Heroina',
      ['PROG_CREATE_HEROIN'] = 'A produzir heroina...',
      ['SEIZE_POLICE_LABEL'] = 'A Policia está a proteger a zona.',
      ['NO_COPS'] = 'Precisas no minimo de %d policias na cidade.',
      ['PROG_USE_MORPHINE'] = 'A usar Morfina...',
      ['HEROIN_EFFECT_TIMER'] = 'Efeito da Heroina [%d s]',
      ['PROG_USE_HEROIN'] = 'A injetar Heroina...',
    },
}

RegisterNetEvent('qp-heroin:sendNotification', function(msg, typeMsg, timer) --typeMsg possible results-> 'primary', 'error', 'success'
  if ConfigHeroin.Framework == 'esx' then
    TriggerEvent('esx:showNotification', msg)
  elseif ConfigHeroin.Framework == 'qbcore' then
    TriggerEvent('QBCore:Notify',msg, typeMsg, timer)
  end
end)

function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end