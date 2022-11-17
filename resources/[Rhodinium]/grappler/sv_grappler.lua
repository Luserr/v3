local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = {}
grapplers = L0_1
L0_1 = {}
handBrakeEnabled = L0_1
L0_1 = {}
L0_1.install = "install"
L0_1.deploy = "deploy"
L0_1.remove = "remove"
L0_1.reset = "reset"
grapplerActions = L0_1
L0_1 = {}
L0_1.installed = "installed"
L0_1.deployed = "deployed"
L0_1.used = "used"
L0_1.inactive = "inactive"
grapplerModes = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = "xxxxxxx"
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = L1_2
  L4_2 = "[xy]"
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if "x" == A0_3 then
      L1_3 = L0_2
      L2_3 = 0
      L3_3 = 15
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        goto lbl_13
      end
    end
    L1_3 = L0_2
    L2_3 = 8
    L3_3 = 11
    L1_3 = L1_3(L2_3, L3_3)
    ::lbl_13::
    L2_3 = string
    L2_3 = L2_3.format
    L3_3 = "%x"
    L4_3 = L1_3
    return L2_3(L3_3, L4_3)
  end
  return L2_2(L3_2, L4_2, L5_2)
end
generateEventKey = L0_1
L0_1 = tostring
L1_1 = generateEventKey
L1_1, L2_1, L3_1, L4_1 = L1_1()
L0_1 = L0_1(L1_1, L2_1, L3_1, L4_1)
eventKey = L0_1
L0_1 = SetConvarReplicated
L1_1 = "EKey2"
L2_1 = eventKey
L0_1(L1_1, L2_1)
L0_1 = true
L1_1 = grapplerCommand
L1_1 = L1_1.enabled
if L1_1 then
  L1_1 = RegisterCommand
  L2_1 = grapplerCommand
  L2_1 = L2_1.commandName
  function L3_1(A0_2, A1_2)
    local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
    L2_2 = A0_2
    L3_2 = userHasPermission
    L4_2 = L2_2
    L5_2 = grapplerCommand
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L4_2 = A1_2[1]
      if nil == L4_2 then
        L4_2 = TriggerClientEvent
        L5_2 = "Client:grapplerNotification"
        L6_2 = L2_2
        L7_2 = translations
        L7_2 = L7_2.invalidGrapplerArguments
        L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = A1_2[1]
        L5_2 = grapplerCommand
        L5_2 = L5_2.install
        if L4_2 == L5_2 then
          L4_2 = TriggerClientEvent
          L5_2 = "Client:grapplerCommand"
          L6_2 = L2_2
          L7_2 = grapplerActions
          L7_2 = L7_2.install
          L4_2(L5_2, L6_2, L7_2)
        else
          L4_2 = A1_2[1]
          L5_2 = grapplerCommand
          L5_2 = L5_2.deploya
          if L4_2 == L5_2 then
            L4_2 = TriggerClientEvent
            L5_2 = "Client:grapplerCommand"
            L6_2 = L2_2
            L7_2 = grapplerActions
            L7_2 = L7_2.deploy
            L4_2(L5_2, L6_2, L7_2)
          else
            L4_2 = A1_2[1]
            L5_2 = grapplerCommand
            L5_2 = L5_2.remove
            if L4_2 == L5_2 then
              L4_2 = TriggerClientEvent
              L5_2 = "Client:grapplerCommand"
              L6_2 = L2_2
              L7_2 = grapplerActions
              L7_2 = L7_2.remove
              L4_2(L5_2, L6_2, L7_2)
            else
              L4_2 = A1_2[1]
              L5_2 = grapplerCommand
              L5_2 = L5_2.reset
              if L4_2 == L5_2 then
                L4_2 = TriggerClientEvent
                L5_2 = "Client:grapplerCommand"
                L6_2 = L2_2
                L7_2 = grapplerActions
                L7_2 = L7_2.reset
                L4_2(L5_2, L6_2, L7_2)
              else
                L4_2 = TriggerClientEvent
                L5_2 = "Client:grapplerNotification"
                L6_2 = L2_2
                L7_2 = translations
                L7_2 = L7_2.invalidGrapplerArguments
                L4_2(L5_2, L6_2, L7_2)
              end
            end
          end
        end
      end
    else
      L4_2 = TriggerClientEvent
      L5_2 = "Client:grapplerNotification"
      L6_2 = L2_2
      L7_2 = translations
      L7_2 = L7_2.noPermission
      L4_2(L5_2, L6_2, L7_2)
    end
  end
  L4_1 = grapplerCommand
  L4_1 = L4_1.acePermissions
  L4_1 = L4_1.enabled
  L1_1(L2_1, L3_1, L4_1)
