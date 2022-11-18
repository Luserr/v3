local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
grapplers = L0_1
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
L0_1 = {}
L0_1.wheel_lf = 0
L0_1.wheel_rf = 1
L0_1.wheel_lm = 2
L0_1.wheel_rm = 3
L0_1.wheel_lr = 4
L0_1.wheel_rr = 5
tyreBurstIndex = L0_1
L0_1 = GetConvar
L1_1 = "EKey2"
L2_1 = ""
L0_1 = L0_1(L1_1, L2_1)
L1_1 = grapplerCommand
L1_1 = L1_1.enabled
if L1_1 then
  L1_1 = TriggerEvent
  L2_1 = "chat:addSuggestion"
  L3_1 = "/"
  L4_1 = grapplerCommand
  L4_1 = L4_1.commandName
  L3_1 = L3_1 .. L4_1
  L4_1 = translations
  L4_1 = L4_1.grapplerCommandHelp
  L5_1 = {}
  L6_1 = {}
  L7_1 = translations
  L7_1 = L7_1.grapplerCommandParameterOne
  L6_1.name = L7_1
  L7_1 = translations
  L7_1 = L7_1.grapplerCommandParameterOneHelp
  L6_1.help = L7_1
  L5_1[1] = L6_1
  L1_1(L2_1, L3_1, L4_1, L5_1)
end
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L0_2 = Wait
  L1_2 = 2500
  L0_2(L1_2)
  L0_2 = TriggerServerEvent
  L1_2 = "Server:requestGrapplerTable"
  L0_2(L1_2)
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetVehiclePedIsIn
    L2_2 = L0_2
    L3_2 = false
    L1_2 = L1_2(L2_2, L3_2)
    if nil ~= L1_2 and 0 ~= L1_2 then
      L2_2 = GetPedInVehicleSeat
      L3_2 = L1_2
      L4_2 = -1
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = VehToNet
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = grapplers
      L4_2 = L4_2[L3_2]
      if nil ~= L4_2 and L2_2 == L0_2 then
        L4_2 = grapplers
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.mode
        L5_2 = grapplerModes
        L5_2 = L5_2.installed
        if L4_2 == L5_2 then
          L4_2 = IsControlPressed
          L5_2 = deployGrapplerKey
          L5_2 = L5_2[1]
          L6_2 = deployGrapplerKey
          L6_2 = L6_2[2]
          L4_2 = L4_2(L5_2, L6_2)
          if L4_2 then
            L4_2 = deployGrappler
            L4_2()
            L4_2 = Wait
            L5_2 = 3000
            L4_2(L5_2)
          end
        end
        L4_2 = grapplers
        L4_2 = L4_2[L3_2]
        L4_2 = L4_2.mode
        L5_2 = grapplerModes
        L5_2 = L5_2.deployed
        if L4_2 == L5_2 then
          L4_2 = DoesEntityExist
          L5_2 = grapplers
          L5_2 = L5_2[L3_2]
          L5_2 = L5_2.props
          L5_2 = L5_2[2]
          L4_2 = L4_2(L5_2)
          if L4_2 then
            L4_2 = GetEntityCoords
            L5_2 = grapplers
            L5_2 = L5_2[L3_2]
            L5_2 = L5_2.props
            L5_2 = L5_2[2]
            L4_2 = L4_2(L5_2)
            L5_2 = raycastDeploy
            L6_2 = L1_2
            L7_2 = L4_2
            L5_2 = L5_2(L6_2, L7_2)
            if nil ~= L5_2 and 0 ~= L5_2 then
              L6_2 = pairs
              L7_2 = wheelBones
              L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
              for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
                L12_2 = GetEntityBoneIndexByName
                L13_2 = L5_2
                L14_2 = L10_2
                L12_2 = L12_2(L13_2, L14_2)
                if -1 ~= L12_2 then
                  L13_2 = GetWorldPositionOfEntityBone
                  L14_2 = L5_2
                  L15_2 = L12_2
                  L13_2 = L13_2(L14_2, L15_2)
                  L14_2 = L4_2 - L13_2
                  L14_2 = #L14_2
                  L15_2 = VehToNet
                  L16_2 = L5_2
                  L15_2 = L15_2(L16_2)
                  L16_2 = main
                  L16_2 = L16_2.radiusToAttachToVehicle
                  if L14_2 < L16_2 then
                    L16_2 = GetEntityModel
                    L17_2 = L1_2
                    L16_2 = L16_2(L17_2)
                    L17_2 = TriggerServerEvent
                    L18_2 = "Server:newGrapplerLog"
                    L19_2 = L0_1
                    L20_2 = translations
                    L20_2 = L20_2.usedGrappler
                    L21_2 = translations
                    L21_2 = L21_2.vehicle
                    L22_2 = vehicles
                    L22_2 = L22_2[L16_2]
                    L22_2 = L22_2.name
                    L21_2 = L21_2 .. L22_2
                    L17_2(L18_2, L19_2, L20_2, L21_2)
                    L17_2 = TriggerServerEvent
                    L18_2 = "Server:deployGrapplerOnVehicle"
                    L19_2 = L0_1
                    L20_2 = L3_2
                    L21_2 = L15_2
                    L22_2 = L10_2
                    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
                    L17_2 = Wait
                    L18_2 = 5000
                    L17_2(L18_2)
                    break
                  end
                end
              end
              L6_2 = Wait
              L7_2 = 500
              L6_2(L7_2)
            end
          end
        end
      else
        L4_2 = Wait
        L5_2 = 2000
        L4_2(L5_2)
      end
    else
      L2_2 = pairs
      L3_2 = grapplers
      L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
      for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
        L8_2 = L7_2.mode
        L9_2 = grapplerModes
        L9_2 = L9_2.inactive
        if L8_2 ~= L9_2 then
          L8_2 = NetToVeh
          L9_2 = L6_2
          L8_2 = L8_2(L9_2)
          L9_2 = DoesEntityExist
          L10_2 = L8_2
          L9_2 = L9_2(L10_2)
          if not L9_2 then
            L9_2 = clearGrapplerProps
            L10_2 = L6_2
            L9_2(L10_2)
            L9_2 = grapplers
            L9_2[L6_2] = nil
          end
        end
      end
      L2_2 = Wait
      L3_2 = 1000
      L2_2(L3_2)
    end
    L2_2 = Wait
    L3_2 = 0
    L2_2(L3_2)
  end
