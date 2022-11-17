local businessSpawn = {
    ["burger_shot"] = {
        ["coords"] = {
            ["x"] = -1203.259,
            ["y"] = -901.804,
            ["z"] = 13.229285,
        },
    },
    ["red_circle"] = {
        ["coords"] = {
            ["x"] = -302.4384,
            ["y"] = 206.64297,
            ["z"] = 87.874656,
        },
    },
    ["uwu_cafe"] = {
        ["coords"] = {
            ["x"] = -579.3214,
            ["y"] = -1070.716,
            ["z"] = 22.32957,
        },
    },
    ["cosmic_cannabis"] = {
        ["coords"] = {
            ["x"] = 200.66581,
            ["y"] = -235.7529,
            ["z"] = 54.001239,
        },
    },
    ["casino"] = {
        ["coords"] = {
            ["x"] = 921.31774,
            ["y"] = 41.55706,
            ["z"] = 81.095993,
        },
    },
    ["bennys"] = {
        ["coords"] = {
            ["x"] = -195.0385,
            ["y"] = -1335.782,
            ["z"] = 30.890464,
        },
    },
    ["gallery"] = {
        ["coords"] = {
            ["x"] = -422.8975,
            ["y"] = 22.26308,
            ["z"] = 46.274803,
        },
    },
    ["hayes_autos"] = {
        ["coords"] = {
            ["x"] = -1431.557,
            ["y"] = -445.8069,
            ["z"] = 35.673744,
        },
    },
    ["tuner_shop"] = {
        ["coords"] = {
            ["x"] = 155.94581,
            ["y"] = -3019.192,
            ["z"] = 7.0392956,
        },
    },
    ["car_shop"] = {
        ["coords"] = {
            ["x"] = -48.98409,
            ["y"] = -1103.954,
            ["z"] = 27.263118,
        },
    },
    ["hydra_incorporation"] = {
        ["coords"] = {
            ["x"] = -1016.329,
            ["y"] = -426.3395,
            ["z"] = 39.627841,
        },
    },
    ["doc"] = {
        ["coords"] = {
            ["x"] = 1843.3168,
            ["y"] = 2579.0214,
            ["z"] = 46.01427,
        },
    },
    ["maldinis"] = {
        ["coords"] = {
            ["x"] = 801.76818,
            ["y"] = -767.8231,
            ["z"] = 31.26589,
        },
    },
    ["warriors_table"] = {
        ["coords"] = {
            ["x"] = -173.1338,
            ["y"] = 311.49865,
            ["z"] = 97.990974,
        },
    },
    ["police"] = {
        ["coords"] = {
            ["x"] = 435.78945,
            ["y"] = -976.236,
            ["z"] = 30.719455,
        },
    },
    ["skybar"] = {
        ["coords"] = {
            ["x"] = 317.37091,
            ["y"] = -934.6244,
            ["z"] = 29.470876,
        },
    },
    ["mandem"] = {
        ["coords"] = {
            ["x"] = -1563.151,
            ["y"] = -271.7146,
            ["z"] = 48.274333,
        },
    },
    ["tavern"] = {
        ["coords"] = {
            ["x"] = 1216.256,
            ["y"] = -418.813,
            ["z"] = 67.68633,
        },
    },
    ["recycle_center"] = {
        ["coords"] = {
            ["x"] = 746.65258,
            ["y"] = -1400.118,
            ["z"] = 26.569583,
        },
    },
    ["high_table"] = {
        ["coords"] = {
            ["x"] = 413.644,
            ["y"] = -22.55745,
            ["z"] = 90.94238,
        },
    },
    ["mtf"] = {
        ["coords"] = {
            ["x"] = -1498.39,
            ["y"] = -664.3051,
            ["z"] = 33.381202,
        },
    },
    ["art_gallery"] = {
        ["coords"] = {
            ["x"] = -421.3161,
            ["y"] = 40.679836,
            ["z"] = 46.231391,
        },
    },
}

function createLog(pName, pType, pInfo, pBusinessID)
    local data = Await(SQL.execute("INSERT INTO _business_logs (user_name, data_type, data_info, business_id, data_date) VALUES (@user_name, @data_type, @data_info, @business_id, @data_date)", {
        ["user_name"] = pName,
        ["data_type"] = pType,
        ["data_info"] = pInfo,
        ["business_id"] = pBusinessID,
        ["data_date"] = os.date("%A, %m %B %Y", os.time())
    }))
end

exports('createLog',createLog)