end
L1_1 = RegisterServerEvent
L2_1 = "Server:requestGrapplerTable"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Server:requestGrapplerTable"
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "Client:receiveGrapplerTable"
  L3_2 = L0_2
  L4_2 = grapplers
  L1_2(L2_2, L3_2, L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "Server:newGrapplerLog"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Server:newGrapplerLog"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = source
  L4_2 = eventKey
  if A0_2 == L4_2 then
    L4_2 = normalLog
    L5_2 = L3_2
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "Server:updateGrapplerTable"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Server:updateGrapplerTable"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = source
  L5_2 = eventKey
  if A0_2 == L5_2 then
    L5_2 = grapplers
    L5_2 = L5_2[A1_2]
    if nil == L5_2 then
      L5_2 = grapplers
      L6_2 = {}
      L5_2[A1_2] = L6_2
    end
    L5_2 = grapplers
    L5_2 = L5_2[A1_2]
    L5_2.mode = A2_2
    L5_2 = grapplers
    L5_2 = L5_2[A1_2]
    L5_2.model = A3_2
    L5_2 = grapplers
    L5_2 = L5_2[A1_2]
    L5_2.owner = L4_2
    if nil == A3_2 then
      L5_2 = TriggerClientEvent
      L6_2 = "Client:updateGrapplerTable"
      L7_2 = -1
      L8_2 = A1_2
      L9_2 = A2_2
      L10_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    else
      L5_2 = TriggerClientEvent
      L6_2 = "Client:updateGrapplerTable"
      L7_2 = -1
      L8_2 = A1_2
      L9_2 = A2_2
      L10_2 = L4_2
      L11_2 = A3_2
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "Server:deployGrapplerOnVehicle"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Server:deployGrapplerOnVehicle"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = eventKey
  if A0_2 == L4_2 then
    L4_2 = grapplers
    L4_2 = L4_2[A1_2]
    if nil ~= L4_2 then
      L4_2 = grapplers
      L4_2 = L4_2[A1_2]
      L4_2 = L4_2.mode
      L5_2 = grapplerModes
      L5_2 = L5_2.deployed
      if L4_2 == L5_2 then
        L4_2 = grapplers
        L4_2 = L4_2[A1_2]
        L4_2.targetVehicle = A2_2
        L4_2 = grapplers
        L4_2 = L4_2[A1_2]
        L5_2 = grapplerModes
        L5_2 = L5_2.used
        L4_2.mode = L5_2
        L4_2 = TriggerClientEvent
        L5_2 = "Client:deployGrapplerOnVehicle"
        L6_2 = -1
        L7_2 = A1_2
        L8_2 = A2_2
        L9_2 = A3_2
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "Server:updateHandBrakeTable"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Server:updateHandBrakeTable"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = handBrakeEnabled
  L3_2 = {}
  L3_2.targetNetId = A1_2
  L2_2[A0_2] = L3_2
end
L1_1(L2_1, L3_1)
L1_1 = RegisterServerEvent
L2_1 = "Server:requestHandbrakeTable"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Server:requestHandbrakeTable"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = TriggerClientEvent
  L2_2 = "Client:updateHandBrakeTable"
  L3_2 = -1
  L4_2 = handBrakeEnabled
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "playerEnteredScope"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = A0_2.player
  L2_2 = A0_2["for"]
  L3_2 = pairs
  L4_2 = grapplers
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = tonumber
    L10_2 = L8_2.owner
    L9_2 = L9_2(L10_2)
    L10_2 = tonumber
    L11_2 = L2_2
    L10_2 = L10_2(L11_2)
    if L9_2 == L10_2 then
      L9_2 = TriggerClientEvent
      L10_2 = "Client:GrapplerInstallForOutOfScope"
      L11_2 = L1_2
      L12_2 = grapplers
      L13_2 = L7_2
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
  end
end
L1_1(L2_1, L3_1)
