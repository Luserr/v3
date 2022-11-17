ConfigPlantations = {}
ConfigPlantations.Framework = 'qbcore' ---[ 'esx' / 'qbcore' / 'vrp' ] Choose your framework.

ConfigPlantations.PlayerLoadEvent   = 'QBCore:Client:OnPlayerLoaded' --event for player load, ESX = esx:playerLoaded, qbcore = QBCore:Client:OnPlayerLoaded
ConfigPlantations.MainCoreEvent     = 'QBCore:GetObject' --ESX = 'esx:getSharedObject'   qbcore = 'QBCore:GetObject'
ConfigPlantations.CoreResourceName  = 'qb-core'   --ESX = 'es_extended'           QBCORE = 'qb-core'
ConfigPlantations.TargetResourceName  = 'qb-target' --If you have a custom target, change the name
ConfigPlantations.DatabaseResourceName = 'oxmysql' --ghmattimysql or oxmysql
ConfigPlantations.MenuResourceName  = 'qb-menu' --optional if you turn on the property useMenuToShowStatus
ConfigPlantations.SetPoliceUpdateEvent  = 'police:SetCopCount'--event that will register the number of policies
ConfigPlantations.MinNumberOfCopsToPlant = 0
--alternative weed props
-- ConfigPlantations.Props = {
--   ["stage-a"] = "bkr_prop_weed_01_small_01c",
--   ["stage-b"] = "bkr_prop_weed_01_small_01b",
--   ["stage-c"] = "bkr_prop_weed_01_small_01a",
--   ["stage-d"] = "bkr_prop_weed_med_01b",
--   ["stage-e"] = "bkr_prop_weed_lrg_01a",
--   ["stage-f"] = "bkr_prop_weed_lrg_01b",
--   ["stage-g"] = "bkr_prop_weed_lrg_01b",
-- }

ConfigPlantations.Props = {
  ["stage-a"] = "bkr_prop_weed_bud_pruned_01a",
  ["stage-b"] = "bkr_prop_weed_bud_01a",
  ["stage-c"] = "bkr_prop_weed_bud_01b",
  ["stage-d"] = "bkr_prop_weed_bud_02b",
  ["stage-e"] = "bkr_prop_weed_bud_02a",
  ["stage-f"] = "prop_weed_02",
  ["stage-g"] = "prop_weed_01",
}

ConfigPlantations.PlantationZones = {
  territoriesResourceName  = 'qp-territories', --If you have integration with the qp-gangwars or qp-territories or none
  singleZone = {
    coord = vector3(86.04, 7049.61, 12.78), --single zone if you dont use the territories integration
    radius = 150, --zone radius
  },
  territoriesZonesNames = { --names in territories script, multiple territories is only used if you have the qp-territories or qp-gangwars
    'Vespucci',
    'Jamestowns',
  },
  removeDeadPlantsAutomatcly = true, --when the server restarts the dead plants will be removed
  plantAnywhere = false, --if this is true you dont have zones, you can plant in anywhere in the world
}