end
L1_1(L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = vehicles
  L1_2 = L1_2[A0_2]
  if nil == L1_2 then
    L1_2 = false
    return L1_2
  else
    L1_2 = true
    return L1_2
  end
end
isVehicleModelAllowed = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = L0_2
  L4_2 = 0.0
  L5_2 = 10.0
  L6_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = StartShapeTestCapsule
  L4_2 = L1_2.x
  L5_2 = L1_2.y
  L6_2 = L1_2.z
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = 10.0
  L11_2 = 2
  L12_2 = L0_2
  L13_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = GetShapeTestResult
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  return L8_2
end
raycast = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = GetOffsetFromEntityInWorldCoords
  L3_2 = A0_2
  L4_2 = 0.0
  L5_2 = 10.0
  L6_2 = 0.0
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = StartShapeTestCapsule
  L4_2 = A1_2.x
  L5_2 = A1_2.y
  L6_2 = A1_2.z
  L7_2 = L2_2.x
  L8_2 = L2_2.y
  L9_2 = L2_2.z
  L10_2 = main
  L10_2 = L10_2.radiusToAttachToVehicle
  L11_2 = 2
  L12_2 = A0_2
  L13_2 = 0
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L4_2 = GetShapeTestResult
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2, L8_2 = L4_2(L5_2)
  return L8_2
end
raycastDeploy = L1_1
L1_1 = RegisterNetEvent
L2_1 = "Client:receiveGrapplerTable"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Client:receiveGrapplerTable"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if nil == A0_2 then
    L1_2 = nil
    return L1_2
  end
  grapplers = A0_2
  L1_2 = pairs
  L2_2 = grapplers
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = NetToVeh
    L8_2 = L5_2
    L7_2 = L7_2(L8_2)
    L8_2 = DoesEntityExist
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = setupNewMode
      L9_2 = L5_2
      L8_2(L9_2)
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "Client:updateGrapplerTable"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Client:updateGrapplerTable"
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = grapplers
  L4_2 = L4_2[A0_2]
  if nil == L4_2 then
    L4_2 = grapplers
    L5_2 = {}
    L4_2[A0_2] = L5_2
    L4_2 = grapplers
    L4_2 = L4_2[A0_2]
    L5_2 = grapplerModes
    L5_2 = L5_2.inactive
    L4_2.mode = L5_2
    L4_2 = grapplers
    L4_2 = L4_2[A0_2]
    L4_2.owner = nil
    L4_2 = grapplers
    L4_2 = L4_2[A0_2]
    L5_2 = {}
    L4_2.props = L5_2
    if nil ~= A3_2 then
      L4_2 = grapplers
      L4_2 = L4_2[A0_2]
      L4_2.model = A3_2
    end
  end
  L4_2 = grapplers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.mode
  L5_2 = removeOldMode
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = grapplers
  L5_2 = L5_2[A0_2]
  L5_2.mode = A1_2
  L5_2 = grapplers
  L5_2 = L5_2[A0_2]
  L5_2.owner = A2_2
  L5_2 = setupNewMode
  L6_2 = A0_2
  L5_2(L6_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "Client:grapplerCommand"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Client:grapplerCommand"
function L3_1(A0_2)
  local L1_2
  L1_2 = grapplerActions
  L1_2 = L1_2.install
  if A0_2 == L1_2 then
    L1_2 = installGrappler
    L1_2()
  else
    L1_2 = grapplerActions
    L1_2 = L1_2.deploy
    if A0_2 == L1_2 then
      L1_2 = deployGrappler
      L1_2()
    else
      L1_2 = grapplerActions
      L1_2 = L1_2.remove
      if A0_2 == L1_2 then
        L1_2 = removeGrappler
        L1_2()
      else
        L1_2 = grapplerActions
        L1_2 = L1_2.reset
        if A0_2 == L1_2 then
          L1_2 = resetGrappler
          L1_2()
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "Client:deployGrapplerOnVehicle"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Client:deployGrapplerOnVehicle"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2
  L3_2 = grapplers
  L3_2 = L3_2[A0_2]
  if nil ~= L3_2 then
    L3_2 = grapplers
    L3_2 = L3_2[A0_2]
    L3_2.targetVehicle = A1_2
    L3_2 = grapplers
    L3_2 = L3_2[A0_2]
    L4_2 = grapplerModes
    L4_2 = L4_2.used
    L3_2.mode = L4_2
    L3_2 = NetToVeh
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = NetToVeh
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    L5_2 = DoesEntityExist
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = DoesEntityExist
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 then
        L5_2 = clearGrapplerProps
        L6_2 = A0_2
        L5_2(L6_2)
        L5_2 = loadModel
        L6_2 = props
        L6_2 = L6_2.bumperDeployed
        L5_2(L6_2)
        L5_2 = GetEntityCoords
        L6_2 = L3_2
        L5_2 = L5_2(L6_2)
        L6_2 = grapplers
        L6_2 = L6_2[A0_2]
        L6_2 = L6_2.props
        L7_2 = CreateObject
        L8_2 = props
        L8_2 = L8_2.bumperDeployed
        L9_2 = L5_2
        L10_2 = false
        L11_2 = false
        L12_2 = false
        L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
        L6_2[1] = L7_2
        while true do
          L6_2 = DoesEntityExist
          L7_2 = grapplers
          L7_2 = L7_2[A0_2]
          L7_2 = L7_2.props
          L7_2 = L7_2[1]
          L6_2 = L6_2(L7_2)
          if L6_2 then
            break
          end
          L6_2 = Wait
          L7_2 = 0
          L6_2(L7_2)
        end
        L6_2 = SetModelAsNoLongerNeeded
        L7_2 = props
        L7_2 = L7_2.bumperDeployed
        L6_2(L7_2)
        L6_2 = vehicles
        L7_2 = grapplers
        L7_2 = L7_2[A0_2]
        L7_2 = L7_2.model
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.offSet
        L7_2 = vehicles
        L8_2 = grapplers
        L8_2 = L8_2[A0_2]
        L8_2 = L8_2.model
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.rotation
        L8_2 = GetEntityBoneIndexByName
        L9_2 = L3_2
        L10_2 = vehicles
        L11_2 = grapplers
        L11_2 = L11_2[A0_2]
        L11_2 = L11_2.model
        L10_2 = L10_2[L11_2]
        L10_2 = L10_2.boneName
        L8_2 = L8_2(L9_2, L10_2)
        L9_2 = AttachEntityToEntity
        L10_2 = grapplers
        L10_2 = L10_2[A0_2]
        L10_2 = L10_2.props
        L10_2 = L10_2[1]
        L11_2 = L3_2
        L12_2 = L8_2
        L13_2 = L6_2[1]
        L14_2 = L6_2[2]
        L15_2 = L6_2[3]
        L16_2 = L7_2[1]
        L17_2 = L7_2[2]
        L18_2 = L7_2[3]
        L19_2 = true
        L20_2 = false
        L21_2 = true
        L22_2 = false
        L23_2 = 1
        L24_2 = true
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L9_2 = loadModel
        L10_2 = props
        L10_2 = L10_2.frameDeployed
        L9_2(L10_2)
        L9_2 = grapplers
        L9_2 = L9_2[A0_2]
        L9_2 = L9_2.props
        L10_2 = CreateObject
        L11_2 = props
        L11_2 = L11_2.frameDeployed
        L12_2 = L5_2
        L13_2 = false
        L14_2 = false
        L15_2 = false
        L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
        L9_2[2] = L10_2
        while true do
          L9_2 = DoesEntityExist
          L10_2 = grapplers
          L10_2 = L10_2[A0_2]
          L10_2 = L10_2.props
          L10_2 = L10_2[2]
          L9_2 = L9_2(L10_2)
          if L9_2 then
            break
          end
          L9_2 = Wait
          L10_2 = 0
          L9_2(L10_2)
        end
        L9_2 = SetModelAsNoLongerNeeded
        L10_2 = props
        L10_2 = L10_2.frameDeployed
        L9_2(L10_2)
        L9_2 = AttachEntityToEntity
        L10_2 = grapplers
        L10_2 = L10_2[A0_2]
        L10_2 = L10_2.props
        L10_2 = L10_2[2]
        L11_2 = grapplers
        L11_2 = L11_2[A0_2]
        L11_2 = L11_2.props
        L11_2 = L11_2[1]
        L12_2 = -1
        L13_2 = 0.0
        L14_2 = 0.19
        L15_2 = -0.13
        L16_2 = main
        L16_2 = L16_2.frameRotation
        L16_2 = -L16_2
        L16_2 = L16_2 + 0.0
        L17_2 = 0.0
        L18_2 = 0.0
        L19_2 = true
        L20_2 = false
        L21_2 = true
        L22_2 = false
        L23_2 = 1
        L24_2 = true
        L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2)
        L9_2 = GetEntityBoneIndexByName
        L10_2 = L4_2
        L11_2 = A2_2
        L9_2 = L9_2(L10_2, L11_2)
        if -1 ~= L9_2 then
          L10_2 = loadModel
          L11_2 = props
          L11_2 = L11_2.wheelBlock
          L10_2(L11_2)
          L10_2 = GetWorldPositionOfEntityBone
          L11_2 = L4_2
          L12_2 = L9_2
          L10_2 = L10_2(L11_2, L12_2)
          L11_2 = grapplers
          L11_2 = L11_2[A0_2]
          L11_2 = L11_2.props
          L12_2 = CreateObject
          L13_2 = props
          L13_2 = L13_2.wheelBlock
          L14_2 = L10_2
          L15_2 = false
          L16_2 = false
          L17_2 = false
          L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
          L11_2[3] = L12_2
          while true do
            L11_2 = DoesEntityExist
            L12_2 = grapplers
            L12_2 = L12_2[A0_2]
            L12_2 = L12_2.props
            L12_2 = L12_2[3]
            L11_2 = L11_2(L12_2)
            if L11_2 then
              break
            end
            L11_2 = Wait
            L12_2 = 0
            L11_2(L12_2)
          end
          L11_2 = wheelBones
          L11_2 = L11_2[A2_2]
          L11_2 = L11_2.offSet
          L12_2 = wheelBones
          L12_2 = L12_2[A2_2]
          L12_2 = L12_2.rotation
          L13_2 = AttachEntityToEntity
          L14_2 = grapplers
          L14_2 = L14_2[A0_2]
          L14_2 = L14_2.props
          L14_2 = L14_2[3]
          L15_2 = L4_2
          L16_2 = L9_2
          L17_2 = L11_2[1]
          L18_2 = L11_2[2]
          L19_2 = L11_2[3]
          L20_2 = L12_2[1]
          L21_2 = L12_2[2]
          L22_2 = L12_2[3]
          L23_2 = true
          L24_2 = false
          L25_2 = true
          L26_2 = false
          L27_2 = 1
          L28_2 = true
          L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2)
          L13_2 = SetModelAsNoLongerNeeded
          L14_2 = props
          L14_2 = L14_2.wheelBlock
          L13_2(L14_2)
          L13_2 = main
          L13_2 = L13_2.burstTyre
          if L13_2 then
            L13_2 = tyreBurstIndex
            L13_2 = L13_2[A2_2]
            if nil ~= L13_2 then
              L13_2 = SetVehicleTyreBurst
              L14_2 = L4_2
              L15_2 = tyreBurstIndex
              L15_2 = L15_2[A2_2]
              L16_2 = false
              L17_2 = main
              L17_2 = L17_2.burstTyreLevel
              L13_2(L14_2, L15_2, L16_2, L17_2)
            end
          end
          L13_2 = RopeLoadTextures
          L13_2()
          L13_2 = main
          L13_2 = L13_2.rope
          L13_2 = L13_2.defaultLength
          L14_2 = main
          L14_2 = L14_2.rope
          L14_2 = L14_2.maxLength
          L15_2 = main
          L15_2 = L15_2.rope
          L15_2 = L15_2.type
          L16_2 = GetEntityCoords
          L17_2 = grapplers
          L17_2 = L17_2[A0_2]
          L17_2 = L17_2.props
          L17_2 = L17_2[1]
          L16_2 = L16_2(L17_2)
          L17_2 = ApplyForceToEntity
          L18_2 = L4_2
          L19_2 = 4
          L20_2 = 0.0
          L21_2 = 10.0
          L22_2 = 0.0
          L23_2 = 0.0
          L24_2 = 10.0
          L25_2 = 0.0
          L26_2 = 0
          L27_2 = false
          L28_2 = true
          L29_2 = true
          L30_2 = false
          L31_2 = true
          L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
          L17_2 = AddRope
          L18_2 = L16_2.x
          L19_2 = L16_2.y
          L20_2 = L16_2.z
          L21_2 = 0.0
          L22_2 = 0.0
          L23_2 = 0.0
          L24_2 = L13_2
          L25_2 = L15_2
          L26_2 = L14_2
          L27_2 = 1.0
          L28_2 = 0
          L29_2 = 0
          L30_2 = 0
          L31_2 = 1
          L32_2 = 0
          L33_2 = 0
          L34_2 = 0
          L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2, L34_2)
          L18_2 = grapplers
          L18_2 = L18_2[A0_2]
          L18_2.rope = L17_2
          L18_2 = GetEntityCoords
          L19_2 = L3_2
          L18_2 = L18_2(L19_2)
          L19_2 = AttachEntitiesToRope
          L20_2 = L17_2
          L21_2 = L3_2
          L22_2 = L4_2
          L23_2 = L16_2.x
          L24_2 = L16_2.y
          L25_2 = L16_2.z
          L26_2 = L10_2.x
          L27_2 = L10_2.y
          L28_2 = L10_2.z
          L29_2 = L13_2
          L30_2 = false
          L31_2 = false
          L32_2 = L8_2
          L33_2 = L9_2
          L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2, L32_2, L33_2)
          L19_2 = main
          L19_2 = L19_2.forceHandbrake
          L19_2 = L19_2.enabled
          if L19_2 then
            L19_2 = SetVehicleHandbrake
            L20_2 = L4_2
            L21_2 = true
            L19_2(L20_2, L21_2)
            L19_2 = Wait
            L20_2 = main
            L20_2 = L20_2.forceHandbrake
            L20_2 = L20_2.timeToForceHandbrake
            L20_2 = L20_2 * 1000
            L19_2(L20_2)
            L19_2 = SetVehicleHandbrake
            L20_2 = L4_2
            L21_2 = false
            L19_2(L20_2, L21_2)
            L19_2 = SetVehicleMaxSpeed
            L20_2 = L4_2
            L21_2 = main
            L21_2 = L21_2.forceHandbrake
            L21_2 = L21_2.maxSpeedAfterHandbrake
            L21_2 = L21_2 / 2.23
            L19_2(L20_2, L21_2)
            L19_2 = TriggerServerEvent
            L20_2 = "Server:updateHandBrakeTable"
            L21_2 = A0_2
            L22_2 = A1_2
            L19_2(L20_2, L21_2, L22_2)
          end
        end
      end
    end
  end
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = main
  L1_2 = L1_2.debugMode
  if L1_2 then
    L1_2 = print
    L2_2 = A0_2
    L1_2(L2_2)
  end
