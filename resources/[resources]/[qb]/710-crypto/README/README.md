## 710-crypto made by Kmack710 cause every other crypto system is exploitable AF or they are using some API that constantly goes down and crashes your market to like 1 coin per crypto.... 
## You can have UNLIMITED cryptos! 

# Support - Guilded.gg/710 

## DEPENDANCIES - SCRIPT WILL NOT WORK WITHOUT THESE! 
- 710-lib - https://github.com/Kmack710/710-lib (MUST BE VERSION 1.2 or higher - If you look at your config and dont see - ShConfig - then your outdated)
- oxmysql - newer is better but still supports both 
- qb-menu or nh-context
- qb-input or 710-input 


## Install instructions 
1. Read over the config and customize-server files make sure that they are all the right options! 
2. Make sure you set your SHConfig options in 710-lib as we call that config in this resource
3. Run the SQL file provided (After 710-lib if your installing same time)
4. Smoke a joint, Ciggarette, Grab a coffee, beer, vodka whatever you love :) 
5. Now that we came back all clear headed check out all the configs again make sure you did them all right
6. Restart your server - You cant just restart the resource after doing a refresh with escrowed scripts!
7. If you restart and it says something about you down own this. Stop using zap hosing pick a real host provider - But the easy fix is to stop using FileZilla and to use WinSCP instead as filezilla messes up any escrowed resources... and its worse in like every way lol 
8. If you need support after you have followed all these instructions - Turn debug prints on in the config, restart the script and take big screenshots of both client and server consoles (Atleast 10-20lines up and down from the error) and provide these screenshots it will allow me to help you ALOT faster :) 


## Exports and examples on how to use them! 
```lua
--- EXPORTS THAT MUST BE USED SERVER SIDE 
--- Exports are optional they are just here if you want to use them in other scripts! 
exports['710-crypto']:addCrypto(Pid, cryptoname, amounttoadd) --- adds crypto to a player 
exports['710-crypto']:removeCrypto(Pid, cryptoname, amounttoremove) --- removes crypto from a player 
local cryptoBalance = exports['710-crypto']:getCryptoBalance(Pid, cryptoname) -- gets the players balance of the crypto
--- See examples below on how to use these in other scripts! 
```
```lua 
--- EXAMPLES ON HOW TO USE IN OTHER SCRIPTS  
--- This is how you can use the crypto system With 710lib 
--- SERVER SIDE ONLY 
local Framework = exports['710-lib']:GetFrameworkObject()
local source = source
local Player = Framework.PlayerDataS(source)
local balance = Player.CryptoBalance('ElonCoin')
    Player.AddCrypto('ElonCoin', 69)
    Player.RemoveCrypto('ElonCoin', 69)
    Player.Notify('Your balance is '..balance, 'n710', 5000)
    
    
-- Example of how to use crypto with EXPORTS (SERVER SIDE ONLY CAUSE CLIENT SIDE MONEY IS EXPOITABLE AND TRASH)
local Framework = exports['710-lib']:GetFrameworkObject()
local source = source 
local Player = Framework.PlayerDataS(source)
local Pid = Player.Pid --- MAKE SURE YOU DEFINE PID 
-- Pid = identifier for ESX and Pid = Citizenid on qbcore ! 
local balance = exports['710-crypto']:getCryptoBalance(Pid, 'ElonCoin') --- returns the balance of crypto put on it 
--- add crypto 
exports['710-crypto']:addCrypto(Pid, 'ElonCoin', 420) --- adds 420 'ElonCoin' 
exports['710-crypto']:removeCrypto(Pid, 'ElonCoin', 420) --- removes 420 'ElonCoin' 
```