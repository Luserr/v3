# *Required*
```
# -> qb-core/shared/items.lua

   -- m-Potions
   ["emptybottle"]          = {["name"] = "emptybottle",       ["label"] = "Empty Bottle",             ["weight"] = 25,       ["type"] = "item",      ["image"] = "emptybottle.png",          ["unique"] = false,    ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaolife25"]          = {["name"] = "pocaolife25",       ["label"] = "Potion of Life +25%",     ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaolife25.png",          ["unique"] = false,    ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaolife50"]          = {["name"] = "pocaolife50",       ["label"] = "Potion of Life +50%",     ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaolife50.png",          ["unique"] = false,    ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaolife75"]          = {["name"] = "pocaolife75",       ["label"] = "Potion of Life +75%",     ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaolife75.png",          ["unique"] = false,    ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaolife100"]         = {["name"] = "pocaolife100",         ["label"] = "Potion of Life +100%",    ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaolife100.png",          ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

   ["pocaoarmour25"]           = {["name"] = "pocaoarmour25",        ["label"] = "Potion of Armour +25%",   ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaoarmour25.png",          ["unique"] = false,     ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaoarmour50"]           = {["name"] = "pocaoarmour50",        ["label"] = "Potion of Armour +50%",   ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaoarmour50.png",          ["unique"] = false,     ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaoarmour75"]           = {["name"] = "pocaoarmour75",        ["label"] = "Potion of Armour +75%",   ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaoarmour75.png",          ["unique"] = false,     ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaoarmour100"]          = {["name"] = "pocaoarmour100",       ["label"] = "Potion of Armour +100%",  ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaoarmour100.png",          ["unique"] = false,    ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

   ["pocaostamina75"]          = {["name"] = "pocaostamina75",       ["label"] = "Potion of Stamina +75%",  ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaostamina75.png",          ["unique"] = false,    ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaostamina100"]     = {["name"] = "pocaostamina100",    ["label"] = "Potion of Stamina +100%", ["weight"] = 25,        ["type"] = "item",      ["image"] = "pocaostamina100.png",          ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

   ["pocaonightvision25"]     = {["name"] = "pocaonightvision25",    ["label"] = "Potion of Nightvision 10s",  ["weight"] = 25,    ["type"] = "item",    ["image"] = "pocaonightvision25.png",          ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaonightvision50"]     = {["name"] = "pocaonightvision50",    ["label"] = "Potion of Nightvision 20s",  ["weight"] = 25,    ["type"] = "item",    ["image"] = "pocaonightvision50.png",          ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaonightvision75"]     = {["name"] = "pocaonightvision75",    ["label"] = "Potion of Nightvision 30s",  ["weight"] = 25,    ["type"] = "item",    ["image"] = "pocaonightvision75.png",          ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaonightvision100"]    = {["name"] = "pocaonightvision100",   ["label"] = "Potion of Nightvision 40s",  ["weight"] = 25,    ["type"] = "item",    ["image"] = "pocaonightvision100.png",         ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

   ["pocaospeed25"]        = {["name"] = "pocaospeed25",    ["label"] = "Potion of Speed 10s",     ["weight"] = 25,    ["type"] = "item",    ["image"] = "pocaospeed25.png",          ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaospeed50"]        = {["name"] = "pocaospeed50",    ["label"] = "Potion of Speed 20s",     ["weight"] = 25,    ["type"] = "item",    ["image"] = "pocaospeed50.png",          ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaospeed75"]        = {["name"] = "pocaospeed75",    ["label"] = "Potion of Speed 30s",     ["weight"] = 25,    ["type"] = "item",    ["image"] = "pocaospeed75.png",          ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
   ["pocaospeed100"]          = {["name"] = "pocaospeed100",      ["label"] = "Potion of Speed 40s",     ["weight"] = 25,    ["type"] = "item",    ["image"] = "pocaospeed100.png",         ["unique"] = false,      ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

   ["mesapocoes"]             = {["name"] = "mesapocoes",      ["label"] = "Table of Potions",  ["weight"] = 25,        ["type"] = "item",      ["image"] = "mesapocoes.png",          ["unique"] = false,     ["useable"] = true,      ["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
```

