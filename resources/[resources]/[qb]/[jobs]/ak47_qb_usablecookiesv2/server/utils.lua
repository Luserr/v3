QBCore = exports['qb-core']:GetCoreObject()

function CanCarryItem(id, item, amount)
	return true -- There is no way to check can caryy item in latest qb.
end

function GetItemLabel(item)
	return QBCore.Shared.Items[item].label
end