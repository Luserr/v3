ConfigMoneyLaudering = {}
ConfigMoneyLaudering.Framework = 'qbus' ---[ 'esx' / 'qbus' / 'vrp' ] Choose your framework.

ConfigMoneyLaudering.PlayerLoadEvent   = 'QBCore:Client:OnPlayerLoaded' --event for player load, ESX = esx:playerLoaded, Qbus = QBCore:Client:OnPlayerLoaded
ConfigMoneyLaudering.MainCoreEvent     = 'QBCore:GetObject' --ESX = 'esx:getSharedObject'   QBUS = 'QBCore:GetObject'
ConfigMoneyLaudering.CoreResourceName  = 'qb-core'   --ESX = 'es_extended'           QBCORE = 'qb-core'
ConfigMoneyLaudering.TargetResourceName  = 'qb-target' --If you have a custom target, change the name
ConfigMoneyLaudering.TerritoriesResourceName  = 'qp-gangwars' --If you have integration with the qp-gangwars or qp-territories or none

ConfigMoneyLaudering.Locale = 'EN'
ConfigMoneyLaudering.Locales = {
    ['PT'] = {
      ['PED_INFO'] = 'Lavar dinheiro',
      ['NO_ITEMS'] = 'Não tens o que preciso',
      ['ITEMS'] = 'Items: ',
      ['LAUNDERING_PROGRESS'] = 'A lavar o dinheiro sujo...',
      ['NO_DIRTY_MONEY'] = 'Não tens a quantidade de dinheiro sujo para lavar',
      ['ERROR_REMOVE_ITEMS'] = 'Erro a remover os items',
      ['SUCCESS_LAUNDERING'] = 'Lavas-te %.2f de dinheiro sujo e recebeste %.2f em %s.',
      ['NEW_LEVEL_REPUTATION'] = 'Aumentas-te a tua reputação na lavagem de dinheiro. Estás nivel %d',
      ['CRYPTO_TRANSACTION_INFO'] = 'Recebeste %d de Qbit(s)',
      ['NOTIFY_POLICE_TITLE'] = 'Lavagem de dinheiro',
      ['NOTIFY_POLICE_DESC'] = 'Actividades suspeitas com troca de favores.',
      ['CASH_LABEL'] = 'dinheiro',
      ['CRYPTO_LABEL'] = 'QBits',
      ['SEIZE_POLICE_LABEL'] = 'A Policia esta a proteger a zona.',
      ['NOT_ENOUGHT_CRYPTO_LAUNDERING'] = 'Ahaha, Não te vou dar %s por %.2f de dinheiro sujo. Volta mais tarde mas traz mais quantidade de dinheiro para lavar.',
    },
    ['EN'] = {
      ['PED_INFO'] = 'Money Laundry',
      ['NO_ITEMS'] = 'You dont have the required items',
      ['ITEMS'] = 'Items: ',
      ['LAUNDERING_PROGRESS'] = 'Laundering the money...',
      ['NO_DIRTY_MONEY'] = 'You dont have the required quantity of dirty money to laundry',
      ['ERROR_REMOVE_ITEMS'] = 'Error removing the items',
      ['SUCCESS_LAUNDERING'] = 'You laundry %.2f of dirty money and you earn %.2f in %s.',
      ['NEW_LEVEL_REPUTATION'] = 'You increased the reputation level. Your level is %d',
      ['CRYPTO_TRANSACTION_INFO'] = 'You earn %d of Qbit(s)',
      ['NOTIFY_POLICE_TITLE'] = 'Money Laundry',
      ['NOTIFY_POLICE_DESC'] = 'Suspicious activities with exchange of favors.',
      ['CASH_LABEL'] = 'money',
      ['CRYPTO_LABEL'] = 'QBits',
      ['SEIZE_POLICE_LABEL'] = 'Police is protecting the zone.',
      ['NOT_ENOUGHT_CRYPTO_LAUNDERING'] = 'Ahaha, I will not give you any %s for %.2f of dirty money. Come back later with more quantity of money to laundry.',
    }  
}

