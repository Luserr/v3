ConfigCookMeth = {}
ConfigCookMeth.Framework = 'qbcore' ---[ 'esx' / 'qbcore' / 'vrp' ] Choose your framework.

ConfigCookMeth.PlayerLoadEvent   = 'QBCore:Client:OnPlayerLoaded' --event for player load, ESX = esx:playerLoaded, qbcore = QBCore:Client:OnPlayerLoaded
ConfigCookMeth.MainCoreEvent     = 'QBCore:GetObject' --ESX = 'esx:getSharedObject'   qbcore = 'QBCore:GetObject'
ConfigCookMeth.CoreResourceName  = 'qb-core'   --ESX = 'es_extended'           QBCORE = 'qb-core'
ConfigCookMeth.TargetResourceName  = 'qb-target' --If you have a custom target, change the name
ConfigCookMeth.MenuResourceName  = 'qb-menu' --menu 
ConfigCookMeth.SkillBarResourceName  = 'qb-skillbar'
ConfigCookMeth.TerritoriesResourceName  = 'qp-territories' --If you have integration with the qp-gangwars or qp-territories or none
ConfigCookMeth.InventoryEventForRequiredItems = 'inventory:client:requiredItems'
ConfigCookMeth.SetPoliceUpdateEvent  = 'police:SetCopCount' --event that will receive the updated police amount, only used for QB-core
ConfigCookMeth.Debug = true --turn on logs for debug errors
ConfigCookMeth.Locations = {
    OrderItems = {
        disable = false, --if you prefer another way to get the meth recipe items, you can simple disable it
        coords = vector3(-53.58, 6384.57, 31.49),
        job = nil,
        gang = nil,
        orderDistance = 2,--distance to target the order point
        mandatoryItem = nil,
        pickupOrderPoints = { --places where the order can be pickups
            vector4(1529.71, 6340.84, 24.14, 100),
            vector4(2015.55, 4982.13, 41.26, 100),
            vector4(1310.72, 4315.1, 38.0, 100),
            vector4(388.46, 3587.69, 33.29, 100),
            vector4(205.82, 2457.55, 56.29, 100),
            vector4(2044.53, 3177.33, 45.08, 100),
            vector4(-336.3, -1079.7, 23.03, 100),
            vector4(-453.52, -768.2, 30.56, 100),
            vector4(-1984.02, -307.5, 44.11, 100),
        },
        pedType = 'csb_tomcasino',
        cashMoneyId = 'cash',
    },
    CookMeth = {
        useShellMethLabMap = { -- this properties are used if the gta methlab map is active, if you have an addon map set the property active to false
            active = false,--use addon map by default, enter our discord and asks us for the map
            entryDoorCoord = vector4(-161.66, -1638.31, 37.25, 293.67), --door to enter the gta methlab
            methlabDoorCoord = vector4(997.21, -3200.72, -36.39, 325.99), --entry or exit point in the methlab
            shellName = nil,--if you have a custom shell set the name here ex: 'k4meth_shell'
            customShellSpawn = nil, --spawn coords if you have a custom shell ex: vector3(100.0, 100.0, 50.0)
            distanceDoor = 2, --distance to target the door
        }, --if this property is true, you need to define a dealer to teleport your player to the gta methlab coords, and define all the other coords, some off them are in commments bellow
        coords = vector3(-49.93, 6375.22, 29.29), --gta methlab coords vector3(1005.80,-3200.40,-38.90) , k4meth_shell - vector3(97.91, 97.66, 57.25)
        smokeCoords = vector3(-43.82, 6377.67, 40.95), --coords where the smoke warning is set up
        methBagCoords = vector3(-49.39, 6375.51, 29.29), --place where the box with meth will spawn
        methBagDeliveryCoords = vector3(-47.73, 6369.27, 28.81), --delivery cooords to collect the cooked drug
        cookAnimationRotation = vector3(0.0, 0.0, -130.0), --cutsceen animation rotation, gta methlab rotation vector3(0.0, 0.0, 0.0),  k4meth_shell - vector3(0.0, 0.0, 0.0)
        cookAnimationOffset = vector3(-1.6, -4.8, -0.4), --cutsceen animation offset , gta methlab offset vector3(-4.88,-1.95,0.0) , k4meth_shell - vector3(5.0, 2.0, -0.4)
        playerCookHeading = 47.95, --player heading to cook meth
        job = nil,
        gang = nil,
        calderonDistance = 1,--distance to target the canderon
        mandatoryItem = 'oxygenmaskdiv', --mandatory item to cook meth
        recipe = {--meth recipe
            [1] = {
                itemId = 'hydrochloric_acid',
                qty = 5,
            },
            [2] = {
                itemId = 'acetone',
                qty = 5,
            },
            [3] = {
                itemId = 'ephedrine',
                qty = 5,
            },
        },
        reward = 'puremethtray',--the item reward for cooking meth
        turnOffExplosion = false,
        typeExplosion = 2, --STICKYBOMB  explosion - https://docs.fivem.net/natives/?_0xE3AD2BDBAEE269AC
        rangeOffExplosion = 3, --radius for explosion
        maskComponentVariation = {idMask = 175, texture=0, color=1}, --mask to process meth
    }, 
    ProcessMeta = {
        coords = {--coords to process meth
            vector3(-53.02, 6363.7, 29.64),
            vector3(-50.51, 6366.03, 29.75),
            vector3(-48.77, 6367.69, 29.66)
        },
        job = nil, -- This is the job, set it nil if you dont want it, this can also be done with multiple jobs and grades, if you want multiple jobs you always need a grade with it: job = {["police"] = 0, ["ambulance"] = 2},
        gang = nil, -- This is the gang, set it nil if you dont want it, this can also be done with multiple gangs and grades, if you want multiple gangs you always need a grade with it: gang = {["ballas"] = 0, ["thelostmc"] = 2},
        mandatoryItem = nil,--mandatory item to process meth ex: 'spoon'
        distanceTarget = 2,--distance to use target
        recipeNormal = {
            qty = 5, --number of puremethtray needed to produce meth
        },
        recipeSuper = {
            extraItem = 'petrol_raffin',--item to add for the special recipe
            extraItemQty = 2, --qty of extraitem needed to produce the super recipe
        },
        reward = 'methtray', --meth final item
    },
    Controls = {
        Temperature = {
            coords = {
                vector3(-51.39, 6369.2, 28.82),
            },
            increaseTimer = 5000, --timer to increase the cooking temperature
            increaseValue = 5, --value to increase by the time, when the total value is 100 the cooking fail and explode
            increaseValueIfFailGame = 10,
            minValueToHandle = 10, --The player can only try to decrease the Temperature when it is greather than minValueToHandle value
            keyToPress = 304, -- key E
        },
        Pressure = {
            coords = {
                vector3(-53.65, 6370.8, 28.81)
            },
            increaseTimer = 5000, --timer to increase the cooking pressure
            increaseValue = 5, --value to increase by the time, when the total value is 100 the cooking fail and explode
            increaseValueIfFailGame = 10,
            minValueToHandle = 10, --The player can only try to decrease the pressure when it is greather than minValueToHandle value
            keyToPress = 304, -- key H
        }
    },
}
ConfigCookMeth.OrdersItemsMenu = {--define the items for mission orders
    [ConfigCookMeth.Locations.CookMeth.recipe[1].itemId] = {
        buyPrice = 10000,
        labelMenu = 'Bidons de Hidroxido'
    },
    [ConfigCookMeth.Locations.CookMeth.recipe[2].itemId] = {
        buyPrice = 10000,
        labelMenu = 'Galão de Acetona'
    },
    [ConfigCookMeth.Locations.CookMeth.recipe[3].itemId] = {
        buyPrice = 10000,
        labelMenu = 'Caixas de Ephedrine'
    }
}

