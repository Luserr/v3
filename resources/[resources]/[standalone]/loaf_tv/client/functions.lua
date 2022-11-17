tvs = {}

function MoveMouse(dui, x, y)
    SendDuiMouseMove(dui, math.floor(x+0.5), math.floor(y+0.5))
    Wait(150)
end

function MouseClick(dui)
    SendDuiMouseDown(dui, "left")
    Wait(5)
    SendDuiMouseUp(dui, "left")
    Wait(5)
end

function ChangeVolume(dui, website, percentage)
    if website == "MP4" then
        SendDuiMessage(dui, json.encode({
            volume = percentage
        }))
        return
    end

    local websiteData = Config.DuiPositions[website]
    if not websiteData or not websiteData.Volume then return end
    if percentage < 0 or percentage > 100 then return end

    local min, max = websiteData.Volume.Stages[1], websiteData.Volume.Stages[2]

    local diff = max - min
    local xStage, yStage = diff.x / 100, diff.y / 100
    local xPos, yPos = math.floor(min.x + xStage * percentage + 0.5), math.floor(min.y + yStage * percentage + 0.5)

    MoveMouse(dui, math.floor(websiteData.Volume.Initial.x), math.floor(websiteData.Volume.Initial.y))
    MoveMouse(dui, xPos, yPos)
    MouseClick(dui)
    MoveMouse(dui, websiteData.Idle.x, websiteData.Idle.y)
end

function GetTime(id)
    if not id or not tvs[id] then return end 
    return (math.floor(GetGameTimer()/1000 - tvs[id].started/1000 + 0.5) - tvs[id].time)
end