end
debug = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = grapplers
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.props
  if nil ~= L1_2 then
    L1_2 = pairs
    L2_2 = grapplers
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.props
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = DoesEntityExist
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = DetachEntity
        L8_2 = L6_2
        L7_2(L8_2)
        L7_2 = DeleteEntity
        L8_2 = L6_2
        L7_2(L8_2)
      end
    end
  end
  L1_2 = grapplers
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.rope
  if nil ~= L1_2 then
    L1_2 = DoesRopeExist
    L2_2 = grapplers
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.rope
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = DeleteRope
      L2_2 = grapplers
      L2_2 = L2_2[A0_2]
      L2_2 = L2_2.rope
      L1_2(L2_2)
      L1_2 = RopeUnloadTextures
      L1_2()
    end
  end
  L1_2 = grapplers
  L1_2 = L1_2[A0_2]
  L2_2 = {}
  L1_2.props = L2_2
end
clearGrapplerProps = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = grapplers
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.mode
  L2_2 = grapplerModes
  L2_2 = L2_2.inactive
  if L1_2 == L2_2 then
    L2_2 = grapplers
    L2_2 = L2_2[A0_2]
    L3_2 = {}
    L2_2.props = L3_2
  else
    L2_2 = grapplerModes
    L2_2 = L2_2.installed
    if L1_2 == L2_2 then
      L2_2 = clearGrapplerProps
      L3_2 = A0_2
      L2_2(L3_2)
    else
      L2_2 = grapplerModes
      L2_2 = L2_2.deployed
      if L1_2 == L2_2 then
        L2_2 = clearGrapplerProps
        L3_2 = A0_2
        L2_2(L3_2)
      else
        L2_2 = grapplerModes
        L2_2 = L2_2.used
        if L1_2 == L2_2 then
          L2_2 = DoesRopeExist
          L3_2 = grapplers
          L3_2 = L3_2[A0_2]
          L3_2 = L3_2.rope
          L2_2 = L2_2(L3_2)
          if L2_2 then
            L2_2 = DeleteRope
            L3_2 = grapplers
            L3_2 = L3_2[A0_2]
            L3_2 = L3_2.rope
            L2_2(L3_2)
            L2_2 = RopeUnloadTextures
            L2_2()
          end
          L2_2 = clearGrapplerProps
          L3_2 = A0_2
          L2_2(L3_2)
        else
        end
      end
    end
  end
  L2_2 = grapplers
  L2_2 = L2_2[A0_2]
  L3_2 = {}
  L2_2.props = L3_2
