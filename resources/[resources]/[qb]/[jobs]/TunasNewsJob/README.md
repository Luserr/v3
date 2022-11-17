___________                ___________                        
\__    ___/_ __  ____ _____\__    ___/________________  ______
  |    | |  |  \/    \\__  \ |    |_/ __ \_  __ \____ \/  ___/
  |    | |  |  /   |  \/ __ \|    |\  ___/|  | \/  |_> >___ \ 
  |____| |____/|___|  (____  /____| \___  >__|  |   __/____  >
                    \/     \/           \/      |__|       \/
-- TunasNewsJob V1 --If you enjoyed, go ahead and check out some of my other work ! 
https://github.com/Tuna-Terps
https://www.youtube.com/channel/UCqoEtIuzJc3PGk9YX6kslNw

CFX Forum:


Discord: 


><><><><><><><><><><><><> GETTING STARTED ><><><><><><><><><><><><>

-- REQUIREMENTS -- 
--
1.) skinchanger -- https://github.com/mitlight/skinchanger
--
2.) progressBars -- if you do not edit handler_cl.lua -- https://github.com/EthanPeacock/progressBars/releases/tag/1.0
--
><><><><>

1.) This resource is built for most major frameworks, once installed, ensure you have enabled the correct framework in the config file

2.) Add this resource to your server resource folder, in your server cfg
file, add ensure TunasNewsJob

2.) Import the sql.sql file into your database, this will add the required item and job grades for ESX

3.) There is a lot of options to configure, you are encouraged to add as many or few events as youd like

4.) In config.js, add any server events that you want to have be breaking news events, these should be server events, - You can also add an event somewhere in your code by using from the server:

 TriggerEvent('TunasNewsJob:addEvent',
        eventName: string, -- REQUIRED, this is the server event name: string, -- case sensitive :)
        eventLabel: string, // REQUIRED, this is the headline
        eventPos: { x: number, y: number, z: number}, // REQUIRED
        eventLevel: number, // OPTIONAL,
        timeout: number, // OPTIONAL
        maxSubmissions: number // OPTIONAL
)

TriggerServerEvent('TunasNewsJob:addEvent', 'r3-npc_heists:client:handler:copsNotify', 'Bank Robbery !', { ['x'] = blipData.coords.x, ['y'] = blipData.coords.y, ['z'] = blipData.coords.z}, 3, 450, 4)

5.) Ensure you add ace permissions to whitelist members for manual access
add_ace NewsAccess news allow
add_ace identifier.steam:steamidhere NewsAccess

6.) Adjust Uniforms + NPC outfits in config.lua, you can either individually toggle CUSTOM/VANILLA, or toggle all vanilla gtav peds


As of 1.0.0 here are some known issues with the script

1.) On manual restart of script, ped pool clears but vehicles dont
2.) The member who triggered the event can also participate

><><><><><><><><><><><><> ? QUESTIONS ? FEEDBACK ?  ><><><><><><><><><><><><>

Reach out on my dev discord:

Tuna Terps#0067

https://discord.gg/ZnCZHmpNUV


---  QBCORE ---


1.) Navigate to /qb-core/shared/jobs.lua and include the required job:
    --
```lua

    ['news'] = {
        label = 'Weazel News',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Stringer',
                payment = 100
            }
        }
    },

```
    --
2.)    Navigate to /qb-core/shared/items.lua and add the required item:

    --
```lua
    ['news_camera'] = {['name'] = 'news_camera', ['label'] = 'Camera', ['weight'] = 1, ['type'] = 'item', ['image'] = 'news_camera.png', ['unique'] = false, ['useable'] = false, ['shouldClose'] = false,['combinable'] = nil, ['description'] = 'Record the News'},
```
    --
3.) navigate to qb-clothing/config.lua and add the following
```lua



-- Config.Outfits

['reporter'] = {
        -- job
        ['male'] = {
            -- gender
            [0] = {
                -- grade
                [1] = {
                    -- outfits
                    outfitLabel = 'stringer',
                    outfitData = {
                        ['pants'] = {item = 12, texture = 0}, -- Pants
                        ['arms'] = {item = 10, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 10, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 100, texture = 3}, -- Jacket
                        ['shoes'] = {item = 10, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                }
            }
        },
        ['female'] = {
            -- gender
            [0] = {
                -- grade
                [1] = {
                    -- outfits
                    outfitLabel = 'stringer',
                    outfitData = {
                        ['pants'] = {item = 12, texture = 0}, -- Pants
                        ['arms'] = {item = 10, texture = 0}, -- Arms
                        ['t-shirt'] = {item = 10, texture = 0}, -- T Shirt
                        ['vest'] = {item = 0, texture = 0}, -- Body Vest
                        ['torso2'] = {item = 100, texture = 3}, -- Jacket
                        ['shoes'] = {item = 10, texture = 0}, -- Shoes
                        ['accessory'] = {item = 0, texture = 0}, -- Neck Accessory
                        ['bag'] = {item = 0, texture = 0}, -- Bag
                        ['hat'] = {item = 58, texture = 0}, -- Hat
                        ['glass'] = {item = 0, texture = 0}, -- Glasses
                        ['mask'] = {item = 0, texture = 0} -- Mask
                    }
                }
            }
        },
    },


```

3.) Notify + drawn help notify are SA for QBCore and SA - left client event open for your own notifications


--- STANDALONE ---

Standalone will need to address 
1.) job check
2.) money add/remove
3.) inventory check; 