ConfigPlantations.Plants = {
  ["og-kush"] = {
      ["label"] = "OGKush 2g",
      ["item"] = "weed_og-kush",
      ["itemseed"] = "weed_og-kush_seed",
      ["itemBox"] = "caixaweed_og-kush",
      ["stages"] = {
          ["stage-a"] = ConfigPlantations.Props['stage-a'],
          ["stage-b"] = ConfigPlantations.Props['stage-b'],
          ["stage-c"] = ConfigPlantations.Props['stage-c'],
          ["stage-d"] = ConfigPlantations.Props['stage-d'],
          ["stage-e"] = ConfigPlantations.Props['stage-e'],
          ["stage-f"] = ConfigPlantations.Props['stage-f'],
          ["stage-g"] = ConfigPlantations.Props['stage-g'],
      },
      ["highestStage"] = "stage-g",
      ["enableJoint"] = true,
  },
  ["amnesia"] = {
      ["label"] = "Amnesia 2g",
      ["item"] = "weed_amnesia",
      ["itemseed"] = "weed_amnesia_seed",
      ["itemBox"] = "caixaweed_amnesia",
      ["stages"] = {
        ["stage-a"] = ConfigPlantations.Props['stage-a'],
        ["stage-b"] = ConfigPlantations.Props['stage-b'],
        ["stage-c"] = ConfigPlantations.Props['stage-c'],
        ["stage-d"] = ConfigPlantations.Props['stage-d'],
        ["stage-e"] = ConfigPlantations.Props['stage-e'],
        ["stage-f"] = ConfigPlantations.Props['stage-f'],
        ["stage-g"] = ConfigPlantations.Props['stage-g'],
      },
      ["highestStage"] = "stage-g",
      ["enableJoint"] = true,
  },
  ["skunk"] = {
      ["label"] = "Skunk 2g",
      ["item"] = "weed_skunk",
      ["itemseed"] = "weed_skunk_seed",
      ["itemBox"] = "caixaweed_skunk",
      ["stages"] = {
        ["stage-a"] = ConfigPlantations.Props['stage-a'],
        ["stage-b"] = ConfigPlantations.Props['stage-b'],
        ["stage-c"] = ConfigPlantations.Props['stage-c'],
        ["stage-d"] = ConfigPlantations.Props['stage-d'],
        ["stage-e"] = ConfigPlantations.Props['stage-e'],
        ["stage-f"] = ConfigPlantations.Props['stage-f'],
        ["stage-g"] = ConfigPlantations.Props['stage-g'],
      },
      ["highestStage"] = "stage-g",
      ["enableJoint"] = true,
  },
  ["ak47"] = {
      ["label"] = "AK47 2g",
      ["item"] = "weed_ak47",
      ["itemseed"] = "weed_ak47_seed",
      ["itemBox"] = "caixaweed_ak47",
      ["stages"] = {
        ["stage-a"] = ConfigPlantations.Props['stage-a'],
        ["stage-b"] = ConfigPlantations.Props['stage-b'],
        ["stage-c"] = ConfigPlantations.Props['stage-c'],
        ["stage-d"] = ConfigPlantations.Props['stage-d'],
        ["stage-e"] = ConfigPlantations.Props['stage-e'],
        ["stage-f"] = ConfigPlantations.Props['stage-f'],
        ["stage-g"] = ConfigPlantations.Props['stage-g'],
      },
      ["highestStage"] = "stage-g",
      ["enableJoint"] = true,
  },
  ["purple-haze"] = {
      ["label"] = "Purple Haze 2g",
      ["item"] = "weed_purple-haze",
      ["itemseed"] = "weed_purple-haze_seed",
      ["itemBox"] = "caixaweed_purple-haze",
      ["stages"] = {
        ["stage-a"] = ConfigPlantations.Props['stage-a'],
        ["stage-b"] = ConfigPlantations.Props['stage-b'],
        ["stage-c"] = ConfigPlantations.Props['stage-c'],
        ["stage-d"] = ConfigPlantations.Props['stage-d'],
        ["stage-e"] = ConfigPlantations.Props['stage-e'],
        ["stage-f"] = ConfigPlantations.Props['stage-f'],
        ["stage-g"] = ConfigPlantations.Props['stage-g'],
      },
      ["highestStage"] = "stage-g",
      ["enableJoint"] = true,
  },
  ["white-widow"] = {
      ["label"] = "White Widow 2g",
      ["item"] = "weed_white-widow",
      ["itemseed"] = "weed_white-widow_seed",
      ["itemBox"] = "caixaweed_white-widow",
      ["stages"] = {
        ["stage-a"] = ConfigPlantations.Props['stage-a'],
        ["stage-b"] = ConfigPlantations.Props['stage-b'],
        ["stage-c"] = ConfigPlantations.Props['stage-c'],
        ["stage-d"] = ConfigPlantations.Props['stage-d'],
        ["stage-e"] = ConfigPlantations.Props['stage-e'],
        ["stage-f"] = ConfigPlantations.Props['stage-f'],
        ["stage-g"] = ConfigPlantations.Props['stage-g'],
      },
      ["highestStage"] = "stage-g",
      ["enableJoint"] = true,
  },
}

ConfigPlantations.Nutrition = {
  item = { --item to food the plants
    name = 'weed_nutrition',
    qtyFood = {min = 10, max = 15}, --how many food will increase
  },
  food = {
    amountToDecrease = 20, --number of food to deacrease for each foodDecreaseTimer
    decreaseTimer = 10, --number of minutes to decrease food
    healthNumber = 10, --number of health to increase or decrease for the plant. If the plant have many food the health will grow if now will decrease
    limitHealth = 50, -- 0 - 100 , value of food to choose if the plant health should decrease or increase
  },
  job = nil, -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
  gang = nil, -- This is the gang, set it nil if you dont want it, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
  useMenuToShowStatus = true, --use qb-menu instead of normal notifications to show the plant status

}