end
removeOldMode = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2
  L1_2 = grapplers
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.mode
  L2_2 = NetToVeh
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = grapplers
  L4_2 = L4_2[A0_2]
  L5_2 = {}
  L4_2.props = L5_2
  L4_2 = grapplerModes
  L4_2 = L4_2.installed
  if L1_2 == L4_2 then
    L4_2 = loadModel
    L5_2 = props
    L5_2 = L5_2.bumperClosed
    L4_2(L5_2)
    L4_2 = grapplers
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.props
    L5_2 = CreateObject
    L6_2 = props
    L6_2 = L6_2.bumperClosed
    L7_2 = L3_2
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2[1] = L5_2
    while true do
      L4_2 = DoesEntityExist
      L5_2 = grapplers
      L5_2 = L5_2[A0_2]
      L5_2 = L5_2.props
      L5_2 = L5_2[1]
      L4_2 = L4_2(L5_2)
      if L4_2 then
        break
      end
      L4_2 = Wait
      L5_2 = 0
      L4_2(L5_2)
    end
    L4_2 = SetModelAsNoLongerNeeded
    L5_2 = props
    L5_2 = L5_2.bumperClosed
    L4_2(L5_2)
    L4_2 = GetEntityBoneIndexByName
    L5_2 = L2_2
    L6_2 = vehicles
    L7_2 = grapplers
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.model
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.boneName
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = vehicles
    L6_2 = grapplers
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.model
    L5_2 = L5_2[L6_2]
    L5_2 = L5_2.offSet
    L6_2 = vehicles
    L7_2 = grapplers
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.model
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2.rotation
    L7_2 = AttachEntityToEntity
    L8_2 = grapplers
    L8_2 = L8_2[A0_2]
    L8_2 = L8_2.props
    L8_2 = L8_2[1]
    L9_2 = L2_2
    L10_2 = L4_2
    L11_2 = L5_2[1]
    L12_2 = L5_2[2]
    L13_2 = L5_2[3]
    L14_2 = L6_2[1]
    L15_2 = L6_2[2]
    L16_2 = L6_2[3]
    L17_2 = true
    L18_2 = false
    L19_2 = true
    L20_2 = false
    L21_2 = 1
    L22_2 = true
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2)
  else
    L4_2 = grapplerModes
    L4_2 = L4_2.deployed
    if L1_2 == L4_2 then
      L4_2 = NetToVeh
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L5_2 = PlayerPedId
      L5_2 = L5_2()
      L6_2 = GetVehiclePedIsIn
      L7_2 = L5_2
      L8_2 = false
      L6_2 = L6_2(L7_2, L8_2)
      if L4_2 == L6_2 then
        L7_2 = grapplerSound
        L7_2 = L7_2.enabled
        if L7_2 then
          L7_2 = PlaySoundFrontend
          L8_2 = -1
          L9_2 = grapplerSound
          L9_2 = L9_2.soundName
          L10_2 = grapplerSound
          L10_2 = L10_2.soundDict
          L7_2(L8_2, L9_2, L10_2)
          L7_2 = Wait
          L8_2 = 500
          L7_2(L8_2)
          L7_2 = PlaySoundFrontend
          L8_2 = -1
          L9_2 = grapplerSound
          L9_2 = L9_2.soundName
          L10_2 = grapplerSound
          L10_2 = L10_2.soundDict
          L7_2(L8_2, L9_2, L10_2)
        end
      end
      L7_2 = loadModel
      L8_2 = props
      L8_2 = L8_2.bumperReady
      L7_2(L8_2)
      L7_2 = grapplers
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.props
      L8_2 = CreateObject
      L9_2 = props
      L9_2 = L9_2.bumperReady
      L10_2 = L3_2
      L11_2 = false
      L12_2 = false
      L13_2 = false
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      L7_2[1] = L8_2
      while true do
        L7_2 = DoesEntityExist
        L8_2 = grapplers
        L8_2 = L8_2[A0_2]
        L8_2 = L8_2.props
        L8_2 = L8_2[1]
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = Wait
        L8_2 = 0
        L7_2(L8_2)
      end
      L7_2 = loadModel
      L8_2 = props
      L8_2 = L8_2.frameReady
      L7_2(L8_2)
      L7_2 = grapplers
      L7_2 = L7_2[A0_2]
      L7_2 = L7_2.props
      L8_2 = CreateObject
      L9_2 = props
      L9_2 = L9_2.frameReady
      L10_2 = L3_2
      L11_2 = false
      L12_2 = false
      L13_2 = false
      L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
      L7_2[2] = L8_2
      while true do
        L7_2 = DoesEntityExist
        L8_2 = grapplers
        L8_2 = L8_2[A0_2]
        L8_2 = L8_2.props
        L8_2 = L8_2[2]
        L7_2 = L7_2(L8_2)
        if L7_2 then
          break
        end
        L7_2 = Wait
        L8_2 = 0
        L7_2(L8_2)
      end
      L7_2 = SetModelAsNoLongerNeeded
      L8_2 = props
      L8_2 = L8_2.bumperReady
      L7_2(L8_2)
      L7_2 = SetModelAsNoLongerNeeded
      L8_2 = props
      L8_2 = L8_2.frameReady
      L7_2(L8_2)
      L7_2 = GetEntityBoneIndexByName
      L8_2 = L4_2
      L9_2 = vehicles
      L10_2 = grapplers
      L10_2 = L10_2[A0_2]
      L10_2 = L10_2.model
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.boneName
      L7_2 = L7_2(L8_2, L9_2)
      L8_2 = vehicles
      L9_2 = grapplers
      L9_2 = L9_2[A0_2]
      L9_2 = L9_2.model
      L8_2 = L8_2[L9_2]
      L8_2 = L8_2.offSet
      L9_2 = vehicles
      L10_2 = grapplers
      L10_2 = L10_2[A0_2]
      L10_2 = L10_2.model
      L9_2 = L9_2[L10_2]
      L9_2 = L9_2.rotation
      L10_2 = AttachEntityToEntity
      L11_2 = grapplers
      L11_2 = L11_2[A0_2]
      L11_2 = L11_2.props
      L11_2 = L11_2[1]
      L12_2 = L4_2
      L13_2 = L7_2
      L14_2 = L8_2[1]
      L15_2 = L8_2[2]
      L16_2 = L8_2[3]
      L17_2 = L9_2[1]
      L18_2 = L9_2[2]
      L19_2 = L9_2[3]
      L20_2 = true
      L21_2 = false
      L22_2 = true
      L23_2 = false
      L24_2 = 1
      L25_2 = true
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2)
      L10_2 = 1
      L11_2 = main
      L11_2 = L11_2.frameRotation
      L12_2 = 1
      for L13_2 = L10_2, L11_2, L12_2 do
        L14_2 = DetachEntity
        L15_2 = grapplers
        L15_2 = L15_2[A0_2]
        L15_2 = L15_2.props
        L15_2 = L15_2[2]
        L14_2(L15_2)
        L14_2 = AttachEntityToEntity
        L15_2 = grapplers
        L15_2 = L15_2[A0_2]
        L15_2 = L15_2.props
        L15_2 = L15_2[2]
        L16_2 = grapplers
        L16_2 = L16_2[A0_2]
        L16_2 = L16_2.props
        L16_2 = L16_2[1]
        L17_2 = -1
        L18_2 = 0.0
        L19_2 = 0.19
        L20_2 = -0.13
        L21_2 = -L13_2
        L21_2 = L21_2 + 0.0
        L22_2 = 0.0
        L23_2 = 0.0
        L24_2 = true
        L25_2 = false
        L26_2 = true
        L27_2 = false
        L28_2 = 1
        L29_2 = true
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2)
        L14_2 = Wait
        L15_2 = 40
        L14_2(L15_2)
      end
    end
  end
