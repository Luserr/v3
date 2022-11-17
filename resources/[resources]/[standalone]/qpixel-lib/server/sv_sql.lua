SQL = SQL or {}

function Await(pPromise)
    return Citizen.Await(pPromise)
end

SQL.execute = function(query,param)
    local par
    if param == nil then
        par = {}
    else
        par = param
    end
    local psql = promise.new()
    exports.oxmysql:execute(query,par,function(result)
        psql:resolve(result)
    end)
    return psql
end

SQL.executedynamicparam = function(query, ...)
    local psql = promise.new()
    exports.oxmysql:execute(query,{...},function(result)
        psql:resolve(result)
    end)
    return psql
end

SQL.scalar = function(query, param)
    local par
    if param == nil then
        par = {}
    else
        par = param
    end
    local psql = promise.new()
    exports.oxmysql:scalar(query,par,function(result)
        psql:resolve(result)
    end)
    return psql
end

SQL.scalardynamicparam = function(query, ...)
    local psql = promise.new()
    exports.oxmysql:scalar(query,{...},function(result)
        psql:resolve(result)
    end)
    return psql
end