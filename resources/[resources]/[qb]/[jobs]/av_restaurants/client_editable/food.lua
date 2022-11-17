AddEventHandler('av_restaurant:food', function(data)
    local job = data['job']
    local type = 'food'
    ServerCallback('av_restaurant:getItems', function(items)
        local menu = {{
            header = "Food",
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