RPC.register("IsEmployedAt", function(pSource, pBusinessId)
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    if not data then return false end

    local employees = json.decode(data[1].employees) or {}
    for i,u in pairs(employees) do
        if tonumber(u.cid) == tonumber(char.id) then
            return true
        end
    end

    return false
end)

RPC.register("IsEmployedAtBusiness", function(pSource, pData)
    local data = pData
    if not data then return false end

    local getData = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = data.business.id
    }))

    if not getData then return false end

    local employees = json.decode(getData[1].employees) or {}
    for i,u in pairs(employees) do
        if tonumber(u.cid) == tonumber(data.character.id) then
            return true
        end
    end

    return false
end)

RPC.register("qpixel-business:business:GetEmploymentInformation", function(pSource)
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()

    local data = Await(SQL.execute("SELECT * FROM businesses", {}))
    local employment = {}
    for k,v in pairs(data) do
    local employees = json.decode(data[k].employees) or {}
    for i,u in pairs(employees) do
    if tonumber(u.cid) == tonumber(char.id) then
        local business_id = data[k].business_id
        local business_name = data[k].business_name

        local bankAccess
        local roles = json.decode(data[k].roles) or {}
        for l,p in pairs(roles) do
            if tostring(p.name) == tostring(u.role) then
                bankAccess = p.bank_access
            end
        end

        employment[#employment + 1] = {
            id = tonumber(i),
            businessid = business_id,
            businessname = business_name,
            businessrole = u.role,
            businessicon = "fa-business-time",
            bankAccess = bankAccess,
            rank = u.rank
        }
    end
    end
    end

    return employment
end)

RPC.register("qpixel-business:phone:GetEmploymentInformation", function(pSource)
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()

    local data = Await(SQL.execute("SELECT * FROM businesses", {}))
    local employment = {}
    for k,v in pairs(data) do
    local employees = json.decode(data[k].employees) or {}
    for i,u in pairs(employees) do
    if tonumber(u.cid) == tonumber(char.id) then
        local business_id = data[k].business_id
        local business_name = data[k].business_name

        local bankAccess
        local roles = json.decode(data[k].roles) or {}
        for l,p in pairs(roles) do
            if tostring(p.name) == tostring(u.role) then
                bankAccess = p.bank_access
            end
        end

        employment[#employment + 1] = {
            id = tonumber(i),
            businessid = business_id,
            businessname = business_name,
            businessrole = u.role,
            businessicon = "fa-business-time",
            bankAccess = bankAccess,
            rank = u.rank
        }
    end
    end
    end

    return employment
end)

RPC.register("GetEmploymentInformation", function(pSource, pCid)
    local data = Await(SQL.execute("SELECT * FROM businesses", {}))

    if not data then return false end

    local employment = {}

    for k,v in pairs(data) do
        local employees = json.decode(data[k].employees) or {}
        for i,u in pairs(employees) do
            if tonumber(u.cid) == tonumber(pCid) then
                local business_id = data[k].business_id
                local business_name = data[k].business_name
                employment[#employment + 1] = {
                    id = tonumber(i),
                    business_id = business_id,
                    business_name = business_name,
                    business_role = u.role
                }
            end
        end
    end

    return employment
end)

RPC.register("GetBusinessSpawnByCode", function(pSource, pBusinessId)
    local business_id = tostring(pBusinessId)
    return true, businessSpawn[business_id]
end)

RegisterCommand("createbiz", function(source, args, raw)
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(source)
    local rank = user:getRank()
    if rank ~= "dev" then return end
    if not args then return end

    roles = {}

    tbl = {
        name = "Owner",
        charge_access = true,
        bank_access = true,
        role_manage = true,
        role_create = true,
        key_access = true,
        stash_access = true,
        craft_access = true,
        can_hire = true,
        can_fire = true,
        logs_access = true,
    }

    table.insert(roles, tbl)

    tbl2 = {
        name = "Employee",
        charge_access = false,
        bank_access = false,
        role_manage = false,
        role_create = false,
        key_access = true,
        stash_access = true,
        craft_access = true,
        can_hire = false,
        can_fire = false,
        logs_access = false,
    }

    table.insert(roles, tbl2)

    employees = {}

    tbl = {
        cid = args[3],
        role = "Owner",
        rank = 5
    }

    table.insert(employees, tbl)

    math.randomseed(os.time())
    local bankid = math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9) .. math.random(1,9)

    local data = Await(SQL.execute("INSERT INTO businesses (business_id, business_name, employees, roles, bank_id) VALUES (@business_id, @business_name, @employees, @roles, @bank_id)", {
        ["business_id"] = args[1],
        ["business_name"] = args[2],
        ["employees"] = json.encode(employees),
        ["roles"] = json.encode(roles),
        ["bank_id"] = bankid
    }))

