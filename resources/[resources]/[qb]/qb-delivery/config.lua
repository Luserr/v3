nc_delivery = {} local PLT = nc_delivery
---------------------------------------------------------------------------------------------------------------------------------------------------------
PLT.U = Lang["EN"]                                              -- SET = ("EN" or "TR" or "Custom"), Edit locale.lua to add more languages.
PLT.MaxOrder = 50                                               -- SET = (Number), Maximum number of pending orders.
PLT.NewOrderTime = 60                                           -- SET = (Second), Time to wait for a new order to be added to the list.
PLT.DeliveryItems = {
    ["water_bottle"]  = {label = "Water",     price = 100, minMaxAmount ={1, 5}, orderDensity = 20, timeToCancel=60*30},
    ["sandwich"]     = {label = "Sandwich",         price = 140, minMaxAmount ={1,5}, orderDensity = 15, timeToCancel=60*60*3},
    ["lighter"] = {label = "Lighter", price = 145, minMaxAmount ={1,3}, orderDensity = 20, timeToCancel=60*50},
    ["cigar"] = {label = "Cigar", price = 150,   minMaxAmount ={5,15},orderDensity = 20, timeToCancel=60*40},
    ["bandge"]      = {label = "Bandge",      price = 190, minMaxAmount ={1,9}, orderDensity = 30, timeToCancel=60*70},
}

PLT.TotalPercent = 0
for k,v in pairs(PLT.DeliveryItems) do
    v.minPercent = PLT.TotalPercent
    v.maxPercent = v.minPercent+ v.orderDensity
    PLT.TotalPercent  = v.maxPercent
end