ConfigCookMeth.Locale = 'EN'
ConfigCookMeth.Locales = {
    ['EN'] = {
        ['START_MISSION'] = 'Order Items',
        ['START_COOK_LABEL'] = 'Cook Meth',
        ['COOK_STEP2_LABEL'] = 'Add acetone',
        ['COOK_STEP3_LABEL'] = 'Add ephedrine',
        ['COOK_END_LABEL'] = 'Collect the pure meth',
        ['PROCESS_METH_LABEL'] = 'Process Cristals',
        ['MISSION_ITEM_HEADER'] = 'Laboratory orders',
        ['MISSION_ITEM_HEADER2'] = 'Available products',
        ['MISSION_ITEM_TEXT'] = 'Order your items!',
        ['MISSION_ITEM_PRICE'] = 'Price:',
        ['MENU_CLOSE'] = 'Close', 
        ['PROCESS_MENU_HEADER'] = 'Process method', 
        ['PROCESS_MENU_HEADER2'] = 'Normal process', 
        ['PROCESS_MENU_HEADER2_TEXT'] = 'Simples and pure, without mixes!',
        ['PROCESS_MENU_HEADER3'] = 'Mix Petrol',
        ['PROCESS_MENU_HEADER3_TEXT'] = 'You can get more product...',
        ['NO_PETROL'] = 'You have no Petrol.',
        ['PROGBAR_PROCESS_CRYSTALS'] = 'Processing crystals...',
        ['IS_COOKING'] = 'Cooking in progress.', 
        ['START_COOKING_INFO'] = 'Atention, do not let the cooking spoil...',
        ['PROGBAR_COOK'] = 'Cooking pure meth...',
        ['ADD_ITEM2'] = 'Add acetone to the meth',
        ['ADD_ITEM3'] = 'Add ephedrine to the meth',
        ['LABEL_PRESSURE'] = 'Pression: %d%% Press [H] to lower the pression',
        ['FAIL_PRESSURE'] = 'Take care of the pression or we all die...',
        ['LABEL_TEMPERATURE'] = 'Temperature: %d%% Press [H] to lower the temperature',
        ['FAIL_TEMPERATURE'] = 'Take care of the temperature or we all die...',
        ['NO_ITEM2'] = 'You have no acetone.',
        ['NO_ITEM3'] = 'You have no ephedrine.',
        ['SUCCESS_COOK'] = 'Great cooker, now collect the crystals from the cauldron...',
        ['PROGBAR_COLLECT_COOK'] = 'Collecting pure meth...',
        ['DELIVERY_BOX'] = 'Grab the box with the crystals and put it in the processment place.',
        ['DELIVERY_BOX_LABEL'] = 'Grab the box',
        ['DELIVERY_BOX_END_LABEL'] = 'Delivery box with meth',
        ['CANCEL_ACTION'] = 'Action canceled.',
        ['MISSION_IN_PROGRESS'] = 'You have one active pick up...',
        ['MISSION_REWARD'] = 'Follow your GPS and pick up your order.',
        ['MISSION_GET_REWARD'] = 'Collect the order.',
        ['NO_MONEY'] = 'You have no money.',
        ['NEW_LEVEL_REP'] = 'Raised your dealer reputation. Level %d',
        ['NO_COPS'] = 'Minimum %d polices in the city.',
        ['NO_PURE_METH'] = 'You have no pure meth to process',
        ['NO_ITEM_TO_COOK'] = 'You have no oxygen mask to cook.',
        ['NO_ITEM1_TO_COOK'] = 'You have no Hydroxide to start cooking.',
        ['NO_SPACE'] = 'You have no space to carried the items.',
        ['MISSION_SUCCESS'] = 'You got %d of %s',
        ['ENTER_GTA_METHLAB'] = 'Enter Meth Labs',
        ['EXIT_GTA_METHLAB'] = 'Leave Meth Labs',
        ['LOST_METH'] = 'Meth production fails. You need to control the temperature and pressure.',
    },
    ['PT'] = {
        ['START_MISSION'] = 'Começar Missão',
        ['START_COOK_LABEL'] = 'Cozinhar Meta',
        ['COOK_STEP2_LABEL'] = 'Adicionar Acetona',
        ['COOK_STEP3_LABEL'] = 'Adicionar efedrina',
        ['COOK_END_LABEL'] = 'Retirar a meta',
        ['PROCESS_METH_LABEL'] = 'Processar Cristais',
        ['MISSION_ITEM_HEADER'] = 'Encomendas laboratório',
        ['MISSION_ITEM_HEADER2'] = 'Produtos disponiveis',
        ['MISSION_ITEM_TEXT'] = 'Faz as tuas encomendas, 100% seguro!',
        ['MISSION_ITEM_PRICE'] = 'Preço:',
        ['MENU_CLOSE'] = 'Sair', 
        ['PROCESS_MENU_HEADER'] = 'Método de processamento', 
        ['PROCESS_MENU_HEADER2'] = 'Processo normal', 
        ['PROCESS_MENU_HEADER2_TEXT'] = 'Sem riscos de perder produto!',
        ['PROCESS_MENU_HEADER3'] = 'Misturar petróleo',
        ['PROCESS_MENU_HEADER3_TEXT'] = 'Podes conseguir mais cristais com este método...',
        ['NO_PETROL'] = 'Não tens Petroleo.',
        ['PROGBAR_PROCESS_CRYSTALS'] = 'A processar cristais...',
        ['IS_COOKING'] = 'Já estás a cozinhar meta.', 
        ['START_COOKING_INFO'] = 'Atenção, não deixes o cozinhado se estragar...',
        ['PROGBAR_COOK'] = 'A cozinhar meta pura...',
        ['ADD_ITEM2'] = 'Adiciona acetona na mistura',
        ['ADD_ITEM3'] = 'Adiciona efedrina na mistura',
        ['LABEL_PRESSURE'] = 'Pressão: %d%% Pressiona [H] para baixar a pressão',
        ['FAIL_PRESSURE'] = 'Ve lá se controlas a bem pressão, senão morremos todos...',
        ['LABEL_TEMPERATURE'] = 'Temperatura: %d%% Pressiona [H] para baixar a temparatura',
        ['FAIL_TEMPERATURE'] = 'Ve lá se controlas bem a temperatura, senão morremos todos...',
        ['NO_ITEM2'] = 'Não tens acetona suficiente.',
        ['NO_ITEM3'] = 'Não tens efedrina suficiente.',
        ['SUCCESS_COOK'] = 'Grande cozinheiro, agora retira os cristais do caldeirão...',
        ['PROGBAR_COLLECT_COOK'] = 'A retirar a meta pura...',
        ['DELIVERY_BOX'] = 'Pega na caixa da droga e entrega para o processamento.',
        ['DELIVERY_BOX_LABEL'] = 'Carregar a caixa',
        ['DELIVERY_BOX_END_LABEL'] = 'Entregar caixa de droga',
        ['CANCEL_ACTION'] = 'Ação cancelada.',
        ['MISSION_IN_PROGRESS'] = 'Já tens uma recolha a decorrer...',
        ['MISSION_REWARD'] = 'Segue o teu gps e recolhe a tua encomenda.',
        ['MISSION_GET_REWARD'] = 'Recolher a encomenda.',
        ['NO_MONEY'] = 'Não tens dinheiro.',
        ['NEW_LEVEL_REP'] = 'Aumentaste a reputação de traficante. Estás nivel %d',
        ['NO_COPS'] = 'Precisas no minimo de %d policias na cidade.',
        ['NO_PURE_METH'] = 'Não tens meta pura para processar',
        ['NO_ITEM_TO_COOK'] = 'Não tens mascara de oxigenio para cozinhar.',
        ['NO_ITEM1_TO_COOK'] = 'Não tens Hidroxido para começar a cozinhar.',
        ['NO_SPACE'] = 'Não consegues levar os items.',
        ['MISSION_SUCCESS'] = 'Recebeste %d de %s',
        ['ENTER_GTA_METHLAB'] = 'Entrar no laboratorio',
        ['EXIT_GTA_METHLAB'] = 'Sair do laboratorio',
        ['LOST_METH'] = 'Falhou a produção de droga. Não controlaram a pressão / temperatura.',
    },
}
ConfigCookMeth.MinNumberOfCopsToCook = 0 --min number of cops in your city to cook meth
ConfigCookMeth.PoliceJobs = {--only for ESX, the qb-core have her own event ConfigCookMeth.SetPoliceUpdateEvent
    'police',                         -- The police job names.
}
ConfigCookMeth.ReputationIdentifier = 'drugsrep' --rep name that you use in your server for drugs reputation