end)

RegisterCommand("addemployee", function(source, args, raw)
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(source)
    local rank = user:getRank()
    if rank ~= "dev" then return end
    if not args then return end

    local emp = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = args[1]
    }))

    local emp = json.decode(emp[1].employees)

    tbl = {
        cid = args[2],
        role = args[3],
        rank = args[4]
    }

    table.insert(emp, tbl)

    local data = Await(SQL.execute("UPDATE businesses SET employees = @employees WHERE business_id = @business_id", {
        ["employees"] = json.encode(emp),
        ["business_id"] = args[1]
    }))

end)

RegisterCommand("addrole", function(source, args, raw)
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(source)
    local rank = user:getRank()
    if rank ~= "dev" then return end
    if not args then return end

    roles = {}

    tbl = {
        name = args[2],
        charge_access = args[3],
        bank_access = args[4],
        role_manage = args[5],
        role_create = args[6],
        key_access = args[7],
        stash_access = args[8],
        craft_access = args[9],
        can_hire = args[10],
        can_fire = args[11],
        logs_access = args[12],
    }

    table.insert(roles, tbl)

    local data = Await(SQL.execute("UPDATE businesses SET roles = @roles WHERE business_id = @business_id", {
        ["roles"] = json.encode(roles),
        ["business_id"] = args[1]
    }))

end)

RPC.register("qpixel-business:business:hasPermission", function(pSource, pBusinessId, pType)
    local hasPermission
    local pAccessType = pType
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()

    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    local charge_access = false
    local bank_access = false
    local role_manage = false
    local role_create = false
    local key_access = false
    local stash_access = false
    local craft_access = false
    local logs_access = false
            local employees = json.decode(data[1].employees) or {}
            for i,u in pairs(employees) do
                if tonumber(u.cid) == tonumber(char.id) then
                    local roles = json.decode(data[1].roles) or {}
                    for l,p in pairs(roles) do
                        if tostring(p.name) == tostring(u.role) then
                            charge_access = p.charge_access
                            bank_access = p.bank_access
                            role_manage = p.role_manage
                            role_create = p.role_create
                            key_access = p.key_access
                            stash_access = p.stash_access
                            craft_access = p.craft_access
                            logs_access = p.logs_access
                        end
                    end

                    function hasAccess(pAccessType)
                        if pAccessType == "charge_access" then
                            return charge_access
                        elseif pAccessType == "bank_access" then
                            return bank_access
                        elseif pAccessType == "role_manage" then
                            return role_manage
                        elseif pAccessType == "role_create" then
                            return role_create
                        elseif pAccessType == "key_access" then
                            return key_access
                        elseif pAccessType == "stash_access" then
                            return stash_access
                        elseif pAccessType == "craft_access" then
                            return craft_access
                        elseif pAccessType == "logs_access" then
                            return logs_access
                        end
                    end

                    if hasAccess(pType) == true then
                        hasPermission = true
                    else
                        hasPermission = false
                    end

                    return hasPermission
                end
            end

    return hasPermission
end)

RPC.register("qpixel-business:hasPermission", function(pSource, pBusinessId)
    local hasPermission
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()
    local tableh = {}

    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

            local employees = json.decode(data[1].employees) or {}
            for i,u in pairs(employees) do
                if tonumber(u.cid) == tonumber(char.id) then
                    local roles = json.decode(data[1].roles) or {}
                    for l,p in pairs(roles) do
                        if tostring(p.name) == tostring(u.role) then
                            tableh[#tableh+1] = {
                                role_manage = p.role_manage,
                                role_create = p.role_create,
                                can_hire = p.can_hire,
                                can_fire = p.can_fire,
                                bank_access = p.bank_access, 
                                charge_access = p.charge_access, 
                                key_access = p.key_access,
                                stash_access = p.stash_access, 
                                logs_access = p.logs_access,
                                craft_access = p.craft_access,
                                myRank = p.name
                            }
                        end
                    end
                end
    end
    return tableh
end)

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

