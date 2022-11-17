RegisterNetEvent('av_restaurant:boss')
AddEventHandler('av_restaurant:boss', function()
    local PlayerData = nil
    if Config.Framework == "QBCore" then
        PlayerData = QBCore.Functions.GetPlayerData().job
        if not PlayerData.isboss then
            TriggerEvent('av_restaurant:notification',Lang['not_boss'])
            return
        end
    elseif Config.Framework == "ESX" then
        PlayerData = ESX.GetPlayerData().job
        if PlayerData.grade_name ~= "boss" then
            TriggerEvent('av_restaurant:notification',Lang['not_boss'])
            return
        end
    end
    local job = PlayerData.name
    ServerCallback('av_restaurant:getBusiness', function(data)
        local bank = data['society']['amount']
        openMenu({
            {
                header = "<strong>"..string.upper(job)..' | Boss Menu</strong>',
                isMenuHeader = true,
            },
            {
                header = "<strong>Withdraw Money $"..bank.."</strong>",
                text = "Transfer society money to your Bank Account.",
                params = {
                    isServer = true,
                    event = "av_restaurant:bossWithdraw",
                    args = {
                    }
                }
            },
            {
                header = "<strong>Register Product</strong>",
                text = "Register a new product for your store.",
                params = {
                    event = "av_restaurant:registerItem",
                    args = {
                        job = job
                    }
                }
            },
            {
                header = "<strong>Manage Menu</strong>",
                text = "Manage your Store Menu",
                params = {
                    event = "av_restaurant:manageMenu",
                    args = {
                        job = job
                    }
                }
            },
        })
    end, job)
end)

AddEventHandler('av_restaurant:manageMenu', function(data)
    local job = data['job']
    openMenu({
        {
            header = '<strong>Manage Menu</strong>',
            isMenuHeader = true,
        },
        {
            header = "Drinks",
            params = {
                isServer = true,
                event = "av_restaurant:getItems",
                args = {
                    type = 'drink',
                    job = job
                }
            }
        },
        {
            header = "Food",
            params = {
                isServer = true,
                event = "av_restaurant:getItems",
                args = {
                    type = 'food',
                    job = job
                }
            }
        },
        {
            header = "Joints",
            params = {
                isServer = true,
                event = "av_restaurant:getItems",
                args = {
                    type = 'joint',
                    job = job
                }
            }
        },
        {
            header = "Others",
            params = {
                isServer = true,
                event = "av_restaurant:getItems",
                args = {
                    type = 'others',
                    job = job
                }
            }
        },
    })
end)

RegisterNetEvent('av_restaurant:listItems')
AddEventHandler('av_restaurant:listItems', function(items,job)
    print(json.encode(items))
    local menu = {
        {
            header = '<strong>Manage Menu</strong>',
            isMenuHeader = true,
        },
    }
    if items then
        for k, v in pairs(items) do
            menu[#menu+1] = {
                header = "<strong>Product: </strong>"..v['label'],
                text = "<strong>Description: </strong>"..v['description'],
                params = {
                    event = "av_restaurant:deleteItem",
                    args = {
                        label = v['label'],
                        item = v['name'],
                        job = job
                    }
                }
            }
        end
    end
    menu[#menu+1] = {
        header = "← Go Back",
        params = {
            event = "av_restaurant:manageMenu",
            args = {
                job = job
            }
        }
    }
    openMenu(menu)
end)

AddEventHandler('av_restaurant:deleteItem', function(data)
    local menu = {
        {
            header = '<strong>Delete Product '..data['label']..'?</strong>',
            isMenuHeader = true,
        },
        {
            header = "NO",
            params = {
                event = "av_restaurant:boss",
                args = {
                }
            }
        },
        {
            header = "YES",
            params = {
                isServer = true,
                event = "av_restaurant:deleteItem",
                args = {
                    name = data['item']
                }
            }
        },
        {
            header = "NO",
            params = {
                event = "av_restaurant:boss",
                args = {
                }
            }
        },
        {
            header = "← Go Back",
            params = {
                event = "av_restaurant:manageMenu",
                args = {
                    job = data['job']
                }
            }
        },
    }
    openMenu(menu)
end)