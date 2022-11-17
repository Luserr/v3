Thank you for purchasing DG PursuitMode.

For intergration with PS-HUD do the following.

1. Go to ps-hud/client.lua
2. under `local cruiseOn = false` add `local pursuitmode = 0`
3. Add the following anywhere in the client.lua

    RegisterNetEvent("qpixel-hud:pursuit_values", function(pursuit)
	    cruiseOn = pursuit
        pursuitmode = pursuit
        print(pursuit) 
    end)

4. On line 807 replace `speed = data[20]` to `speed = pursuitmode`
4. On line 808 add the following `pursuit = pursuitmode,`
5. on line 940 replace `cruiseOn` with `pursuitmode`
6. On line 981 replace `cruiseOn` with `pursuitmode`

Intergration to the ps-hud should now be working. Any issues please open a ticket: "https://discord.gg/9wmfPs8Xqb"

