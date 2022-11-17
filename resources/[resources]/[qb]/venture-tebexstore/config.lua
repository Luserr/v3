Config = {}
Config.Framework = "QB" -- "ESX" or "QB"
Config.DiscordLogs = true -- Set webhook in server.lua Line 1
Config.SpaceInLicensePlate = false -- Set to true if you want a space in license plate for vehicle reward
Config.LicensePlateLetters = 3 -- Amount of letters in plate for vehicle reward
Config.LicensePlateNumbers = 3 -- Amount of numbers in plate for vehicle reward
Config.Packages = {
	{
		PackageName = "Venture Supporter Reloaded", -- Exact package name from tebex
		Items = {
			{
				name = "bank", -- Item or account name depending on type specified below /money
				amount = 15000, -- Amount of item or money
				rank = 'reloadedsupporter',
				type = "account" -- Four types: account, item, or weapon and car
			},
		},
	},
	{
		PackageName = "Venture VIP Reloaded", -- Exact package name from tebex
		Items = {
			{
				name = "bank", -- Item or account name depending on type specified below
				amount = 20000, -- Amount of item or money
				rank = 'reloadedvip',
				type = "account" -- Four types: account, item, or weapon and car
			},
		},
	},
	{
		PackageName = "Venture Silver Reloaded", -- Exact package name from tebex
		Items = {
			{
				name = "bank", -- Item or account name depending on type specified below
				amount = 40000, -- Amount of item or money
				rank = 'reloadedsilver',
				type = "account" -- Four types: account, item, or weapon and car
			},
		},
	},
	{
		PackageName = "Venture Gold Reloaded", -- Exact package name from tebex
		Items = {
			{
				name = "bank",
				amount = 60000,
				rank = 'reloadedgold',
				type = "account"
			},
		},
	},
	{
		PackageName = "Venture Capitalist Reloaded", -- Exact package name from tebex
		Items = {
			{
				name = "bank",
				amount = 100000,
				rank = 'reloadedcapitalist',
				type = "account"
			},
		},
	},
}