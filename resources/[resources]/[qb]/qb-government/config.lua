Config = {
	FrameworkExport = "qb-core", -- Set this too your core name, only change this if you have a custom version of QBCore. 
	DiscordWebhook = {CandidateWinner = true, PollsOpen = true, CandidateStarted = true, CompanyRegisterd = true, CompanyGrantGiven = true, AppointmentRequest = true, AppointmentApprove = true, MayorTaxChange = true}, -- Set the webhooks you want to use to true.
	Currency = '$', -- Set this to the currency your server uses.
	UsingAPCourt = false, -- Set this to true if your using AP-COURT.
	NotifyWinnerByPhone = true, -- Set true to email player of winning the election
	displayVotingChatNotify = false, -- Set too true to show voting notiforcations in chat false for notify
	AddJobsFromConfig = true, -- Set this to true if you want this script to add the jobs from Config.AddSharedJobs below to your shared jobs in qb-core. 
	VotingSettings = {
	  Staff = {
		enable = true, -- Set this too true if you want the server staff to control voting.
		Command = "votingstaff", -- Set this too what you want the command to be.
		rank = "admin" -- Set this to the staff rank able to control the voting.
	  }, 
	  Job = false -- Set this too true for the CityHall(Government Staff) to control the voting.
	},
	JobManagementScriptName = "qb-management", -- If your management script has compatibility with qb-management then change to the resource name.
	Phone = {GKSPhone = false, QBPhone = true, QuasarPhone = false, HighPhone = false, Custom = false} -- Set to the phone you use to true, if you do not have one of these phones then set Custom to true and edit the function in webhooks.lua.
}

Config.AddSharedJobs = {
	['cityhall'] = {
        label = 'CityHall',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Government Staff',
				isboss = false,
                payment = 10
            },
			['1'] = {
                name = 'Mayor',
				isboss = true,
                payment = 100
            },
		},
    },
} 

Config.MayorOptions = {
	funds = {
		grants = {enable = true, min = 2000, max = 200000},
		withdrawal = {enable = false, min = 100, max = 200000},
		deposit = {enable = false, min = 1000, max = 100000}
	}
}

Config.GovernmentJobs = {'judge', 'police', 'ambulance'} -- Set the jobs that are not ownable here.

Config.Tax = {
	Players = true, -- Set this to true if you want players to pay tax on there earnings.
	PlayersTax = 0.20, -- Set this to the percent that is not controlled by the mayor.
	MayorControl = {
		enable = true,
		TaxTypes = {
	        ["Income"] = {enable = true, mayorControl = true, label = 'Income', percentageCap = 0.80, percentage = 0.15, AddCityHallFunds = true},		
	        ["Housing"] = {enable = false, mayorControl = false, label = 'Housing', percentageCap = 0.15, percentage = 0.15, AddCityHallFunds = true},
			["Vehicle"] = {enable = false, mayorControl = false, label = 'Vehicle', percentageCap = 0.15, percentage = 0.15, AddCityHallFunds = true},
			["Item"] = {enable = true, mayorControl = true, label = 'Item', percentageCap = 0.80, percentage = 0.15, AddCityHallFunds = true},
		}
	}
}

Config.BusinessTax = {
	enable = true, -- Set this too true to enable the business tax.
	securityVerify = false, -- Set this to true if you want the player to recive a pin to verify registering a business with the mayor.
	tax = {
      mayorControl = {
		changeAmount = true, -- Set this too true if you want the mayor to ajust the business tax per job.
        amounts = {
			min = 2000, -- Min the mayor can ajust business tax.
			max = 20000 -- Max the mayor can ajust business tax.
		}
	  },
	  basicAmount = 2000, -- Basic amount that the business will pay in tax.
	  AddCityHallFunds = true, -- Set to true if you want the tax that busniess pay to go into the cityhall fund.
	  timetaken = 20 -- Time in mintues that the business tax will be taken.
	}
}