ConfigPlantations.Harvest = {
  bagItem = { --bag item to food the plants
    name = 'saco',
    qty = 1, --number of bag for each plant drop
    useQtyBagForEachPlant = false, --if false the you will need the number qty of bag for the harvest process, ex 1 bag for 10 plants. If true is bag qty * number of harvest plants, ex 10 bags for 10 plants
    removeBagItem = true, --if true the item is remove , if false the item is mandatory but not removed
  },
  grow = {
    progressTimer = 3, --number of minutes to increase the plant progress
    progressValue = {min = 10 , max = 30}, --value to increase the plant progress
    limitHealth = 50, --number of plant heal to increase the plant progress
  },
  job = nil, -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
  gang = nil, -- This is the gang, set it nil if you dont want it, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
}

ConfigPlantations.WeedProcess = {
  locations = { 
    vector3(90.73, -1987.48, 20.42),
    vector3(90.57, -1989.91, 20.42),
  },
  useShellMap = { -- this properties are used if the active is true
      active = false,--use addon map by default, enter our discord and asks us for the map
      entryDoorCoord = vector4(-161.66, -1638.31, 37.25, 293.67), --door to enter
      exitDoorCoord = vector4(-165.53, 70.58, -59.62, 299.96), --entry or exit point in the shell
      shellName = nil,--if you have a custom shell set the name here ex: 'k4weed_shell'
      customShellSpawn = nil, --spawn coords if you have a custom shell ex: vector3(-154.63, 73.03, -80.51)
  },
  job = nil, -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
  gang = nil, -- This is the gang, set it nil if you dont want it, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
  numberWeedToProcess = 2, --number of weed to transform in rewardBoxWeed
}

ConfigPlantations.WeedOrderSeeds = {
  enable = true, --use missions to get seeds and nutrition for the weed plants
  dealerPedType = 'g_m_y_salvagoon_01', --ped type
  locationToOrder = { --random location to get seeds and nutrition
    vector4(-1092.72, -1535.32, 3.55, 193.42),
    vector4(144.19, -1637.79, 28.29, 9.23), 
  },
  cooldownToOrder = nil, --you can define the number of minutes to wait until you can order the weed seeds again, ex: 5 minutes
  job = nil, -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
  gang = nil, -- This is the gang, set it nil if you dont want it, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
  packageLocations = { --random location to get the seeds and nutrition package
    vector3(165.21, -1651.3, 29.29), 
  },
  propPackage = 'prop_weed_tub_01',
}

ConfigPlantations.Joint = {
  numberOfWeed = 1, --number of weed to produce one joint
  itemRewardName = 'joint', --item name
  numberOfPaper = 1, --number of rolling paper to produce one joint
  itemProduceName = 'rolling_paper', --item to produce the joint with the weed
}

ConfigPlantations.Police = {
  enable = true, --enable the option to police destroy the plants
  job = 'police', -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
  item = nil, --mandatory item to be able to seize the plants
}

ConfigPlantations.cashMoneyId = 'cash' --money id
ConfigPlantations.ReputationIdentifier = 'drugsrep' --rep name that you use in your server for restaurants reputation

if ConfigPlantations.Framework == 'esx' then
  --esx only allow one level
  ConfigPlantations.ReputationLevels = {
      repLevelLimit = 1, --the level is between 0 and 1
      increaseRepValue = 0.01, --value to increase rep
      harvestTimer = 10000, --timer to harvest the plant
      percentageToDropSeeds = 8, --percentage to drop seeds when collect the plant
      numberToDropSeeds = 1, --number to drop seeds when collect the plant if match the percentageToDropSeeds
      harvestWeedReward = {min = 10, max = 15}, --number of weed for harvest one plant
      plantTimer = 10000, --timer to plant weed
      processTimer = 10000, --timer to process weed
      rewardBoxWeed = {min = 4, max = 6}, --reward of weed
      openSeedsBoxTimer = 6000, --timer to open a box with the seeds order
      openSeedsBoxRewards = { --quantities of rewards in the box
        orderPrice = 5000,
        qtySeeds = {min = 2, max = 4},
        qtyNutrition = {min = 5, max = 10},
      },
      platingTimer = 8000, --timer to plant seed
      territoryDominatedPlantStage = 'stage-c', --if the territory is 100% dominated you will plant seeds in this stage
      produceJointTimer = 5000,--timer to produce one joint
  } 