RPC.register("qpixel-business:business:createRole", function(pSource, pBusinessId, pRoleName, pPermHire, pPermFire, pPermChangeRoles, pPermKeys, pPermStash, pPermCraft, pPermCharge, pPermBank, pPermLogs)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    local user = exports['qpixel-base']:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()

    if not data then return false end

    local roles = json.decode(data[1].roles)

    tbl = {
        name = pRoleName,
        charge_access = pPermCharge,
        bank_access = pPermBank,
        role_manage = pPermChangeRoles,
        role_create = false,
        key_access = pPermKeys,
        stash_access = pPermStash,
        logs_access = pPermLogs,
        craft_access = pPermCraft,
        can_hire = pPermHire,
        can_fire = pPermFire
    }

    table.insert(roles, tbl)

    local update = Await(SQL.execute("UPDATE businesses SET roles = @roles WHERE business_id = @business_id", {
        ["roles"] = json.encode(roles),
        ["business_id"] = pBusinessId
    }))

    if not update then return false end

    createLog(char.first_name .. " " .. char.last_name, "Created Role", pRoleName, pBusinessId)

    return true
end)

RPC.register("qpixel-business:phone:createRole", function(pSource, pBusinessId, pRoleName, pPermFire, pPermHire, pPermChangeRoles, pPermKeys, pPermStash, pPermCraft, pPermCharge, pPermBank, pPermLogs)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

    if not data then return false end

    local roles = json.decode(data[1].roles)

    tbl = {
        name = pRoleName,
        charge_access = pPermCharge,
        bank_access = pPermBank,
        role_manage = pPermChangeRoles,
        role_create = false,
        key_access = pPermKeys,
        stash_access = pPermStash,
        logs_access = pPermLogs,
        craft_access = pPermCraft,
        can_hire = pPermHire,
        can_fire = pPermFire
    }

    table.insert(roles, tbl)

    local update = Await(SQL.execute("UPDATE businesses SET roles = @roles WHERE business_id = @business_id", {
        ["roles"] = json.encode(roles),
        ["business_id"] = pBusinessId
    }))

    if not update then return false end

    return true
end)

RPC.register("qpixel-business:business:checkRoleExistance", function(pSource, pBusinessId, pCurRole)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
        local bool = false
        local currole = tostring(pCurRole)
        local roles = json.decode(data[1].roles) or {}
        for i,u in pairs(roles) do
            if tostring(u.name) == currole then
                bool = true
            end
        end

        return bool
end)

RPC.register("qpixel-business:phone:checkRoleExistance", function(pSource, pBusinessId, pCurRole)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
        local bool = false
        local currole = tostring(pCurRole)
        local roles = json.decode(data[1].roles) or {}
        for i,u in pairs(roles) do
            if tostring(u.name) == currole then
                bool = true
            end
        end

        return bool
end)

RPC.register("qpixel-business:business:editRole", function(pSource, pBusinessId, pCurRole, pRoleName, pPermFire, pPermHire, pPermChangeRoles, pPermKeys, pPermStash, pPermCraft, pPermCharge, pPermBank, pPermLogs)
    local role = firstToUpper(pRoleName)
    local currole = firstToUpper(pCurRole)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    local roles = json.decode(data[1].roles)
    local employee = json.decode(data[1].employees)
    local found = false
    for k,v in pairs(employee) do
        if tostring(v.role) == tostring(currole) then
            found = true
        end
    end
        for i,u in pairs(roles) do
            if tostring(firstToUpper(u.name)) == tostring(currole) then
                roles[i].name = role
                roles[i].role_manage = pPermChangeRoles
                roles[i].key_access = pPermKeys
                roles[i].stash_access = pPermStash
                roles[i].craft_access = pPermCraft
                roles[i].charge_access = pPermCharge
                roles[i].bank_access = pPermBank
                roles[i].can_hire = pPermHire
                roles[i].can_fire = pPermFire
                roles[i].logs_access = pPermLogs

                local update = Await(SQL.execute("UPDATE businesses SET roles = @roles WHERE business_id = @business_id", {
                    ["roles"] = json.encode(roles),
                    ["business_id"] = pBusinessId
                }))

                if not update then return false end
            end
        end
        if found == true then
        local employees = json.decode(data[1].employees)
        for l,p in pairs(employees) do
            if tostring(p.role) == tostring(currole) then
                employees[l].role = role

                local update = Await(SQL.execute("UPDATE businesses SET employees = @employees WHERE business_id = @business_id", {
                    ["employees"] = json.encode(employees),
                    ["business_id"] = pBusinessId
                }))
            end
        end
        end
        local user = exports['qpixel-base']:getModule("Player"):GetUser(pSource)
        local char = user:getCurrentCharacter()
    
        createLog(char.first_name .. " " .. char.last_name, "Edited Role", role, pBusinessId)
        return true
end)