end
setupNewMode = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = animation
  L1_2 = L1_2.enabled
  if L1_2 then
    L1_2 = PlayerPedId
    L1_2 = L1_2()
    L2_2 = GetOffsetFromEntityInWorldCoords
    L3_2 = A0_2
    L4_2 = 0.0
    L5_2 = 2.5
    L6_2 = 0.0
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = TaskGoToCoordAnyMeans
    L4_2 = L1_2
    L5_2 = L2_2.x
    L6_2 = L2_2.y
    L7_2 = L2_2.z
    L8_2 = 3.0
    L9_2 = false
    L10_2 = false
    L11_2 = 786603
    L12_2 = 1.0
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    while true do
      L3_2 = GetEntityCoords
      L4_2 = L1_2
      L3_2 = L3_2(L4_2)
      L4_2 = L2_2 - L3_2
      L4_2 = #L4_2
      if L4_2 < 1.0 then
        break
      end
      L5_2 = Wait
      L6_2 = 0
      L5_2(L6_2)
    end
    L3_2 = Wait
    L4_2 = 1000
    L3_2(L4_2)
    L3_2 = TaskTurnPedToFaceEntity
    L4_2 = L1_2
    L5_2 = A0_2
    L6_2 = 1.0
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = Wait
    L4_2 = 1800
    L3_2(L4_2)
    L3_2 = ClearPedTasksImmediately
    L4_2 = L1_2
    L3_2(L4_2)
    L3_2 = SetVehicleDoorOpen
    L4_2 = A0_2
    L5_2 = 4
    L6_2 = false
    L7_2 = false
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = requestAnim
    L4_2 = animation
    L4_2 = L4_2.dict
    L3_2(L4_2)
    L3_2 = TaskPlayAnim
    L4_2 = L1_2
    L5_2 = animation
    L5_2 = L5_2.dict
    L6_2 = animation
    L6_2 = L6_2.name
    L7_2 = 8.0
    L8_2 = -8.0
    L9_2 = -1
    L10_2 = 0
    L11_2 = 0.0
    L12_2 = 0
    L13_2 = 0
    L14_2 = 0
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L3_2 = Wait
    L4_2 = 5000
    L3_2(L4_2)
    L3_2 = SetVehicleDoorShut
    L4_2 = A0_2
    L5_2 = 4
    L6_2 = false
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = ClearPedTasksImmediately
    L4_2 = L1_2
    L3_2(L4_2)
  end