Config.Voting = {
	[1] = {
		enable = true,
		poll = "Mayor Election",
		givenJob = {name = "mayor", label = "Mayor", grade = 0},
		applicationJobCheck = {enable = false, job = "government", notify = "You need to be in the government in order to be considered as a candidate!"}
	},
	[2] = {
		enable = true,
		poll = "Police Chief Election",
		givenJob = {name = "police", label = "Police Chief", grade = 0},
		applicationJobCheck = {enable = false, job = "police", notify = "You need to be in the police in order to be considered as a candidate!"}
	},
	[3] = {
		enable = true,
		poll = "EMS Chief Election",
		givenJob = {name = "doctor", label = "Chief Of EMS", grade = 0},
		applicationJobCheck = {enable = false, job = "doctor", notify = "You need to be in the medical department in order to be considered as a candidate!"}
	},
}

Config.Target = { -- QB-TARGET & QTARGET BOTH PRESETUP FOR GABZ CITY HALL.
	['qb-target'] = {
        active = true,
		['votingSystem'] = {
			['votingStaff'] = {
				['active'] = true,
				['ped'] = {
					active = true,
			        ped = {model = "a_m_m_prolhost_01"},
                    coords = vector4(-539.71, -177.15, 38.23, 225.43),
                    minusOne = true,
                    freeze = true,
                    invincible = true,
                    blockevents = true,
				    job = {name = "cityhall", grade = 0}
				}
			},
			['votingPoints'] = {
				['active'] = true,
                ['points'] = {
					{active = true, name = "booth_one", coords = vector3(-534.12, -174.51, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
					{active = true, name = "booth_two", coords = vector3(-533.36, -175.84, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
			        {active = true, name = "booth_three", coords = vector3(-532.59, -177.15, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
			        {active = true, name = "booth_four", coords = vector3(-541.82, -182.48, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
			        {active = true, name = "booth_five", coords = vector3(-542.59, -181.17, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
			        {active = true, name = "booth_six", coords = vector3(-543.36, -179.84, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
				}
			}
		},
		['majorOffice'] = {
			['active'] = true,
			['job'] = {name = "cityhall", grade = 1},
			['points'] = {
				{active = true, name = "office_one", coords = vector3(-528.64, -188.97, 43.37), length = 3, width = 1.3, heading = 30, minZ = 43.17, maxZ = 43.67},
			}
		},
		['appointmentsPed'] = {
			['active'] = true,
			['ped'] = {
				active = true,
				ped = {model = "a_m_m_prolhost_01"},
				coords = vector4(-549.9996, -190.8860, 38.2270, 183.8847),
				minusOne = true,
				freeze = true,
				invincible = true,
				blockevents = true
			}
		}
    },
    ['qtarget'] = {
        active = false,
		['votingSystem'] = {
			['votingStaff'] = {
				['active'] = true,
				['ped'] = {
					active = true,
                    ped = {model = 'a_m_m_prolhost_01', sex = 'male'},
                    coords = {x = -539.71, y = -177.15, z = 38.23, h = 225.43},
				    job = {name = "cityhall", grade = 0}
				}
			},
			['votingPoints'] = {
				['active'] = true,
                ['points'] = {
					{active = true, name = "booth_one", coords = vector3(-534.12, -174.51, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
					{active = true, name = "booth_two", coords = vector3(-533.36, -175.84, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
			        {active = true, name = "booth_three", coords = vector3(-532.59, -177.15, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
			        {active = true, name = "booth_four", coords = vector3(-541.82, -182.48, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
			        {active = true, name = "booth_five", coords = vector3(-542.59, -181.17, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
			        {active = true, name = "booth_six", coords = vector3(-543.36, -179.84, 38.23), length = 1.45, width = 0.6, heading = 30, minZ = 38.23, maxZ = 38.48},
				}
			}
		},
		['majorOffice'] = {
			['active'] = true,
			['job'] = {name = "cityhall", grade = 1},
			['points'] = {
				{active = true, name = "office_one", coords = vector3(-528.64, -188.97, 43.37), length = 3, width = 1.3, heading = 30, minZ = 43.17, maxZ = 43.67, job = {name = "mayor", grade = 0}},
			}
		},
		['appointmentsPed'] = {
			['active'] = true,
			['ped'] = {
				active = true,
                ped = {model = 'a_m_m_prolhost_01', sex = 'male'},
                coords = {x = -549.9996, y = -190.8860, z = 38.2270, h = 183.8847}
			}
		}
    },
}

Config.PhoneSettings = {
	['MAIL'] = { -- USE THIS FOR GKSPHONE / QUASAR-PHONE / QBPHONE / HIGH-PHONE / ROADPHONE
		['approve_candidate'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the government",
			['sender'] = "Government",
			['subject'] = "Candidate Update",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are reciveing this email as you have been accepted as a candidate. <br /><br /> You can now start advertising your candidacy! <br /><br /> Kind Regards,<br /><br /> City Government<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "voting@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		}, 
		['denied_candidate'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the government",
			['sender'] = "Government",
			['subject'] = "Candidate Update",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are reciveing this email as your application as a candidate has been denied. <br /><br /> Here is the reason why: %s <br /><br /> Kind Regards,<br /><br /> City Government<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "voting@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['candidate_winner'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the government",
			['sender'] = "Government",
			['subject'] = "Candidate Update",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are reciveing this email as you have recived the most votes and are now the new %s. <br /><br /> Amount of votes: %s , Please visit the voting room to get your job.<br /><br /> Kind Regards,<br /><br /> City Government<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "voting@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		}, 
		['candidate_warn'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the government",
			['sender'] = "Government",
			['subject'] = "Candidate Warning",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are reciveing this email as you have been warned for the reason %s. <br /><br /> Regards,<br /><br /> City Government<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "voting@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},   
		['verify_player'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the mayor's office",
			['sender'] = "Mayor's Office",
			['subject'] = "Verify Pin",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are reciveing this email as a security check, please provide this pin to the mayor's office. PIN: %s <br /><br /> Regards,<br /><br /> Mayor's Office<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "verify@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},  
		['registerd_company'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the mayor's office",
			['sender'] = "Mayor's Office",
			['subject'] = "Registerd Company",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are reciveing this email as your business %s has been registerd on the city database, any questions make an appointment with the mayor's office. <br /><br /> Regards,<br /><br /> Mayor's Office<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "business@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		}, 
		['transfer_company'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the mayor's office",
			['sender'] = "Mayor's Office",
			['subject'] = "Company Transfer",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are reciveing this email as your business %s has been transferd to %s, any issues please make an appointment with the mayor's office. <br /><br /> Regards,<br /><br /> Mayor's Office<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "business@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['company_tax_change'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the mayor's office",
			['sender'] = "Mayor's Office",
			['subject'] = "Company Tax Change",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are reciveing this email as your business tax has been changed from "..Config.Currency.."%s to "..Config.Currency.."%s, any issues please make an appointment with the mayor's office. <br /><br /> Regards,<br /><br /> Mayor's Office<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "business@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['message_company_owner'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the mayor's office",
			['sender'] = "Mayor's Office",
			['subject'] = "Business",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> %s <br /><br /> Regards,<br /><br /> Mayor's Office<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "business@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['arrange_appointment'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the mayor's office",
			['sender'] = "Mayor's Office",
			['subject'] = "Appointment",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are receiving this email as you appointment has been scheduled for %s at the cityhall. <br /><br /> please make sure you turn up for your appointment 5 minutes before the scheduled time.<br /><br /> Regards,<br /><br /> Mayor's Office<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "appointments@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['company_grant'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the mayor's office",
			['sender'] = "Mayor's Office",
			['subject'] = "Business Grant",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You are receiving this email as your business has been given a grant of "..Config.Currency.."%s from the City Hall,  <br /><br /> Reason for grant: %s.<br /><br /> Regards,<br /><br /> Mayor's Office<br />",
			['button'] = '{"buttonEvent":"ap-voting:client:setTownhallWaypoint","buttonData":"test","buttonname":"Directions To Townhall"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "grant@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
	}
}