AddEventHandler('av_restaurant:joint', function(data)
    local job = data['job']
    local type = 'joint'
    ServerCallback('av_restaurant:getItems', function(items)
        local menu = {{
            header = "Joints",
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