RPC.register("qpixel-business:business:deleteRole", function(pSource, pBusinessId, pRole)
    local role = firstToUpper(pRole)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    local roles = json.decode(data[1].roles) or {}
    for k,v in pairs(roles) do
        if tostring(firstToUpper(v.name)) == tostring(role) then
            table.remove(roles, k)
            local update = Await(SQL.execute("UPDATE businesses SET roles = @roles WHERE business_id = @business_id", {
                ["roles"] = json.encode(roles),
                ["business_id"] = pBusinessId
            }))

            if not update then return false end
        end
    end

    local user = exports['qpixel-base']:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()

    createLog(char.first_name .. " " .. char.last_name, "Deleted Role", role, pBusinessId)

    return true
end)

RPC.register("qpixel-business:phone:deleteRole", function(pSource, pBusinessId, pRole)
    local role = firstToUpper(pRole)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    local roles = json.decode(data[1].roles) or {}
    for k,v in pairs(roles) do
        if tostring(v.name) == tostring(role) then
            table.remove(roles, k)
            local update = Await(SQL.execute("UPDATE businesses SET roles = @roles WHERE business_id = @business_id", {
                ["roles"] = json.encode(roles),
                ["business_id"] = pBusinessId
            }))

            if not update then return false end
        end
    end

    return true
end)

RPC.register("qpixel-business:business:updateEmployee", function(pSource, pCid, pBusinessId, pNewRole)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

    local employees = json.decode(data[1].employees)
    
    for k,v in pairs(employees) do
        if tonumber(v.cid) == tonumber(pCid) then
            employees[k].role = pNewRole
            local update = Await(SQL.execute("UPDATE businesses SET employees = @employees WHERE business_id = @business_id", {
                ["employees"] = json.encode(employees),
                ["business_id"] = pBusinessId
            }))

            if not update then return false end 
        end
    end

    return true
end)

RPC.register("qpixel-business:phone:updateEmployee", function(pSource, pCid, pBusinessId, pNewRole)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

    local employees = json.decode(data[1].employees)
    
    for k,v in pairs(employees) do
        if tonumber(v.cid) == tonumber(pCid) then
            employees[k].role = pNewRole
            local update = Await(SQL.execute("UPDATE businesses SET employees = @employees WHERE business_id = @business_id", {
                ["employees"] = json.encode(employees),
                ["business_id"] = pBusinessId
            }))

            if not update then return false end 
        end
    end

    return true
end)