end
grapplerAnimation = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == L1_2 then
    L2_2 = raycast
    L2_2 = L2_2()
    if nil ~= L2_2 and 0 ~= L2_2 then
      L3_2 = GetEntityModel
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = isVehicleModelAllowed
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = VehToNet
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = grapplers
        L5_2 = L5_2[L4_2]
        if nil ~= L5_2 then
          L5_2 = grapplers
          L5_2 = L5_2[L4_2]
          L5_2 = L5_2.mode
          L6_2 = grapplerModes
          L6_2 = L6_2.inactive
          if L5_2 ~= L6_2 then
            goto lbl_65
          end
        end
        L5_2 = grapplerAnimation
        L6_2 = L2_2
        L5_2(L6_2)
        L5_2 = TriggerServerEvent
        L6_2 = "Server:newGrapplerLog"
        L7_2 = evenAtKey
        L8_2 = translations
        L8_2 = L8_2.installedGrappler
        L9_2 = translations
        L9_2 = L9_2.vehicle
        L10_2 = vehicles
        L10_2 = L10_2[L3_2]
        L10_2 = L10_2.name
        L9_2 = L9_2 .. L10_2
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = TriggerServerEvent
        L6_2 = "Server:updateGrapplerTable"
        L7_2 = L0_1
        L8_2 = L4_2
        L9_2 = grapplerModes
        L9_2 = L9_2.installed
        L10_2 = L3_2
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        L5_2 = showNotification
        L6_2 = translations
        L6_2 = L6_2.installed
        L5_2(L6_2)
        goto lbl_84
        ::lbl_65::
        L5_2 = showNotification
        L6_2 = translations
        L6_2 = L6_2.cannotPerformAction
        L5_2(L6_2)
      else
        L4_2 = showNotification
        L5_2 = translations
        L5_2 = L5_2.vehicleNotAllowed
        L4_2(L5_2)
      end
    else
      L3_2 = showNotification
      L4_2 = translations
      L4_2 = L4_2.noVehicleFound
      L3_2(L4_2)
    end
  else
    L2_2 = showNotification
    L3_2 = translations
    L3_2 = L3_2.inVehicle
    L2_2(L3_2)
  end
  ::lbl_84::
