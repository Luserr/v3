QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = false -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Civilian',
                payment = 30
            },
        },
	},
    ['mayor'] = {
		label = 'Mayor',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Los Santos Mayor',
                payment = 350
            },
        },
	},
    ["noodle"] = {
        label = "Noodle",
        defaultDuty = true,
        grades = {
            ['0'] = {
                label = 'Worker',
                payment = 30,
            },
            ['1'] = {
                label = 'Vice Boss',
                payment = 70,
            },
            ['2'] = {
                label = 'Boss',
                isboss = true,
                payment = 130,
                bankAuth = true,
            },
        }
    },
    ["icecream"] = {
        label = "IceCream",
        offDutyPay = false,
        defaultDuty = false,
        grades = {
            ['0'] = {
                name = 'Worker',
                payment = 30,
            },
            ['1'] = {
                name = 'Vice Boss',
                payment = 70,
            },
            ['2'] = {
                name = 'Boss',
                isboss = true,
                payment = 130,
                bankAuth = true,
            },
        }
    },
    ['beanmachine'] = {
		label = 'Bean Machine',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150,bankAuth = true, },
        },
	},
    ["billiards"] = {
		label = "Billiards Bar",
		defaultDuty = true,
		grades = {
			['0'] = {
				name = 'Trial',
				payment = 25
		},
			['1'] = {
				name = 'Apprentice Bartender',
				payment = 50
		},
			['2'] = {
				name = 'Bartender',
				payment = 75
		},
			['3'] = {
				name = 'Supervisor',
				payment = 100
		},
			['4'] = {
				name = 'Manager',
                isboss = true,
				payment = 125,
                bankAuth = true,
		},
			['5'] = {
				name = 'Owner',
				isboss = true,
				payment = 150,
                bankAuth = true,
			},
		},
    },
    ['pizzathis'] = {
		label = 'Maldinis Pizza',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 65 },
			['2'] = { name = 'Experienced', payment = 75 },
			['3'] = { name = 'True Cook', payment = 85 },
			['4'] = { name = 'Manager', isboss = true, payment = 95, bankAuth = true, },
        },
	},
    ['burgershot'] = {
		label = 'BurgerShot',
		defaultDuty = true,
		offDutyPay = true,
		grades = {
			['0'] = {
				name = 'Recruit',
				payment = 50
			},
			['1'] = {
				name = 'Crew Member',
				payment = 65
			},
			['2'] = {
				name = 'Shift Manager',
				payment = 75
			},
			['3'] = {
				name = 'Manager',
				payment = 85
			},
			['4'] = {
				name = 'Owner',
				isboss = true,
				payment = 95,
                bankAuth = true,
			},
		},
	},
    ['cerberus'] = {
		label = 'Cerberus Business Incorporated',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Employee',
                payment = 50
            },
            ['1'] = {
                name = 'Boss',
                isboss = true,
                payment = 95,
                bankAuth = true,
            },
        },
	},
    ['oilwell'] = {
        label = 'Oil Company',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Oilwell Operator',
                payment = 387
            },
            ['1'] = {
                name = 'Oilwell Operator tier 2',
                payment = 450
            },
            ['2'] = {
                name = 'Event Driver tier 2',
                payment = 531
            },
            ['3'] = {
                name = 'Sales',
                payment = 531
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                bankAuth = true,
                payment = 781
            },
        },
    },
    ['weedshop'] = {
        label = 'Weed Dispensary',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 293
            },
            ['1'] = {
                name = 'Employee',
                payment = 337
            },
            ['2'] = {
                name = 'Sales Manager',
                payment = 406
            },
            ['3'] = {
                name = 'Manager',
                payment = 500
            },
            ['4'] = {
                name = 'Boss',
                isboss = true,
                payment = 625,
                bankAuth = true,
            },
        },
    },
    ['casino'] = {
		label = 'Diamond Casino',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Employee',
                payment = 55
            },
            ['1'] = {
                name = 'Manager',
                isboss = true,
                payment = 75,
                bankAuth = true,
            },
            ['2'] = {
                name = 'Casino Owner',
                isboss = true,
                payment = 100,
                bankAuth = true,
            },
        },
	},
    ['cardshop'] = {
		label = 'Card Shop',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 187
            },
            ['1'] = {
                name = 'Employee',
                payment = 218
            },
            ['2'] = {
                name = 'Mobile Van Driver',
                payment = 250
            },
            ['3'] = {
                name = 'Assistant Manager',
                isboss = true,
                payment = 312,
                bankAuth = true,
            },
            ['4'] = {
                name = 'Shop Owner',
                isboss = true,
                payment = 500,
                bankAuth = true,
            },
        },
	},
    ['vanilla'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 625, bankAuth = true, },
        },
	},
    ["records"] = {
        label = "Records",
        offDutyPay = false,
        defaultDuty = false,
        grades = {
            ['0'] = {
                name = 'Worker',
                payment = 312,
            },
            ['1'] = {
                name = 'Vice Boss',
                payment = 437,
            },
            ['2'] = {
                name = 'Boss',
                isboss = true,
                payment = 625,
                bankAuth = true,
            },
        }
    },
    ['popsdiner'] = {
		label = 'Pop\'s Diner',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 187 },
			['1'] = { name = 'Novice', payment = 218 },
			['2'] = { name = 'Experienced', payment = 250 },
			['3'] = { name = 'Advanced', payment = 312 },
			['4'] = { name = 'Manager', isboss = true, payment = 500, bankAuth = true, },
        },
	},
    ['gallery'] = {
		label = 'Viva le Cultur',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 250
            },
            ['1'] = {
                name = 'Owner',
                isboss = true,
                payment = 500,
                bankAuth = true,
            },
        },
	},
    ['uwu'] = {
		label = 'uWu Cafe',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Recruit',
				payment = 187
			},
			['1'] = {
				name = 'Crew Member',
				payment = 218
			},
			['2'] = {
				name = 'Shift Manager',
				payment = 250
			},
			['3'] = {
				name = 'Manager',
				payment = 312
			},
			['4'] = {
				name = 'Owner',
				isboss = true,
				payment = 500,
                bankAuth = true,
			},
		},
	},
	['police'] = { -- start of police departments
		label = 'Los Santos Police Department',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 312
            },
			['1'] = {
                name = 'Solo Cadet',
                payment = 312
            },
			['2'] = {
                name = 'Officer',
                payment = 375
            },
			['3'] = {
                name = 'Sr. Officer',
                payment = 0
            },
            ['4'] = {
                name = 'Corporal',
                payment = 437
            },
            ['5'] = {
                name = 'Dispatch',
                payment = 500
            },
            ['6'] = {
                name = 'Sergeant',
                payment = 500
            },
            ['7'] = {
                name = 'Lieutenant',
                payment = 562
            },
            ['8'] = {
                name = 'Captain',
                payment = 625
            },
            ['9'] = {
                name = 'Deputy Chief of Police',
                isboss = true,
                payment = 781,
                bankAuth = true,
            },
			['10'] = {
                name = 'Assistant Chief of Police',
				isboss = true,
                payment = 843,
                bankAuth = true,
            },
            ['11'] = {
                name = 'Chief of Police',
				isboss = true,
                payment = 906,
                bankAuth = true,
            },
        },
	},
    ['sasp'] = {
		label = 'San Andreas State Police',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trooper',
                payment = 105
            },
			['1'] = {
                name = 'Trooper',
                payment = 105
            },
			['2'] = {
                name = 'Trooper',
                payment = 105
            },
			['3'] = {
                name = 'Trooper',
                payment = 105
            },
            ['4'] = {
                name = 'Trooper',
                payment = 105
            },
            ['5'] = {
                name = 'Trooper',
                payment = 105
            },
            ['6'] = {
                name = 'Trooper',
                payment = 105
            },
            ['7'] = {
                name = 'Trooper',
                payment = 105
            },
			['8'] = {
                name = 'Assistant Chief',
				isboss = true,
                payment = 145,
                bankAuth = true,
            },
            ['9'] = {
                name = 'Chief of SASP',
				isboss = true,
                payment = 155,
                bankAuth = true,
            },
        },
	},
	['saspr'] = {
		label = 'San Andreas State Park Rangers',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Junior Ranger',
                payment = 30
            },
			['1'] = {
                name = 'Ranger',
                payment = 50
            },
			['2'] = {
                name = 'Senior Ranger 2',
                payment = 80
            },
			['3'] = {
                name = 'Senior Ranger 1',
                payment = 90
            },
            ['4'] = {
                name = 'Corporal 2',
                payment = 100
            },
            ['5'] = {
                name = 'Corporal 1',
                payment = 105
            },
            ['6'] = {
                name = 'Trooper Ranger',
                payment = 125
            },
            ['7'] = {
                name = 'Sergeant 2',
                payment = 135
            },
			['8'] = {
                name = 'Sergeant 1',
				isboss = true,
                payment = 145,
                bankAuth = true,
            },
            ['9'] = {
                name = 'Lieutenant',
				isboss = true,
                payment = 155,
                bankAuth = true,
            },
        },
	},
    ['bcso'] = {
		label = 'Blaine County Sheriffs Office',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 30
            },
			['1'] = {
                name = 'Solo Cadet',
                payment = 50
            },
			['2'] = {
                name = 'Deputy',
                payment = 80
            },
			['3'] = {
                name = 'Senior Deputy',
                payment = 90
            },
            ['4'] = {
                name = 'Corporal',
                payment = 100
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 105
            },
            ['6'] = {
                name = 'Lieutenant',
                payment = 125
            },
            ['7'] = {
                name = 'Captain',
                payment = 135
            },
			['8'] = {
                name = 'Undersheriff',
				isboss = true,
                payment = 145,
                bankAuth = true,
            },
            ['9'] = {
                name = 'Sheriff',
				isboss = true,
                payment = 155,
                bankAuth = true,
            },
        },
	},
    ['sdso'] = {
		label = 'Senora Desert Sheriffs Office',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 30
            },
			['1'] = {
                name = 'Solo Cadet',
                payment = 50
            },
			['2'] = {
                name = 'Deputy',
                payment = 80
            },
			['3'] = {
                name = 'Senior Deputy',
                payment = 90
            },
            ['4'] = {
                name = 'Corporal',
                payment = 100
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 105
            },
            ['6'] = {
                name = 'Lieutenant',
                payment = 125
            },
            ['7'] = {
                name = 'Captain',
                payment = 135
            },
			['8'] = {
                name = 'Undersheriff',
				isboss = true,
                payment = 145,
                bankAuth = true,
            },
            ['9'] = {
                name = 'Sheriff',
				isboss = true,
                payment = 155,
                bankAuth = true,
            },
        },
	},
    ['pbso'] = {
		label = 'Paleto Bay Sheriffs Office',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 30
            },
			['1'] = {
                name = 'Solo Cadet',
                payment = 50
            },
			['2'] = {
                name = 'Deputy',
                payment = 80
            },
			['3'] = {
                name = 'Senior Deputy',
                payment = 90
            },
            ['4'] = {
                name = 'Corporal',
                payment = 100
            },
            ['5'] = {
                name = 'Sergeant',
                payment = 105
            },
            ['6'] = {
                name = 'Lieutenant',
                payment = 125
            },
            ['7'] = {
                name = 'Captain',
                payment = 135
            },
			['8'] = {
                name = 'Undersheriff',
				isboss = true,
                payment = 145,
                bankAuth = true,
            },
            ['9'] = {
                name = 'Sheriff',
				isboss = true,
                payment = 155,
                bankAuth = true,
            },
        },
	}, -- end police departments
	['ambulance'] = {
		label = 'EMS',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Pay Grade 0',
                payment = 400
            },
            ['1'] = {
                name = 'Pay Grade 1',
                payment = 472
            },
            ['2'] = {
                name = 'Pay Grade 2',
                payment = 575
            },
			['3'] = {
                name = 'Pay Grade 3',
                payment = 637
            },
            ['4'] = {
                name = 'Pay Grade 4',
                payment = 700
            },
            ['5'] = {
                name = 'Pay Grade 5',
                payment = 762
            },
			['6'] = {
                name = 'Pay Grade 6',
                payment = 825
            },
			['7'] = {
                name = 'Pay Grade 7',
                payment = 981
            },
            ['8'] = {
                name = 'Pay Grade 8',
				isboss = true,
                payment = 1043,
                bankAuth = true,
            },
			['9'] = {
                name = 'Pay Grade 9',
				isboss = true,
                payment = 1106,
                bankAuth = true,
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'House Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 90
            },
			['3'] = {
                name = 'Broker',
                payment = 105
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 125,
                bankAuth = true,
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit Driver',
                payment = 218
            },
			['1'] = {
                name = 'Driver',
                payment = 281
            },
			['2'] = {
                name = 'Event Driver',
                payment = 325
            },
			['3'] = {
                name = 'Executive Driver',
                payment = 375
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 425,
                bankAuth = true,
            },
        },
	},
     ['bus'] = {
		label = 'Bus',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 312
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 187
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 200
            },
			['2'] = {
                name = 'Business Sales',
                payment = 250
            },
			['3'] = {
                name = 'Finance',
                payment = 300
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 400,
                bankAuth = true,
            },
        },
	},
    ['motordealer'] = {
        label = 'Rows Rides Dealer',
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 187
            },
            ['1'] = {
                name = 'Showroom Sales',
                payment = 200
            },
            ['2'] = {
                name = 'Business Sales',
                payment = 250
            },
            ['3'] = {
                name = 'Finance',
                payment = 300
            },
            ['4'] = {
                name = 'Manager',
                isboss = true,
                payment = 400,
                bankAuth = true,
            },
        },
    },
    ['luxury'] = {
		label = 'Luxury Dealer',
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 65
            },
			['2'] = {
                name = 'Business Sales',
                payment = 80
            },
			['3'] = {
                name = 'Finance',
                payment = 90
            },
			['4'] = {
                name = 'Assistant Manager',
                payment = 150,
                isboss = true,
            },
			['5'] = {
                name = 'Manager',
                payment = 200,
                isboss = true,
                bankAuth = true,
            },
			['6'] = {
                name = 'Owner',
				isboss = true,
                payment = 310,
                bankAuth = true,
            },
        },
	},
	['mechanic'] = {
		label = 'Bennys Mechanic',
		defaultDuty = true,
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
                payment = 150,
                bankAuth = true,
            },
        },
	},
	['judge'] = {
		label = 'Honorary',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Judge',
                isboss = true,
                payment = 1212,
                bankAuth = true,
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                isboss = true,
                payment = 625,
                bankAuth = true,
            },
        },
	},
	['reporter'] = {
		label = 'LSBN News',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 312
            },
            ['1'] = {
                name = 'Reporter',
                payment = 437
            },
            ['2'] = {
                name = 'News Anchor',
                payment = 562
            },
            ['3'] = {
                name = 'Ron Burgundy',
                isboss = true,
                payment = 687,
                bankAuth = true,
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 100
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 100
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 100
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 187
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 187
            },
        },
	},