ConfigMoneyLaudering.QtyDirtyMoneyToExchange = 100000 --this means, the player can only exchange 100 000 of dirty money for each time
ConfigMoneyLaudering.DirtyMoneyIdentifier = 'black_money'
ConfigMoneyLaudering.UseDirtyMoneyAsItem = false --this means if you want use givemoney or giveitem , False will use /givemoney
ConfigMoneyLaudering.CryptoCashValue = 1000 --how much value crypto is related to cash, ex: 1 crypto = 1000 cash

ConfigMoneyLaudering.PedsToLaundering = {
  [1] = {
    name = 'Casino Dealer',
    pedType = 'S_F_Y_Casino_01',
    pedClothesVariant = function(ped)
      SetPedComponentVariation(ped, 0, 1, 1, 0)
      SetPedComponentVariation(ped, 1, 0, 0, 0)
      SetPedComponentVariation(ped, 2, 1, 0, 0)
      SetPedComponentVariation(ped, 3, 0, 3, 0)
      SetPedComponentVariation(ped, 4, 0, 0, 0)
      SetPedComponentVariation(ped, 6, 0, 0, 0)
      SetPedComponentVariation(ped, 7, 0, 0, 0)
      SetPedComponentVariation(ped, 8, 0, 0, 0)
      SetPedComponentVariation(ped, 10, 0, 0, 0)
      SetPedComponentVariation(ped, 11, 0, 0, 0)
    end,
    coords = vector4(938.98, 8.96, 74.49, 18.29),
    itemsToExchange = {
      [1] = {
        itemName = 'bread',
        qty = 2,
        isToRemove = true,
      },
      [2] = {
        itemName = 'water',
        qty = 5,
        isToRemove = true,
      },
    },
    allPlayersCanInteract = true,
    allowedJobsGangsToInteract = {},
    percentageToYou = 50, --50% percentage to give from the dirty money
    receiveMoneyIdentifier = 'crypto', -- you can choose cash or crypto for example
    useQbCrypto = true, -- use crypto
    multiplierDominatedTerritories = 0.5, --This option only works integrated with the qp-territories or qp-gangwars scripts. This will multiplier the value from the money laundry if the territory is dominated. The dealer spot should be created inside the territory.
  },
  [2] = {
    name = 'Burger Dealer',
    pedType = 'csb_burgerdrug',
    pedClothesVariant = function(ped)
      
    end,
    coords = vector4(-1196.51, -891.69, 13.0, 301.13),
    itemsToExchange = {
      [1] = {
        itemName = 'bread',
        qty = 5,
        isToRemove = true,
      },
      [2] = {
        itemName = 'water',
        qty = 5,
        isToRemove = true,
      },
    },
    allPlayersCanInteract = false,
    allowedJobsGangsToInteract = {'vagos'},
    percentageToYou = 30, --30% percentage to give from the dirty money
    receiveMoneyIdentifier = 'cash', -- you can choose cash or crypto for example
    useQbCrypto = false, -- use crypto
    multiplierDominatedTerritories = 0.5, --This option only works integrated with the qp-territories or qp-gangwars scripts. This will multiplier the value from the money laundry if the territory is dominated. The dealer spot should be created inside the territory.
  },
  [3] = {
    name = 'Territory Dealer 1',
    pedType = 's_m_y_dealer_01',
    pedClothesVariant = function(ped)
      
    end,
    coords = vector4(-1171.93, -1576.42, 3.39, 119.47),
    itemsToExchange = {
      [1] = {
        itemName = 'bread',
        qty = 5,
        isToRemove = true,
      },
      [2] = {
        itemName = 'water',
        qty = 5,
        isToRemove = true,
      },
    },
    allPlayersCanInteract = true,
    allowedJobsGangsToInteract = {},
    percentageToYou = 50, --50% percentage that you will receive from the dirty money process
    receiveMoneyIdentifier = 'cash', -- you can choose cash or crypto for example
    useQbCrypto = false, -- use crypto
    multiplierDominatedTerritories = 0.5, --This option only works integrated with the qp-territories or qp-gangwars scripts. This will multiplier the value from the money laundry if the territory is dominated. The dealer spot should be created inside the territory.
  }
}