end
installGrappler = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = GetPedInVehicleSeat
  L3_2 = L1_2
  L4_2 = -1
  L2_2 = L2_2(L3_2, L4_2)
  if 0 ~= L1_2 and L0_2 == L2_2 then
    L3_2 = VehToNet
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = GetEntityModel
    L5_2 = L1_2
    L4_2 = L4_2(L5_2)
    L5_2 = grapplers
    L5_2 = L5_2[L3_2]
    if nil ~= L5_2 then
      L5_2 = grapplers
      L5_2 = L5_2[L3_2]
      L5_2 = L5_2.mode
      L6_2 = grapplerModes
      L6_2 = L6_2.installed
      if L5_2 == L6_2 then
        goto lbl_37
      end
    end
    L5_2 = showNotification
    L6_2 = translations
    L6_2 = L6_2.cannotPerformAction
    L5_2(L6_2)
    goto lbl_66
    ::lbl_37::
    L5_2 = TriggerServerEvent
    L6_2 = "Server:newGrapplerLog"
    L7_2 = L0_1
    L8_2 = translations
    L8_2 = L8_2.deployedGrappler
    L9_2 = translations
    L9_2 = L9_2.vehicle
    L10_2 = vehicles
    L10_2 = L10_2[L4_2]
    L10_2 = L10_2.name
    L9_2 = L9_2 .. L10_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = TriggerServerEvent
    L6_2 = "Server:updateGrapplerTable"
    L7_2 = L0_1
    L8_2 = L3_2
    L9_2 = grapplerModes
    L9_2 = L9_2.deployed
    L10_2 = L4_2
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L5_2 = showNotification
    L6_2 = translations
    L6_2 = L6_2.deployed
    L5_2(L6_2)
  else
    L3_2 = showNotification
    L4_2 = translations
    L4_2 = L4_2.drivingVehicle
    L3_2(L4_2)
  end
  ::lbl_66::