-- CUSTOM ADDED JOBS
    ['tuner'] = {
        label = '6STR Tuner Shop',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Mechanic',
                payment = 75
            },
            ['2'] = {
                name = 'Vehicle Sales',
                payment = 100
            },
            ['3'] = {
                name = 'Manager',
                isboss = true,
                payment = 125,
                bankAuth = true,
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                payment = 150,
                bankAuth = true,
            },
        },
    },
    ['hayesauto'] = {
        label = 'Hayes Auto',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Apprentice',
                payment = 250
            },
            ['1'] = {
                name = 'Mechanic',
                payment = 312
            },
            ['2'] = {
                name = 'Assistant Manager',
                payment = 406
            },
            ['3'] = {
                name = 'Boss',
                isboss = true,
                payment = 500,
                bankAuth = true,
            },
            ['4'] = {
                name = 'CEO',
                isboss = true,
                payment = 625,
                bankAuth = true,
            },
        },
    },
    ['delivery'] = {
		label = 'Dodo Deliveries', --- change if you like
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Delivery Driver',
                payment = 50
            },
        },
	},
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
                payment = 150,
                bankAuth = true,
            },
        },
	},
    ["aoki"] = {
        label = "Aoki Restaurant",
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
                payment = 150,
                bankAuth = true,
            },
        },
	},
    ["irishpub"] = {
        label = "Irish Pub",
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = "Bartender",
                 payment = 50
            },
            ['1'] = {
                name = "Bartender",
                payment = 75
            },
            ['2'] = {
                name = "Bartender",
                payment = 100
            },
            ['3'] = {
                name = "Bartender",
                payment = 125
            },
            ['4'] = {
                name = "CEO",
                isboss = true,
                payment = 150,
                bankAuth = true,
            },
        },       
    },
    ['whitewidow'] = {
		label = 'White Widow',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 290
            },
			['1'] = {
                name = 'Deliveries',
                payment = 310
            },
			['2'] = {
                name = 'Sales',
                payment = 340
            },
			['3'] = {
                name = 'Grower',
                payment = 375
            },
			['4'] = {
                name = 'Assistant Manager',
                payment = 410
            },
			['5'] = {
                name = 'Manager',
				isboss = true,
                payment = 450
            },
			['6'] = {
                name = 'Owner',
				isboss = true,
                payment = 500,
                bankAuth = true,
            },
        },
	},
    ['cookies'] = {
        label = 'Cookies',
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Farmer',
                payment = 50
            },
            ['1'] = {
                name = 'Shopkeeper',
                payment = 75
            },
            ['2'] = {
                name = 'Manager',
                payment = 100
            },
            ['3'] = {
                name = 'Owner',
                payment = 150,
                isboss = true,
                bankAuth = true,
            },
        },
    },
    ['starbucks'] = {
        label = 'Starbucks',
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = 'Cashier',
                payment = 50
            },
            ['1'] = {
                name = 'Drink Maker',
                payment = 75
            },
            ['2'] = {
                name = 'Manager',
                payment = 100
            },
            ['3'] = {
                name = 'Owner',
                payment = 150,
                isboss = true,
                bankAuth = true,
            },
        },
    },
    ["limeys"] = {
		label = "Limey\'s Juice Shop",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 75 --edit depending on your economy
            },
			['1'] = {
                name = "Worker",
                payment = 100 --edit depending on your economy
            },
            ['3'] = {
                name = "manager",
                payment = 150 --edit depending on your economy
            },
			['4'] = {
                name = "Owner",
                isboss = true,
                payment = 200,
                bankAuth = true, --edit depending on your economy
            },
        },
	},
    ['bondsman'] = {
		label = 'Bail Bondsman',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Bond Agent',
                payment = 150
            },
			['1'] = {
                name = 'Bond Dealer',
                payment = 200
            },
            ['2'] = {
                name = "manager",
                payment = 350 --edit depending on your economy
            },
			['3'] = {
                name = "Owner",
                isboss = true,
                payment = 500,
                bankAuth = true, --edit depending on your economy
            },
        },
    }, --voncrastenburg
    ['voncrastenburg'] = {
		label = 'Von Crastenburg',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainee',
                payment = 150
            },
			['1'] = {
                name = 'Receptionist',
                payment = 200
            },
            ['2'] = {
                name = "Manager",
                payment = 350 --edit depending on your economy
            },
			['3'] = {
                name = "Owner",
                isboss = true,
                payment = 500,
                bankAuth = true, --edit depending on your economy
            },
        },
    },
    ['news'] = {
        label = 'Weazel News',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Stringer',
                payment = 100
            },
            ['1'] = {
                name = 'Owner',
                payment = 200,
            },
        },
    },
    ['tequila'] = {
        label = 'Tequila',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
            ['1'] = {
                name = 'Employee',
                payment = 75
            },
            ['2'] = {
                name = 'Manager',
                payment = 100
            },
            ['3'] = {
                name = 'Chief',
                isboss = true,
                payment = 150,
                bankAuth = true,
            },
        },
    },
    ["starbucks"] = {
        label = "Starbucks",
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = "Cashier",
                 payment = 50
            },
            ['1'] = {
                name = "Server",
                payment = 75
            },
            ['2'] = {
                name = "Chef",
                payment = 100
            },
            ['3'] = {
                name = "Manager",
                payment = 125,
                isboss = true,
                bankAuth = true,
            },
            ['4'] = {
                name = "CEO",
                isboss = true,
                payment = 150,
                bankAuth = true,
            },
        },       
    },
    ["potionmaster"] = {
        label = "Potion Master",
        defaultDuty = true,
        grades = {
            ['0'] = {
                name = "Employee",
                 payment = 0
            },
            ['1'] = {
                name = "Dumbledore",
                isboss = true,
                payment = 0,
                bankAuth = true,
            },
        },       
    },



}
   