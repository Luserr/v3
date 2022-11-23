AddEventHandler("onResourceStart", function(resName) -- Initialises the script, sets up voice related convars
	if GetCurrentResourceName() ~= resName then
		return
	end

	-- Set voice related convars
	SetConvarReplicated("voice_useNativeAudio", "true")
	SetConvarReplicated("voice_use3dAudio", "false")
	SetConvarReplicated("voice_use2dAudio", "false")
	SetConvarReplicated("voice_useSendingRangeOnly", "true")

	Debug("[rhodinium:voice] Initialised Script")
end)


RegisterNetEvent("rhodinium:voice:connection:state")
AddEventHandler("rhodinium:voice:connection:state", function(state)
	TriggerClientEvent("rhodinium:voice:connection:state", -1, source, state)
end)


RegisterNetEvent("rhodinium:voice:transmission:state")
AddEventHandler("rhodinium:voice:transmission:state", function(pGroup, pContext, pTransmitting, pEffect)
	local src = source

	local srcPed = GetPlayerPed(src)
	local vehicle = GetVehiclePedIsIn(srcPed, false)
	local isSourceInVehicle = vehicle ~= 0

	if type(pGroup) == "table" then
		for k, v in pairs(pGroup) do
			TriggerClientEvent("rhodinium:voice:transmission:state", v, src, pContext, pTransmitting, pEffect, isSourceInVehicle)
		end
	else
		TriggerClientEvent("rhodinium:voice:transmission:state", pGroup, src, pContext, pTransmitting, pEffect, isSourceInVehicle)
	end
end)


function Debug(msg, ...)
    if not Config.enableDebug then return end

    local params = {}

    for _, param in ipairs({ ... }) do
        if type(param) == "table" then
            param = json.encode(param)
        end

        table.insert(params, param)
    end

    print((msg):format(table.unpack(params)))
end

function DumpTable(table, nb)
	if nb == nil then
		nb = 0
	end

	if type(table) == "table" then
		local s = ""
		for i = 1, nb + 1, 1 do
			s = s .. "    "
		end

		s = "{\n"
		for k,v in pairs(table) do
			if type(k) ~= "number" then k = "'"..k.."'" end
			for i = 1, nb, 1 do
				s = s .. "    "
			end
			s = s .. "["..k.."] = " .. DumpTable(v, nb + 1) .. ",\n"
		end

		for i = 1, nb, 1 do
			s = s .. "    "
		end

		return s .. "}"
	else
		return tostring(table)
	end
end