RPC.register("qpixel-business:business:hireEmployee", function(pSource, pCid, pRole, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
        local employees = nil
        employees = json.decode(data[1].employees) or {}
        for i,u in pairs(employees) do
            if tonumber(u.cid) == tonumber(pCid) then
                return false
            end
        end

    if employees ~= nil then

        local calcedRank

        if tostring(pRole) == "Owner" then
            calcedRank = 5
        elseif tostring(pRole) == "CoOwner" then
            calcedRank = 4
        elseif tostring(pRole) == "Co-Owner" then
            calcedRank = 4
        else
            calcedRank = 0
        end

        tbl = {
            cid = pCid,
            role = pRole,
            rank = calcedRank
        }
        table.insert(employees, tbl)
        local update = Await(SQL.execute("UPDATE businesses SET employees = @employees WHERE business_id = @business_id", {
            ["employees"] = json.encode(employees),
            ["business_id"] = pBusinessId
        }))

        if not update then return false end

        return true
    end
end)

RPC.register("qpixel-business:phone:hireEmployee", function(pSource, pCid, pRole, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
        local employees = nil
        employees = json.decode(data[1].employees) or {}
        for i,u in pairs(employees) do
            if tonumber(u.cid) == tonumber(pCid) then
                return false
            end
        end

    if employees ~= nil then

        local calcedRank

        if tostring(pRole) == "Owner" then
            calcedRank = 5
        elseif tostring(pRole) == "CoOwner" then
            calcedRank = 4
        elseif tostring(pRole) == "Co-Owner" then
            calcedRank = 4
        else
            calcedRank = 0
        end

        tbl = {
            cid = pCid,
            role = pRole,
            rank = calcedRank
        }
        table.insert(employees, tbl)
        local update = Await(SQL.execute("UPDATE businesses SET employees = @employees WHERE business_id = @business_id", {
            ["employees"] = json.encode(employees),
            ["business_id"] = pBusinessId
        }))

        if not update then return false end

        return true
    end
end)

RPC.register("qpixel-business:business:fireEmployee", function(pSource, pCid, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

    local employees = json.decode(data[1].employees)
    for k,v in pairs(employees) do
        if tonumber(v.cid) == tonumber(pCid) then
            table.remove(employees, k)
            local update = Await(SQL.execute("UPDATE businesses SET employees = @employees WHERE business_id = @business_id", {
                ["employees"] = json.encode(employees),
                ["business_id"] = pBusinessId
            }))

            
    
            if not update then return false end
        end
    end

    return true
end)

RPC.register("qpixel-business:phone:fireEmployee", function(pSource, pCid, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

    local employees = json.decode(data[1].employees)
    for k,v in pairs(employees) do
        if tonumber(v.cid) == tonumber(pCid) then
            table.remove(employees, k)
            local update = Await(SQL.execute("UPDATE businesses SET employees = @employees WHERE business_id = @business_id", {
                ["employees"] = json.encode(employees),
                ["business_id"] = pBusinessId
            }))
    
            if not update then return false end
        end
    end

    return true
end)

RPC.register("qpixel-business:business:GetEmploymentInformationBusinessID", function(pSource, pCid, pBusinessId)
    local userInfo = Await(SQL.execute("SELECT first_name, last_name FROM characters WHERE id = @id", {
        ["id"] = pCid
    }))

    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
            local employees = json.decode(data[1].employees) or {}
            for i,u in pairs(employees) do
                if tonumber(u.cid) == tonumber(pCid) then
                    return u.role, userInfo[1].first_name, userInfo[1].last_name
                end
            end
end)

RPC.register("qpixel-businesses:getRoleAndEmployeesList", function(pSource, pBID)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBID
    }))
    local employees = json.decode(data[1].employees) or {}
    local roles = json.decode(data[1].roles) or {}
    local fuckme = {}
    for i,u in pairs(employees) do
        local userInfo = Await(SQL.execute("SELECT first_name, last_name FROM characters WHERE id = @id", {
            ["id"] = u.cid
        }))
        for k,v in pairs(userInfo) do
            for j,s in pairs(roles) do
                if tostring(s.name) == tostring(u.role) then
                    fuckme[#fuckme+1] = {
                        first_name = v.first_name,
                        last_name = v.last_name,
                        cid = u.cid,
                        role = u.role
                    }
                end
            end
        end
    end
    return fuckme
end)

RPC.register("qpixel-business:phone:GetRolePermission", function(pSource, pBusinessId, pRole)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    local businessAccessTable = {}
    local roles = json.decode(data[1].roles) or {}
    for i,u in pairs(roles) do
        if tostring(u.name) == tostring(pRole) then
            businessAccessTable[#businessAccessTable+1] = {
                role_manage = u.role_manage,
                role_create = u.role_create, 
                can_hire = u.can_hire, 
                can_fire = u.can_fire, 
                bank_access = u.bank_access, 
                charge_access = u.charge_access, 
                key_access = u.key_access, 
                stash_access = u.stash_access, 
                craft_access = u.craft_access,
                logs_access = u.logs_access,
            }
        end
    end
    return businessAccessTable
end)



RPC.register("qpixel-business:business:GetEmploymentInformationBusinessID:Full", function(pSource, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    local luckylucky = {}
            local employees = json.decode(data[1].employees) or {}
            for i,u in pairs(employees) do
                local userInfo = Await(SQL.execute("SELECT first_name, last_name FROM characters WHERE id = @id", {
                    ["id"] = tonumber(u.cid)
                }))
                for k,v in pairs(userInfo) do
                    luckylucky[#luckylucky+1] = {
                        first_name = v.first_name,
                        last_name  = v.last_name,
                        role       = u.role
                    } 
                end
            end
    return luckylucky
end)

RPC.register("qpixel-business:phone:GetEmploymentInformationBusinessID", function(pSource, pCid, pBusinessId)
    local userInfo = Await(SQL.execute("SELECT first_name, last_name FROM characters WHERE id = @id", {
        ["id"] = pCid
    }))

    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
            local employees = json.decode(data[1].employees) or {}
            for i,u in pairs(employees) do
                if tonumber(u.cid) == tonumber(pCid) then
                    return u.role, userInfo[1].first_name, userInfo[1].last_name
                end
            end
end)

RPC.register("qpixel-business:business:GetBusiness", function(pSource, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    local employment = {}
    local employees = json.decode(data[1].employees) or {}
    for i,u in pairs(employees) do
        local business_id = data[1].business_id
        local business_name = data[1].business_name

        local myIcon = "fa-user-tie"
        if tostring(u.role) == "Owner" then
          myIcon = "fa-user-secret"
        end

        local userInfo = Await(SQL.execute("SELECT first_name, last_name FROM characters WHERE id = @id", {
            ["id"] = u.cid
        }))

        local name
        if userInfo[1] ~= nil then
            name = userInfo[1].first_name .. " " .. userInfo[1].last_name
        else
            name = "Invalid Employee"
        end


        employment[#employment + 1] = {
            id = tonumber(i),
            businessid = business_id,
            businessname = business_name,
            businessrole = u.role,
            name = name,
            icon = myIcon,
            cid = u.cid,
            rank = u.rank
        }
    end

    return employment
end)

RPC.register("qpixel-business:phone:GetBusiness", function(pSource, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
    local employment = {}
    local employees = json.decode(data[1].employees) or {}
    for i,u in pairs(employees) do
        local business_id = data[1].business_id
        local business_name = data[1].business_name

        local myIcon = "fa-user-tie"
        if tostring(u.role) == "Owner" then
          myIcon = "fa-user-secret"
        end

        local userInfo = Await(SQL.execute("SELECT first_name, last_name FROM characters WHERE id = @id", {
            ["id"] = u.cid
        }))

        employment[#employment + 1] = {
            id = tonumber(i),
            businessid = business_id,
            businessname = business_name,
            businessrole = u.role,
            name = userInfo[1].first_name .. " " .. userInfo[1].last_name,
            icon = myIcon,
            cid = u.cid
        }
    end

    return employment
end)

RPC.register("qpixel-business:business:GetOwner", function(pSource, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM business_passes WHERE business_id = @business_id AND role = @role", {
        ["business_id"] = pBusinessId,
        ["role"] = "Owner"
    }))

    return data[1].cid
end)

RPC.register("qpixel-business:business:GetBusinessRoles", function(pSource, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
            local allroles = {}
            local roles = json.decode(data[1].roles) or {}
            for k,v in pairs(roles) do
                allroles[#allroles + 1] = {
                    label = v.name,
                    value = v.name
                }
            end

    return allroles
end)

RPC.register("qpixel-business:phone:GetBusinessRoles", function(pSource, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
            local allroles = {}
            local roles = json.decode(data[1].roles) or {}
            for k,v in pairs(roles) do
                allroles[#allroles + 1] = {
                    label = v.name,
                    value = v.name
                }
            end

    return allroles
end)

RPC.register("qpixel-business:business:GetRole", function(pSource, pBusinessId, pRoleName)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

    local roles = json.decode(data[1].roles)
    for k,v in pairs(roles) do
        if tostring(v.name) == tostring(pRoleName) then
            return v.can_hire, v.can_fire, v.role_manage, v.key_access, v.stash_access, v.craft_access, v.logs_access
        end
    end
end)

RPC.register("qpixel-business:business:addEmployee", function(pSource, pCid, pRole, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM business WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

    local t
    local add

    if data[1].business_employees ~= nil then
        string = data[1].business_employees .. "," .. pCid
    else

        t = {
            {
                cid = pCid,
                role = pRole
            },
        }

        t[#t+1] = {
            cid = 13,
            role = "noob",
        }

        local encoded = json.encode(t)
        add = Await(SQL.execute("UPDATE business SET business_employees = @business_employees", {
            ["business_employees"] = encoded
        }))
    end

    if add then
        return true
    end
end)

RPC.register("qpixel-business:business:isBizOwner", function(pSource, pBusinessId)
    local user = exports["qpixel-base"]:getModule("Player"):GetUser(pSource)
    local char = user:getCurrentCharacter()

    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
        local employees = json.decode(data[1].employees) or {}
        for i,u in pairs(employees) do
            if tonumber(u.cid) == tonumber(char.id) then
                if tostring(u.role) == "Owner" then
                    return true
                else
                    return false
                end
            end
        end
end)

RPC.register("qpixel-business:business:GetUserRole", function(pSource, pBusinessId, pCid)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
            local employees = json.decode(data[1].employees) or {}
            for i,u in pairs(employees) do
                if tonumber(u.cid) == tonumber(pCid) then
                    return u.role or nil
                end
            end
end)

RPC.register("qpixel-business:phone:GetUserRole", function(pSource, pBusinessId, pCid)
        local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
            ["business_id"] = pBusinessId
        }))
                local employees = json.decode(data[1].employees) or {}
                for i,u in pairs(employees) do
                    if tonumber(u.cid) == tonumber(pCid) then
                        return u.role or nil
                    end
                end
    end)

RPC.register("qpixel-business:business:GetRolePermission", function(pSource, pBusinessId, pRole)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))
            local roles = json.decode(data[1].roles) or {}
            for i,u in pairs(roles) do
                if tostring(u.name) == tostring(pRole) then
                    return u.role_manage, u.role_create, u.can_hire, u.can_fire, u.bank_access, u.charge_access, u.key_access, u.stash_access, u.craft_access, u.logs_access
                end
            end
end)