end
deployGrappler = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == L1_2 then
    L2_2 = raycast
    L2_2 = L2_2()
    if nil ~= L2_2 and 0 ~= L2_2 then
      L3_2 = GetEntityModel
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = isVehicleModelAllowed
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = VehToNet
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = grapplers
        L5_2 = L5_2[L4_2]
        if nil ~= L5_2 then
          L5_2 = grapplers
          L5_2 = L5_2[L4_2]
          L6_2 = grapplerModes
          L6_2 = L6_2.inactive
          if L5_2 ~= L6_2 then
            goto lbl_41
          end
        end
        L5_2 = showNotification
        L6_2 = translations
        L6_2 = L6_2.cannotPerformAction
        L5_2(L6_2)
        goto lbl_87
        ::lbl_41::
        L5_2 = grapplerAnimation
        L6_2 = L2_2
        L5_2(L6_2)
        L5_2 = TriggerServerEvent
        L6_2 = "Server:updateGrapplerTable"
        L7_2 = L0_1
        L8_2 = L4_2
        L9_2 = grapplerModes
        L9_2 = L9_2.inactive
        L10_2 = L3_2
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
        L5_2 = TriggerServerEvent
        L6_2 = "Server:newGrapplerLog"
        L7_2 = L0_1
        L8_2 = translations
        L8_2 = L8_2.removedGrappler
        L9_2 = translations
        L9_2 = L9_2.vehicle
        L10_2 = vehicles
        L10_2 = L10_2[L3_2]
        L10_2 = L10_2.name
        L9_2 = L9_2 .. L10_2
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L5_2 = TriggerServerEvent
        L6_2 = "Server:requestHandbrakeTable"
        L7_2 = L4_2
        L5_2(L6_2, L7_2)
        L5_2 = showNotification
        L6_2 = translations
        L6_2 = L6_2.removed
        L5_2(L6_2)
      else
        L4_2 = showNotification
        L5_2 = translations
        L5_2 = L5_2.modelNotAllowed
        L4_2(L5_2)
      end
    else
      L3_2 = showNotification
      L4_2 = translations
      L4_2 = L4_2.noVehicleFound
      L3_2(L4_2)
    end
  else
    L2_2 = showNotification
    L3_2 = translations
    L3_2 = L3_2.inVehicle
    L2_2(L3_2)
  end
  ::lbl_87::
end
removeGrappler = L1_1
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetVehiclePedIsIn
  L2_2 = L0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  if 0 == L1_2 then
    L2_2 = raycast
    L2_2 = L2_2()
    if nil ~= L2_2 and 0 ~= L2_2 then
      L3_2 = GetEntityModel
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = isVehicleModelAllowed
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L4_2 = VehToNet
        L5_2 = L2_2
        L4_2 = L4_2(L5_2)
        L5_2 = grapplers
        L5_2 = L5_2[L4_2]
        if nil == L5_2 then
          L5_2 = showNotification
          L6_2 = translations
          L6_2 = L6_2.cannotPerformAction
          L5_2(L6_2)
        else
          L5_2 = grapplerAnimation
          L6_2 = L2_2
          L5_2(L6_2)
          L5_2 = TriggerServerEvent
          L6_2 = "Server:updateGrapplerTable"
          L7_2 = L0_1
          L8_2 = L4_2
          L9_2 = grapplerModes
          L9_2 = L9_2.inactive
          L10_2 = L3_2
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
          L5_2 = TriggerServerEvent
          L6_2 = "Server:newGrapplerLog"
          L7_2 = L0_1
          L8_2 = translations
          L8_2 = L8_2.removedGrappler
          L9_2 = translations
          L9_2 = L9_2.vehicle
          L10_2 = vehicles
          L10_2 = L10_2[L3_2]
          L10_2 = L10_2.name
          L9_2 = L9_2 .. L10_2
          L5_2(L6_2, L7_2, L8_2, L9_2)
          L5_2 = TriggerServerEvent
          L6_2 = "Server:requestHandbrakeTable"
          L7_2 = L4_2
          L5_2(L6_2, L7_2)
          L5_2 = Citizen
          L5_2 = L5_2.Wait
          L6_2 = 100
          L5_2(L6_2)
          L5_2 = TriggerServerEvent
          L6_2 = "Server:newGrapplerLog"
          L7_2 = L0_1
          L8_2 = translations
          L8_2 = L8_2.installedGrappler
          L9_2 = translations
          L9_2 = L9_2.vehicle
          L10_2 = vehicles
          L10_2 = L10_2[L3_2]
          L10_2 = L10_2.name
          L9_2 = L9_2 .. L10_2
          L5_2(L6_2, L7_2, L8_2, L9_2)
          L5_2 = TriggerServerEvent
          L6_2 = "Server:updateGrapplerTable"
          L7_2 = L0_1
          L8_2 = L4_2
          L9_2 = grapplerModes
          L9_2 = L9_2.installed
          L10_2 = L3_2
          L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
          L5_2 = showNotification
          L6_2 = translations
          L6_2 = L6_2.reset
          L5_2(L6_2)
        end
      else
        L4_2 = showNotification
        L5_2 = translations
        L5_2 = L5_2.modelNotAllowed
        L4_2(L5_2)
      end
    else
      L3_2 = showNotification
      L4_2 = translations
      L4_2 = L4_2.noVehicleFound
      L3_2(L4_2)
    end
  else
    L2_2 = showNotification
    L3_2 = translations
    L3_2 = L3_2.inVehicle
    L2_2(L3_2)
  end
end
resetGrappler = L1_1
L1_1 = RegisterNetEvent
L2_1 = "Client:updateHandBrakeTable"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Client:updateHandBrakeTable"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    if L6_2 == A1_2 then
      L8_2 = SetVehicleMaxSpeed
      L9_2 = NetToVeh
      L10_2 = L7_2.targetNetId
      L9_2 = L9_2(L10_2)
      L10_2 = GetVehicleMaxSpeed
      L11_2 = L7_2.targetNetId
      L10_2, L11_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2)
    end
  end
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = "Client:GrapplerInstallForOutOfScope"
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = "Client:GrapplerInstallForOutOfScope"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  grapplers = A0_2
  L2_2 = Wait
  L3_2 = 3000
  L2_2(L3_2)
  L2_2 = removeOldMode
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = NetToVeh
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = setupNewMode
    L4_2 = A1_2
    L3_2(L4_2)
  end
end
L1_1(L2_1, L3_1)
L1_1 = AddEventHandler
L2_1 = "onResourceStop"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if L1_2 == A0_2 then
    L1_2 = pairs
    L2_2 = grapplers
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = clearGrapplerProps
      L8_2 = L5_2
      L7_2(L8_2)
    end
    L1_2 = {}
    grapplers = L1_2
  end
end
L1_1(L2_1, L3_1)
