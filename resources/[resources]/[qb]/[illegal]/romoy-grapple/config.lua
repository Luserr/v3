Config = {
    Bone = 6286, -- Ped Bone Index | https://wiki.gtanet.work/index.php?title=Bones
    Weapon = `weapon_g22`, -- Example : `weapon_pistol` or 453432689 | https://wiki.gtanet.work/index.php?title=Weapons_Models
    Distance = 40, -- Distance you can Grapple
    EarlyStop = 0.5, -- Early Stop
    Volume = 0.6, -- Grapple Volume
    WaitTime = 2.0, -- Wait from shooting to grapple
    GrappleSpeed = 10.0, -- Speed
    Button = 24 -- Left click | https://docs.fivem.net/docs/game-references/controls/
}

function DrawText()
    exports["qb-drawtext"]:DrawText("[Shoot] Grapple", 'top')
end

function DrawTextKeyPress()
    exports["qb-drawtext"]:KeyPressed()
end

function UnDrawText()
    exports["qb-drawtext"]:HideText()
end

-- reasons to comit sicude