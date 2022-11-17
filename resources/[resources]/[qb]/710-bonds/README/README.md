## 710-Bonds by Kmack710 
## Support is always available on the links below :) 
## Guilded - https://guilded.gg/710 (Its better then discord and FREEEEEEEE for everything)
## Discord - https://discord.gg/afvfGdkMVK

## Install instructions 
Step 1 - Run SQL File in your database - BE SURE TO REMOVE THE ESX CODE AT BOTOM OF FILE FIRST IF USING QBCORE.
Step 2 - Add Items / Jobs below if not from that 
Step 3 - Read the Config & customize files
Step 4 - Go smoke a joint or grab a beer or whatever you may do. 
Step 5 - Double check all Config files (99% of problems are caused from config errors.)
Step 6 - Restart your server (You must do this for ANY escrowed script you buy the first time its on server.)


## EXPORT SERVER SIDE
```lua 
--- pid = citizenID for qbcore or indentifier for ESX 
exports['710-bonds']:GetWarrantAmount(pid) --- to check if they have a warrant currently on them.
```

### ESX ONLY - OX inventory/data/items.lua
```lua
	['bountytablet'] = {
		label = 'Bounty Tablet',
		weight = 1,
		stack = false,
		close = true,
		description = 'A Secure Tablet for Bounty Hunters!' ---  
	},
```

## QBCORE STUFF ONLY # ESX STUFF IS IN THE SQL file 
```lua
--- Items 
["bountytablet"] 				 	= {["name"] = "bountytablet",				["label"] = "Bounty hunter tablet",						["weight"] = 500,			["type"] = "item",		["image"] = "bountytablet.png",		["unique"] = true,		["useable"] = true,		["shouldClose"] = true,		["combinable"] = nil,				["description"] = "A Secure Computer Bounty hunters!"},


-- Jobs 

['bondsman'] = {
		label = 'Bail Bondsman',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Bond Agent',
                payment = 50
            },
			['1'] = {
                name = 'Bond Dealer',
                payment = 75
            },
        },
    },
```