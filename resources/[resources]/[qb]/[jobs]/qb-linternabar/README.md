# QB- QUA LaLinterna

* Author Quarentin


# Installation
STEP 0: 

`items.lua` 
Add this items your shared items.
and then
Assets > images > Resized_IMAGES > Copy all images. 

qb-inventory or your-inventory > html > images(itemimages) > paste it .

Assets > sound > copy sounds. 
Go to InteractSound > client > html > sounds > paste it.

STEP 1:
```
QBCore > Shared > jobs.lua > Add this lines.
    ["lalinterna"] = {
        label = "La-Linterna",
        defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    
```
STEP 2:

Open qua-LaLinterna file > Open readme.lua > Copy > Go to qb-core > Shared > items.lua
Items part > Add lines and custom items.

STEP 2a:

Open qb-management file > client > cl_config > 
Add this 
Config.BossMenus

```['lalinterna'] = vector3(0, 0, -1500)```


Add this section > Config.BossMenuZones

```    
['lalinterna'] = { coords = vector3(-339.53, -156.44, -500.59), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
```

And then Open your sql and select `management_funds` table 
Add "lalinterna" type "boss"

STEP 3 Optional : 
LalinternaDoorList.lua for qb-doorlock. 
Copy and paste qb-doorlock > configs 
And restart qb-doorlock



STEP 4 : 
Restart Server.


Optional : 

If you custom Framework go Config.lua and edit.

**Here's the part you should pay attention to: the names of the events remain the must be same.**


# Depencies
 * qb-target
 * qb-menu
 * qb-input
 * qb-management
 * qb-phone (Billing Invoice)
 * QBCore 
 * InteractSound (For realistic sound)*
 * xsound
 

#IMPORTANT 
- If you use qb-bossmenu go to Config.lua set `OldBossMenu` set true
- If you want change Items Consumble > go server > consumble.lua .
- On the clientside consumble, animations are hidden because there is a code specific to Calories.