ConfigMoneyLaudering.DefaultTimeForMoneyLaundry = 20000 --default value, only used in ESX because qbus use the reputation levels
ConfigMoneyLaudering.PoliceMinInfluence = 30 --0 - 100, min vale for police protect territories and you cannot laundry money
ConfigMoneyLaudering.ReputationIncrement = 0.01 --the system will increment the money Laundry reputation 0.01 for each time that the money is Laundry
ConfigMoneyLaudering.ReputationLevels = {--the last level will be the higther configuration, for example if the player have reputation of 20 the level will be the last one (Level 4)
  [1] = {
    launderingTime = 30000, --timer to clean the money
    repLevelLimit = 1, --the level is between 0 and 1
    increaseLaundryPercentage = 0, --number of percentage to increase the dealer returns
  },
  [2] = {
    launderingTime = 20000, --timer to clean the money
    repLevelLimit = 3, --the level is between 1 and 3
    increaseLaundryPercentage = 0, --number of percentage to increase the dealer returns
  },
  [3] = {
    launderingTime = 10000, --timer to clean the money
    repLevelLimit = 5, --the level is between 3 and 5
    increaseLaundryPercentage = 5, --number of percentage to increase the dealer returns
  },
  [4] = {
    launderingTime = 5000, --timer to clean the money
    repLevelLimit = 10, --the level is between 5 and 10
    increaseLaundryPercentage = 10, --number of percentage to increase the dealer returns
  }
}

function notifyPolice(playerPedId, coords)
  --your code to call police, if you dont want notify the police just remove the code inside this function
  if ConfigMoneyLaudering.Framework == 'esx' then
    --implement he you notify police esx code
  elseif ConfigMoneyLaudering.Framework == 'qbus' then
    local Skillbar = exports['qb-skillbar']:GetSkillbarObject()
    local gameDone = 0
    Skillbar.Start({
        duration = math.random(5000, 10000),
        pos = math.random(10, 30),
        width = math.random(10, 20),
    }, function()
      if gameDone < 2 then
          Skillbar.Repeat({
              duration = math.random(500, 1000),
              pos = math.random(10, 30),
              width = math.random(5, 12),
          })
              gameDone = gameDone + 1
      end
      
    end, function()
      --fail game
      if gameDone < 3 then
        exports['core_dispatch']:addCall("10-90", ConfigMoneyLaudering.Locales[ConfigMoneyLaudering.Locale]['NOTIFY_POLICE_TITLE'], {
            {icon="fa-ruler", info=ConfigMoneyLaudering.Locales[ConfigMoneyLaudering.Locale]['NOTIFY_POLICE_DESC']}
        }, {coords.x, coords.y, coords.z}, "police", 3000, 11, 5 )
      end
      
    end)
    
  elseif ConfigMoneyLaudering.Framework == 'vrp' then
    --next version, not implemented. 

  end  
  
end

RegisterNetEvent('qp-moneylaundry:sendNotification', function(msg, typeMsg, timer) --typeMsg possible results-> 'primary', 'error', 'success'
  if ConfigMoneyLaudering.Framework == 'esx' then
    TriggerEvent('esx:showNotification', msg)
  elseif ConfigMoneyLaudering.Framework == 'qbus' then
    TriggerEvent('QBCore:Notify',msg, typeMsg, timer)
    
  elseif ConfigMoneyLaudering.Framework == 'vrp' then
    --next version, not implemented. 

  end
 
end)