if ConfigCookMeth.Framework == 'esx' then
    --esx only allow one level
    ConfigCookMeth.ReputationLevels = {
        processMethTime = 60000, --time to process meth
        decreaseTemperatureValue = 5,--value to decrease the cooking temperature
        decreasePressureValue = 5,--value to decrease the cooking pressure
        cookingMethTime = 60000, --timer to clean the money
        cookingMethSecondItemTime = 60000, --time to mix the first recipe item to cook meth
        cookingMethThirdItemTime = 60000, --time to mix the second recipe item to cook meth
        cookingMethCollectTime = 20000, --Time to collect the cooked pure meth
        cookingMethReward = { min = 1, max = 15}, --quantity of meth that player can receive
        orderItemReward = { min = 7, max = 15}, --quantity of ordered items that player can receive
        processMethNormalRecipeReward = { min = 5, max = 10}, --quantity of meth that player can receive
        processMethSuperRecipeReward = { min = 8, max = 15}, --quantity of meth that player can receive
        multiplierRewardProcessDrugDominatedTerritory = 1, --increase the rewars when is processing the meth if the territory is dominated
    }

elseif ConfigCookMeth.Framework == 'qbcore' then
    ConfigCookMeth.ReputationLevels = {--the last level will be the higther configuration, for example if the player have reputation of 20 the level will be the last one (Level 4)
        [1] = {
            repLevelLimit = 1, --the level is between 0 and 1
            processMethTime = 60000, --time to process meth
            decreaseTemperatureValue = 10,--value to decrease the cooking temperature
            decreasePressureValue = 10,--value to decrease the cooking pressure
            cookingMethTime = 60000, --timer to clean the money
            cookingMethSecondItemTime = 60000, --time to mix the first recipe item to cook meth
            cookingMethThirdItemTime = 60000, --time to mix the second recipe item to cook meth
            cookingMethCollectTime = 20000, --Time to collect the cooked pure meth
            cookingMethReward = { min = 1, max = 12}, --quantity of meth that player can receive
            orderItemReward = { min = 4, max = 15}, --quantity of ordered items that player can receive
            processMethNormalRecipeReward = { min = 5, max = 10}, --quantity of meth that player can receive
            processMethSuperRecipeReward = { min = 8, max = 15}, --quantity of meth that player can receive
            increaseRepValue = 0.01, --increase the reputation when produce meth
            multiplierRewardProcessDrugDominatedTerritory = 0.5, --increase the rewars when is processing the meth if the territory is dominated
        },
        [2] = {
            cookingMethTime = 50000, --timer to clean the money
            repLevelLimit = 3, --the level is between 1 and 3
            processMethTime = 50000, --time to process meth
            decreaseTemperatureValue = 8,--value to decrease the cooking temperature
            decreasePressureValue = 8,--value to decrease the cooking pressure
            cookingMethSecondItemTime = 60000, --time to mix the first recipe item to cook meth
            cookingMethThirdItemTime = 60000, --time to mix the second recipe item to cook meth
            cookingMethCollectTime = 20000, --Time to collect the cooked pure meth
            cookingMethReward = { min = 3, max = 12}, --quantity of meth that player can receive
            orderItemReward = { min = 6, max = 15}, --quantity of ordered items that player can receive
            processMethNormalRecipeReward = { min = 5, max = 10}, --quantity of meth that player can receive
            processMethSuperRecipeReward = { min = 10, max = 15}, --quantity of meth that player can receive
            increaseRepValue = 0.01, --increase the reputation when produce meth
            multiplierRewardProcessDrugDominatedTerritory = 0.5, --increase the rewars when is processing the meth if the territory is dominated
        },
        [3] = {
            cookingMethTime = 48000, --timer to clean the money
            repLevelLimit = 5, --the level is between 3 and 5
            processMethTime = 45000, --time to process meth
            decreaseTemperatureValue = 5,--value to decrease the cooking temperature
            decreasePressureValue = 5,--value to decrease the cooking pressure
            cookingMethSecondItemTime = 50000, --time to mix the first recipe item to cook meth
            cookingMethThirdItemTime = 55000, --time to mix the second recipe item to cook meth
            cookingMethCollectTime = 18000, --Time to collect the cooked pure meth
            cookingMethReward = { min = 6, max = 12}, --quantity of meth that player can receive
            orderItemReward = { min = 8, max = 15}, --quantity of ordered items that player can receive
            processMethNormalRecipeReward = { min = 5, max = 10}, --quantity of meth that player can receive
            processMethSuperRecipeReward = { min = 12, max = 15}, --quantity of meth that player can receive
            increaseRepValue = 0.01, --increase the reputation when produce meth
            multiplierRewardProcessDrugDominatedTerritory = 0.6, --increase the rewars when is processing the meth if the territory is dominated
        },
        [4] = {
            cookingMethTime = 40000, --timer to clean the money
            repLevelLimit = 10, --the level is between 5 and 10
            processMethTime = 30000, --time to process meth
            decreaseTemperatureValue = 3,--value to decrease the cooking temperature
            decreasePressureValue = 3,--value to decrease the cooking pressure
            cookingMethSecondItemTime = 45000, --time to mix the first recipe item to cook meth
            cookingMethThirdItemTime = 46000, --time to mix the second recipe item to cook meth
            cookingMethCollectTime = 15000, --Time to collect the cooked pure meth
            cookingMethReward = { min = 8, max = 12}, --quantity of meth that player can receive
            orderItemReward = { min = 10, max = 15}, --quantity of ordered items that player can receive
            processMethNormalRecipeReward = { min = 5, max = 10}, --quantity of meth that player can receive
            processMethSuperRecipeReward = { min = 13, max = 18}, --quantity of meth that player can receive
            increaseRepValue = 0.01, --increase the reputation when produce meth
            multiplierRewardProcessDrugDominatedTerritory = 0.8, --increase the rewars when is processing the meth if the territory is dominated
        }
    }
elseif ConfigCookMeth.Framework == 'vrp' then
    --next version, not implemented.  
end

function DrawText3D(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

RegisterNetEvent('qp-methlabs:sendNotification', function(msg, typeMsg, timer) --typeMsg possible results-> 'primary', 'error', 'success'
    if ConfigCookMeth.Framework == 'esx' then
      TriggerEvent('esx:showNotification', msg)
    elseif ConfigCookMeth.Framework == 'qbcore' then
      TriggerEvent('QBCore:Notify',msg, typeMsg, timer)
      
    elseif ConfigCookMeth.Framework == 'vrp' then
      --next version, not implemented. 
  
    end
   
end)