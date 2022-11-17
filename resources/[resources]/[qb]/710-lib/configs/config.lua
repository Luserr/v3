Config = {}
--- IMPORTANT MAKE SURE TO CHECK EVERY OPTION before use. 
Config.Framework = 'qbcore' -- 'qbcore' or 'esx'
Config.QB_prefix = 'qb-' -- If you change your resource names 
Config.Inventory = 'qb-inventory' -- 'ox-inventory', 'qb/aj/lj-inventory' or 'custom' -- IF custom goto custom-client and custom-server! 
Config.UseJobCommand = false -- true or false -- This is a /Job command built in it works with 710-PoliceJob automatically to so dept and rank. Works for all other jobs too! 
--- If any below are false it will load the frameworks default option for these. If True check custom files! 
--- Use Custom Resources option -- The custom-client and custom-server were made so you could swap out full things easy and still be able
--- to update the main files as updates come out! :) ---
Config.CustomDrawText_CL = false --- True if you want to use custom DrawTextUI. See Client-Customize! 
Config.CustomNotifications = false --- True/False -- be sure to check the custom files in the config folder! 
Config.Using710Crypto = true --- Optional its for the script and will incorporate the crypto system directly into playerdata calls.
Config.Using710Management = false --- Optional its for the script and will incorporate the managment system directly into playerdata calls.

ShConfig = { --- THIS IS A SHARED CONFIG -- Is what this means is you can call this config in any resource with Framework.Config then whatever option you are looking for 
    --- EXAMPLE Available in README on how to use this ----- 
    Framework = Config.Framework, --- CHange this above dont change it here. 
    QbPre = Config.QB_prefix, --- CHange this above dont change it here. 
    OxSQL = 'new', -- 'new' or 'old' -- New means most up to date version old means anything 1.9.0 or older
    MenuResource = 'qb-menu', -- qb-menu or nhcontext ( make sure its the newest versions - Nirohiro made nh-context only download that one not all the other forks.)
    InventoryResource = Config.Inventory, --- CHange this above dont change it here. 
    InputResource = 'qb-input', -- qb-input or 710-input (710-input is just a fork of qb-input with no changes besides the name i just did that cause ESX people would get mad they needed a qb resource lol)
    InputTarget = 'qb-target', -- qb-target or qtarget --- Maybe ox_target soon once they get it all working and out of beta :) 
    UsingHighPhone = true, --- Optional option Mainly used in 710-scripts 
    Using710Management = Config.Using710Management, --- Optional option Mainly used in 710-scripts

}
