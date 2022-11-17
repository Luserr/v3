RegisterNetEvent('av_restaurant:cashierMenu')
AddEventHandler('av_restaurant:cashierMenu', function(zone,data)
    openMenu({
        {
            header = "Total: $"..data['amount'],
            txt = "Description: "..data['notes'],
            isMenuHeader = true,
        },
        {
            header = "Pay with Cash",
            params = {
                isServer = true,
                event = "av_restaurant:confirmPay",
                args = {
                    zone = zone,
                    type = 'cash',
                    society = data['society']
                }
            }
        },
        {
            header = "Pay with Bank",
            params = {
                isServer = true,
                event = "av_restaurant:confirmPay",
                args = {
                    zone = zone,
                    type = 'bank',
                    society = data['society']
                }
            }
        },
    })
end)