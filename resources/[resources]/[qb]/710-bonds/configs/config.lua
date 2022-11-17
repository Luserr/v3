Config = {}

Config.Important = { 
    ['PrintLogs'] = false, --- true or false for admin type prints that will tell you when people try to use stuff they shouldnt.
    ['WebhookLogs'] = true, --- same as above but just sends the alerts to a webhook instead. ONLY ONE CAN BE TRUE!! -- LOOK at customize-server.lua for webhook options. 
}

Config.Bonds = {
    -- Bondsman Job stuff 
    ['BondsmanLocation'] = vec4(-528.1776, -190.1350, 38.2271, 31.1417), -- for bondsman Computer/menu  uses target. 
    ['BondsManJobName'] = 'bondsman', --- all lowercase its the job name you would use /setjob with. 
    ['BondDownPaymentPercent'] = 0.10, --- 0.10 = 10% -- This amount will be taken from the persons bank account if they accept!
    --- Bounty hunter stuff. -- Bounty hunter is not a job its a independent thing people get a lisence for so they can do it on top of their job! 
    ['BountyHunterTabletItem'] = 'bountytablet', --- Item bounty hunters must have to get bounties. Must be an approved bounty hunter to open this. 
    ['JobNameToGiveBountyLicense'] = 'government', --- Job name that can do /give bounty license command!
    ['GiveBountyLicenseCommand'] = 'givebountylicense', --- Command Job above can use to approve someone as a bounty hunter.
    ['GiveBountyLicenseCommandDesc'] = 'Give a bounty hunter license to a citizen', --- Description for the command. 
    ['BountyWarrantPayPercent'] = 1, --- 1 = 100%  --- be sure to change this in locales aswell if you change it
    ['BountyBondsPayPercent'] = 0.05, --- 0.05 = 5% --- be sure to change this in locales aswell if you change it
    --- Courthouse stuff 
    ['CourthouseJobName'] = 'courthouse', --- For bail to be paid to from the bondsman and paid back after when court and bail is done.
    ['CourthouseMenuLocation'] = vec4(-577.1224, -209.4861, 38.7651, 331.8103),
    
    --- Police stuff 
    ['PoliceJobName'] = 'police', --- for reciving officer to confirm they revieved the prisoner. 
    ['PoliceWarrantsPCKLocation'] = vec4(452.6243, -990.0981, 30.6896, 199.9346), --- Target location for the PC that officers can check warrants on.
    ['UseCommandsToCheckWarrants'] = true, --- This and the location above both open the same menu. 
    
    
    ['ManagementJobs'] = { --- any jobs that are allowed to EDIT the warrants or bonds. They can also give bounty lisences and other things. 
        'police', --- Police needs to be on here to see warrants without this the check warrants location above wont work.
        'courthouse',
        'bondsman' -- part of this script, if you changed the name above change it here! 
    }
}

Config.HighPhone = {
    CourthouseEmail = "Courthouse@venture.com", --- Email address for the courthouse.
    CourthouseText = "Courthouse", --- Text for the courthouse.
    CourhouseNewWarrantSubject = "New Warrant", --- Subject for the email that is sent from the courthouse.
    CourhouseNewWarrantBody = " has a warrant. Warrant info : ", --- Body for the email that is sent from the courthouse.
    CourtHouseNewBountySubject = "New Bounty", --- Subject for the email that is sent from the courthouse.
    CourtHouseNewBountyBody = " has a bounty. Bounty info : ", --- Body for the email that is sent from the courthouse.
    BondsmanEmail = "Bonds@venture.com", --- Email address for the bondsman.
    BondsmanText = "Bail Bonds", --- Text for the bondsman.
    BondsmanNewBondSubject = "New Bond", --- Subject for the email that is sent from the bondsman.
    BondsmanNewBondBody = "You now have a bail bond! Bond info : ", --- Body for the email that is sent from the bondsman.
    BondsmanNewBondBody2 = " is the price of your bond. Be sure to appear in court or you will have to pay the entire bond back",
    BondsmanNewBountySubject = "New Bounty", --- Subject for the email that is sent from the bondsman.
    BondsmanNewBountyBody = " has a bounty. Bounty info : ", --- Body for the email that is sent from the bondsman.


}

Config.Debug = {
    ['DebugPrint'] = false, --- this will print ALOT of data turn this on before asking for any support then do the thing that is giving you errors and screenshot 5-10 lines up and down from both server and client consoles 
    ['PolyZones'] = false, --- this will show q/qb-target location boxes. 
}