RPC.register("qpixel-business:getBizBank", function(pSource, pBusinessId)
    local data = Await(SQL.execute("SELECT * FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

    return data[1].bank
end)

RPC.register("qpixel-business:role:test", function(pSource, pData)

 employees = {}

    tbl = {
        cid = 2,
        role = "Owner",
        rank = 5
    }

    table.insert(employees, tbl)
    
    local data = Await(SQL.execute("UPDATE businesses SET employees = @employees WHERE business_id = @business_id", {
        ["employees"] = json.encode(employees),
        ["business_id"] = "burger_shot"
    }))

    return true
end)

RPC.register("qpixel-business:business:charge", function(pSource, pBusinessId, pCid, pCharger, pAmount, pComment)
    TriggerClientEvent("showPaymentNotify", -1, pBusinessId, pCid, pCharger, pAmount, pComment)
end)

RPC.register("qpixel-business:phone:charge", function(pSource, pBusinessId, pCid, pCharger, pAmount)
    TriggerClientEvent("showPaymentNotify", -1, pBusinessId, pCid, pCharger, pAmount)
end)

local random = math.random
local function uuid()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

RPC.register("chargeCustomer", function(pSource, pBusinessId, pCid, pComment, pCharger, pAmount, pSrc, pDate)
    local getCustomerBank = Await(SQL.execute("SELECT bank FROM characters WHERE id = @id", {
        ["id"] = pCid
    }))

    local bank = tonumber(getCustomerBank[1].bank)
    local amount = tonumber(pAmount)

    if amount > bank then
        return false
    end
    
    --local takeMoney = Await(SQL.execute("UPDATE characters SET bank = bank - @amount WHERE id = @id", {
    --    ["amount"] = amount,
    --    ["id"] = pCid
    --})) -- wtf? use remove bank pussy

    local user = exports["qpixel-base"]:getModule("Player"):GetUser(tonumber(pSrc))

    if not user then return false end

    user:removeBank(tonumber(pAmount))
    

    -- give money to business

    local getBusinessNameByID = Await(SQL.execute("SELECT business_name FROM businesses WHERE business_id = @business_id", {
        ["business_id"] = pBusinessId
    }))

    local update = Await(SQL.execute("UPDATE businesses SET bank = bank + @amount WHERE business_id = @business_id", {
        ["amount"] = tonumber(pAmount),
        ["business_id"] = pBusinessId
    }))

    local transactionId = uuid()

    local char = user:getCurrentCharacter()

    -- insert biz transaction log
    local insert = Await(SQL.execute("INSERT INTO bank_transactions (identifier, sender, target, label, amount, iden, type, date, business_id, transaction_id) VALUES (@identifier, @sender, @target, @label, @amount, @iden, @type, @date, @business_id, @transaction_id)", {
        ["identifier"] = 0,
        ["sender"] = getBusinessNameByID[1].business_name,
        ["target"] = char.first_name .. " " .. char.last_name, -- change to biz name,
        ["label"] = pComment,
        ["amount"] = pAmount,
        ["iden"] = "PURCHASE",
        ["type"] = "pos",
        ["date"] = pDate,
        ["business_id"] = pBusinessId,
        ["transaction_id"] = transactionId
    }))

    -- insert civ transaction log
    local insert = Await(SQL.execute("INSERT INTO bank_transactions (identifier, sender, target, label, amount, iden, type, date, transaction_id) VALUES (@identifier, @sender, @target, @label, @amount, @iden, @type, @date, @transaction_id)", {
        ["identifier"] = pCid,
        ["sender"] = char.first_name .. " " .. char.last_name,
        ["target"] = getBusinessNameByID[1].business_name,
        ["label"] = pComment,
        ["amount"] = pAmount,
        ["iden"] = "PURCHASE",
        ["type"] = "neg",
        ["date"] = pDate,
        ["transaction_id"] = transactionId
    }))

    TriggerClientEvent("showPaymentReceivedNotify", -1, pCharger)
end)

RPC.register("GetBusinesses", function(pSource)
    local data = Await(SQL.execute("SELECT * FROM businesses", {}))

    if not data then return false, {} end

    return true, data
end)

RPC.register("qpixel-business:transferBank", function(pSource, pBusinessId, pAmount)
    local update = Await(SQL.execute("UPDATE businesses SET bank = bank + @amount WHERE business_id = @business_id", {
        ["amount"] = tonumber(pAmount),
        ["business_id"] = pBusinessId
    }))

    if not update then return false end

    return true
end)