elseif ConfigPlantations.Framework == 'qbcore' then
  ConfigPlantations.ReputationLevels = {--the last level will be the higther configuration, for example if the player have reputation of 20 the level will be the last one (Level 4)
      [1] = {
          repLevelLimit = 1, --the level is between 0 and 1
          increaseRepValue = 0.01, --value to increase rep
          harvestTimer = 10000, --timer to harvest the plant
          percentageToDropSeeds = 8, --percentage to drop seeds when collect the plant
          numberToDropSeeds = 1, --number to drop seeds when collect the plant if match the percentageToDropSeeds
          harvestWeedReward = {min = 10, max = 15}, --number of weed for harvest one plant
          plantTimer = 20000, --timer to plant weed
          processTimer = 10000, --timer to process weed
          rewardBoxWeed = {min = 2, max = 4}, --reward of weed
          openSeedsBoxTimer = 8000, --timer to open a box with the seeds order
          openSeedsBoxRewards = { --quantities of rewards in the box
            orderPrice = 5000,
            qtySeeds = {min = 2, max = 4},
            qtyNutrition = {min = 5, max = 10},
          },
          platingTimer = 10000, --timer to plant seed
          territoryDominatedPlantStage = 'stage-b', --if the territory is 100% dominated you will plant seeds in this stage
          produceJointTimer = 8000,--timer to produce one joint
      },
      [2] = {
          repLevelLimit = 3, --the level is between 1 and 3
          increaseRepValue = 0.01, --value to increase rep
          harvestTimer = 8000, --timer to harvest the plant
          percentageToDropSeeds = 11, --percentage to drop seeds when collect the plant
          numberToDropSeeds = 1, --number to drop seeds when collect the plant if match the percentageToDropSeeds
          harvestWeedReward = {min = 12, max = 15}, --number of weed for harvest one plant
          plantTimer = 16000, --timer to plant weed
          processTimer = 8000, --timer to process weed
          rewardBoxWeed = {min = 3, max = 5}, --reward of weed
          openSeedsBoxTimer = 6000, --timer to open a box with the seeds order
          openSeedsBoxRewards = { --quantities of rewards in the box
            orderPrice = 5000,
            qtySeeds = {min = 2, max = 5},
            qtyNutrition = {min = 5, max = 10},
          },
          platingTimer = 8000, --timer to plant seed
          territoryDominatedPlantStage = 'stage-b', --if the territory is 100% dominated you will plant seeds in this stage
          produceJointTimer = 6000,--timer to produce one joint
      },
      [3] = {
          repLevelLimit = 5, --the level is between 3 and 5
          increaseRepValue = 0.01, --value to increase rep
          harvestTimer = 6000, --timer to harvest the plant
          percentageToDropSeeds = 14, --percentage to drop seeds when collect the plant
          numberToDropSeeds = 1, --number to drop seeds when collect the plant if match the percentageToDropSeeds
          harvestWeedReward = {min = 13, max = 18}, --number of weed for harvest one plant
          plantTimer = 12000, --timer to plant weed
          processTimer = 7000, --timer to process weed
          rewardBoxWeed = {min = 3, max = 6}, --reward of weed
          openSeedsBoxTimer = 5000, --timer to open a box with the seeds order
          openSeedsBoxRewards = { --quantities of rewards in the box
            orderPrice = 5000,
            qtySeeds = {min = 4, max = 5},
            qtyNutrition = {min = 5, max = 15},
          },
          platingTimer = 7000, --timer to plant seed
          territoryDominatedPlantStage = 'stage-c', --if the territory is 100% dominated you will plant seeds in this stage
          produceJointTimer = 5000,--timer to produce one joint
      },
      [4] = {
          repLevelLimit = 10, --the level is between 5 and 10
          increaseRepValue = 0.01, --value to increase rep
          harvestTimer = 5000, --timer to harvest the plant
          percentageToDropSeeds = 17, --percentage to drop seeds when collect the plant
          numberToDropSeeds = 2, --number to drop seeds when collect the plant if match the percentageToDropSeeds
          harvestWeedReward = {min = 14, max = 18}, --number of weed for harvest one plant
          plantTimer = 10000, --timer to plant weed
          processTimer = 5000, --timer to process weed
          rewardBoxWeed = {min = 4, max = 6}, --reward of weed
          openSeedsBoxTimer = 3000, --timer to open a box with the seeds order
          openSeedsBoxRewards = { --quantities of rewards in the box
            orderPrice = 5000,
            qtySeeds = {min = 5, max = 8},
            qtyNutrition = {min = 8, max = 15},
          },
          platingTimer = 6000, --timer to plant seed
          territoryDominatedPlantStage = 'stage-c', --if the territory is 100% dominated you will plant seeds in this stage
          produceJointTimer = 4000,--timer to produce one joint
      }
  }

