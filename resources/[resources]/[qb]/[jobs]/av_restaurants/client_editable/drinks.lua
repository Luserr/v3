AddEventHandler('av_restaurant:drink', function(data)
    local job = data['job']
    local type = 'drink'
    ServerCallback('av_restaurant:getItems', function(items)
        local menu = {{
            header = "Drinks",
            isMenuHeader = true,
        }}
        for k, v in pairs(items) do
            menu[#menu+1] = {
                header = v['label'],
                txt = v['description'],
                params = {
                    event = "av_restaurant:craft",
                    args = {
                        item = v['name'],
                        job = job,
                        type = type
                    }
                }
            }
        end
        openMenu(menu)
    end,{job = job, type = type})
end)