```
# -> qb-core/server/player.lua

   PlayerData.metadata['potionlifexp'] = PlayerData.metadata['potionlifexp'] or 0
    PlayerData.metadata['potionarmourxp'] = PlayerData.metadata['potionarmourxp'] or 0
    PlayerData.metadata['potionstaminaxp'] = PlayerData.metadata['potionstaminaxp'] or 0
    PlayerData.metadata['potionvisionxp'] = PlayerData.metadata['potionvisionxp'] or 0
    PlayerData.metadata['potionspeedxp'] = PlayerData.metadata['potionspeedxp'] or 0

    Example: https://media.discordapp.net/attachments/823989594679672933/955137714318090290/unknown.png
```
# *About*
>A simple script that allows you to make potions to consume with some effects. The available effects are: Health, Armor, Stamina, Nightvision and Speed. Potions are evolved depending on the player's experience, you will have to make the weakest ones to reach the strongest ones.

# *How it works?*
> Everyone starts with 0 experience, and each potion gives the player an experience value. For example: For me to make a 100% health potion I need to go through the 25/50 and 75% potions. All this can be configured through config.lua.

# *What types of potions are there?*
![asdasdsadsa|690x388, 75%](upload://jTQyg3bwyPMnjocYNrUHjd3B4Po.png)

# *Dependencies?*
> QB-Menu ( [Click Here](https://github.com/qbcore-framework/qb-menu) )
> QB-Target ( [Click Here](https://github.com/BerkieBb/qb-target) )

# *Features*
> Enable jobor not for each potion
> Change effects
> Change required experience
> Activate/deactivate each potion

# *Useful links*
> Config ( [Click Here](https://pastebin.com/JyRHXnMB) )
> Preview ( 

**# Also from me**

> [[QBCORE] - m-DrugSystem ](https://forum.cfx.re/t/paid-qbcore-drug-system-optimized-many-features-full-and-easy-customization/4816955/8)
> [[QBCORE] - m-Blackmarket ](https://forum.cfx.re/t/paid-qbcore-blackmarket-script-optimized-many-features-full-and-easy-customization/4816245/2)
> [[QBCORE] - m-LicensePlate ](https://forum.cfx.re/t/paid-qbcore-m-licenseplate-optimized-many-features-full-and-easy-customization/4820352)
> [[QBCORE] - m-CarRebuild ](https://forum.cfx.re/t/paid-qbcore-m-carrebuild-optimized-many-features-full-customization/4820948)
> [[QBCORE] - m-Lumberjack ](https://forum.cfx.re/t/paid-qbcore-m-lumberjack-optimized-many-features-full-customization/4821201)
> [[QBCORE] - m-TunerJob ](https://forum.cfx.re/t/paid-qbcore-tunerjob-many-features-air-suspension-car-wrapping-nitro-refill/4821629/8)
> [[QBCORE] - m-MoneyWash ](https://forum.cfx.re/t/paid-qbcore-m-moneywash-optimized-many-features-full-customization/4822108)
> [[QBCORE] - m-Hunting ](https://forum.cfx.re/t/paid-qbcore-m-hunting-many-features-level-system-eating-tents/4825031)
> [[QBCORE] - m-Fishing ](https://forum.cfx.re/t/paid-qbcore-m-fishing-many-features-level-system-eating-fish/4824449)
> [[QBCORE] - m-DrugSelling ](https://forum.cfx.re/t/paid-qbcore-m-drugselling-many-features-level-system/4825803)
> [[QBCORE] - m-HorrorHouse ](https://forum.cfx.re/t/paid-qbcore-m-horrorhouse-many-features-sound-effects-ped-effects/4827201)
> [[QBCORE] - m-Deliverys ](https://forum.cfx.re/t/paid-qbcore-m-deliverys-many-features-level-system-more/4827523)
> [[QBCORE] - m-Repairs](https://forum.cfx.re/t/free-qbcore-m-repairs-repair-color-change-stations/4828036)