end

ConfigPlantations.Locale = 'EN'
ConfigPlantations.Locales = {
    ['EN'] = {
      ['NEW_LEVEL_REP'] = 'Raised your dealer reputation. Level %d',
      ['LABEL_PROCESS_WEED'] = 'Process Marijuana',
      ['LABEL_BUY_SEEDS'] = 'Order Seeds and Nutrition',
      ['LABEL_STATUS_WEED'] = 'Weed Stats',
      ['LABEL_DEATH_WEED'] = 'Remove Death Weed',
      ['LABEL_GRAB_WEED'] = 'Collect Weed',
      ['LABEL_FOOD_WEED'] = 'Food Weed',
      ['WEED_STATS_NAME'] = 'Species: %s',
      ['WEED_STATS_NUTRITION'] = 'Nutrition: %d%%',
      ['WEED_STATS_STAGE'] = 'Stage: %s',
      ['WEED_STATS_PROGRESS'] = 'Progress: %d%%',
      ['WEED_STATS_HEALTH'] = 'Health: %d%%',
      ['PROG_WEED_REMOVE'] = 'Removing plant...',
      ['PROG_WEED_COLLECT'] = 'Collect plant...',
      ['PROG_WEED_FOOD'] = 'Feeding plant...',
      ['PROG_WEED_PLANT'] = 'Plating seed...',
      ['NO_PLANT_ZONE'] = 'You cannot plant in this zone.',
      ['NO_PLANT_WATER'] = 'You cannot plant in water.',
      ['PROG_WEED_PROCESS'] = 'Processing weed...',
      ['ORDER_INFO'] = 'Take the keys and go get the box...',
      ['ORDER_INFO_LABEL'] = 'Open Box',
      ['PROG_ORDER_INFO'] = 'Opening the box...',
      ['NO_PLANT'] = 'The plant doenst exists.',
      ['SUCCESS_COLLECT_PLANT'] = 'Plant was collected.',
      ['INVALID_ID_PLANT'] = 'Invalid plant id.',
      ['NO_PLASTIC_BAGS'] = 'You have no plastic bags.',
      ['SUCCESS_FOOD_PLANT'] = 'Plant food is %d%%',
      ['SUCCESS_PROCESS_WEED'] = 'You process %d packages of weed.',
      ['NO_PLANTS'] = 'You have no plants.',
      ['CLOSE_MENU_STATUS'] = '⬅ Close',
      ['WEED_STATS_NUTRITION_DESC'] = 'Percentage of plant nutrition',
      ['WEED_STATS_STAGE_DESC'] = 'Plant stage level',
      ['WEED_STATS_PROGRESS_DESC'] = 'Plant progress to the next stage level',
      ['WEED_STATS_HEALTH_DESC'] = 'Plant health',
      ['WEED_STATS_NAME_DESC'] = 'Plant specie name',
      ['NO_WEED_JOINT'] = 'Not enougth weed to produce the joint',
      ['NO_WEED_PAPER'] = 'Not enougth rolling paper to produce the joint',
      ['PROG_ROLLING_JOINT'] = 'Rolling Joint...',
      ['NO_MONEY'] = 'You have no money',
      ['LABEL_DESTROY_POLICE'] = 'Seize Plant',
      ['NO_POLICE'] = 'No Police to plant weed seeds.',
      ['NO_ORDER_COOLDOWN'] = 'You need to wait some time until we get new material',
      ['ENTER_SHELL'] = 'Enter Weed Lab',
      ['EXIT_SHELL'] = 'Exit Weed Lab',
    },
    ['PT'] = {
      ['NEW_LEVEL_REP'] = 'Aumentaste a reputação de traficante. Estás nivel %d',
      ['LABEL_PROCESS_WEED'] = 'Processar Marijuana',
      ['LABEL_BUY_SEEDS'] = 'Comprar Sementes e Adubo',
      ['LABEL_STATUS_WEED'] = 'Info da planta',
      ['LABEL_DEATH_WEED'] = 'Remover Planta Morta',
      ['LABEL_GRAB_WEED'] = 'Apanhar Planta',
      ['LABEL_FOOD_WEED'] = 'Alimentar Planta',
      ['WEED_STATS_NAME'] = 'Espécie: %s',
      ['WEED_STATS_NUTRITION'] = 'Nutrição: %d%%',
      ['WEED_STATS_STAGE'] = 'Fase: %s',
      ['WEED_STATS_PROGRESS'] = 'Progresso: %d%%',
      ['WEED_STATS_HEALTH'] = 'Vida: %d%%',
      ['PROG_WEED_REMOVE'] = 'A remover a planta...',
      ['PROG_WEED_COLLECT'] = 'Colhendo a planta...',
      ['PROG_WEED_FOOD'] = 'A alimentar a planta...',
      ['PROG_WEED_PLANT'] = 'A plantar semente...',
      ['NO_PLANT_ZONE'] = 'Não podes plantar aqui.',
      ['NO_PLANT_WATER'] = 'Não podes plantar dentro de água.',
      ['PROG_WEED_PROCESS'] = 'A processar a droga...',
      ['ORDER_INFO'] = 'Leva as chaves da caixa e vai buscar a encomenda...',
      ['ORDER_INFO_LABEL'] = 'Abrir Caixa',
      ['PROG_ORDER_INFO'] = 'A abrir caixa...',
      ['NO_PLANT'] = 'Esta planta já não existe.',
      ['SUCCESS_COLLECT_PLANT'] = 'A planta foi colhida.',
      ['INVALID_ID_PLANT'] = 'Id da planta inválido.',
      ['NO_PLASTIC_BAGS'] = 'Não tens sacos suficientes.',
      ['SUCCESS_FOOD_PLANT'] = 'Valor da comida é %d%%',
      ['SUCCESS_PROCESS_WEED'] = 'Processaste %d pacotes de erva.',
      ['NO_PLANTS'] = 'Não tens plantas.',
      ['CLOSE_MENU_STATUS'] = '⬅ Sair',
      ['WEED_STATS_NUTRITION_DESC'] = 'Percentagem da nutrição da planta',
      ['WEED_STATS_STAGE_DESC'] = 'Fase de crescimento da planta',
      ['WEED_STATS_PROGRESS_DESC'] = 'Progresso da planta para a proxima fase',
      ['WEED_STATS_HEALTH_DESC'] = 'Vida da planta',
      ['WEED_STATS_NAME_DESC'] = 'Nome da espécie da planta',
      ['NO_WEED_JOINT'] = 'Não tens erva suficiente para produzir o charro',
      ['NO_WEED_PAPER'] = 'Não tens mortalhas para produzir o charro',
      ['PROG_ROLLING_JOINT'] = 'A enrolar o charro...',
      ['NO_MONEY'] = 'Não tens dinheiro',
      ['LABEL_DESTROY_POLICE'] = 'Apreender Planta',
      ['NO_POLICE'] = 'Não tens policia suficiente para plantar sementes de erva.',
      ['NO_ORDER_COOLDOWN'] = 'Tens de esperar algum tempo para termos novo material',
      ['ENTER_SHELL'] = 'Entrar Weed Lab',
      ['EXIT_SHELL'] = 'Sair Weed Lab',
    },
}

RegisterNetEvent('qp-weedplantations:sendNotification', function(msg, typeMsg, timer) --typeMsg possible results-> 'primary', 'error', 'success'
  if ConfigPlantations.Framework == 'esx' then
    TriggerEvent('esx:showNotification', msg)
  elseif ConfigPlantations.Framework == 'qbcore' then
    TriggerEvent('QBCore:Notify',msg, typeMsg, timer)
  end
end)