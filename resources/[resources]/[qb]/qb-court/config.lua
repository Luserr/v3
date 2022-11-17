Config = {
	FrameworkExport = "qb-core", -- Set this too your core name, only change this if you have a custom version of QBCore. 
	DiscordWebhook = true, -- Set this too true if you want the cases to be posted in your discord channel, make sure to edit webhook in your server folder.
	CourtLocationName = "San Andres District Court", -- This is preset, Change name to suit your server.
	Blip = {Active = true, Coords = vector3(-550.1532, -196.0362, 38.2270), Label = "Court", Sprite = 176, Display = 4, Scale = 0.60, Color = 0}, -- Blip settings for court.
	BarLicensePrice = 8000, -- Set this to the cost you would like to charge for the bar license exam.
	NewIDCardCost = 5000, -- Set this to the cost you want players to pay if they require a new ID Card.
	JoinJuryPayment = 1000, -- Set this to the amount you would like to give when a player signs up to the jury.
	JuryCasePayout = 500, -- Set this to the amount you would like to pay to a jury member for attending the court case.
	NoShowPenaltyAmount = 3000, -- Set this too the max amount a judge can charge a player for not showing up at the court case.
	MaxAddFee = 1000000, -- Set this too the max amount the judge can set the settlement fee too.
	Currency = '$', -- Set this to the currency your server uses.
	CourtJob = 'judge', -- This is the default job that comes with QBCore, Change if needed.
	lawyerID = 'lawyerpass', -- Set this to the item players need in order to show there ID Card.
	Phone = {GKSPhone = false, QBPhone = true, QuasarPhone = false, HighPhone = false, RoadPhone = false, Custom = false}, -- Set to the phone you use to true, if you do not have one of these phones then set Custom to true and edit the function in webhooks.lua.
	Interactions = {qbTarget = true, qTarget = false, drawText = false},
	Context = "QB", -- Set this to to "QB", More added soon.
	Dialog = "QB", -- Set this to to "QB", More added soon.
	useID_UI = true, -- Set to true if you want too use the UI Lawyer ID Card or false to use Advanced Notification.
	CriminalRecordArchives = true -- Set this too true if you want to use the intergrated criminal record archives.
}

Config.Target = { -- QB-TARGET & QTARGET BOTH PRESETUP FOR GABZ CITY HALL.
	['qb-target'] = {
        ['bar'] = {
            active = true,
            ped = {model = "a_m_y_business_02"},
            coords = vector4(-542.55, -197.1524, 38.23, 87.9009),
            minusOne = true,
            freeze = true,
            invincible = true,
            blockevents = true

        },
        ['court'] = {
            active = true,
            ped = {model = "a_f_y_business_02"},
            coords = vector4(-552.43, -202.74, 38.24, 338.39),
            minusOne = true,
            freeze = true,
            invincible = true,
            blockevents = true
        },
        ['juryCourt'] = {
            active = true,
            boxzone = {
                name = "juryCourt",
                coords = vector3(-580.94, -216.71, 38.23),
                length = 6.2,
                width = 1.4,
                heading = 30,
                debugPoly = false,
                minZ = 38.03,
                maxZ = 38.63
            }
        },
        ['judge'] = {
            active = true,
            boxzone = {
                name = "judge",
                coords = vector3(-586.96, -205.97, 39.1166),
                length = 0.8,
                width = 0.8,
                heading = 30.0471,
                debugPoly = false,
                minZ = 38,
                maxZ = 39
            },
            job = {name = Config.CourtJob, grade = 0}
        },
        ['tableCourt'] = {
            active = true,
            boxzone = {
                name = "tableCourt",
                coords = vector3(-576.0, -209.9, 38.77),
                length = 2.45,
                width = 0.8,
                heading = 30,
                debugPoly = false,
                minZ = 38.47,
                maxZ = 38.92
            },
            job = {name = Config.CourtJob, grade = 0}
        }
    },
    ['qtarget'] = {
        ['bar'] = {
            active = true,
            ped = {model = 'a_m_y_business_02', sex = 'male'},
            coords = {x = -542.55, y = -197.1524, z = 38.23, h = 87.9009}
        },
        ['court'] = {
            active = true,
            ped = {model = 'a_f_y_business_02', sex = 'female'},
            coords = {x = -552.43, y = -202.74, z = 38.24, h = 338.39}
        },
        ['juryCourt'] = {
            active = true,
            boxzone = {
                name = "juryCourt",
                coords = vector3(-580.94, -216.71, 38.23),
                length = 6.2,
                width = 1.4,
                heading = 30,
                debugPoly = false,
                minZ = 38.03,
                maxZ = 38.63
            }
        },
        ['judge'] = {
            active = true,
            boxzone = {
                name = "judge",
                coords = vector3(-586.96, -205.97, 39.1166),
                length = 0.8,
                width = 0.8,
                heading = 30.0471,
                debugPoly = false,
                minZ = 38,
                maxZ = 39
            },
            job = {name = Config.CourtJob, grade = 0}
        },
        ['tableCourt'] = {
            active = true,
            boxzone = {
                name = "tableCourt",
                coords = vector3(-576.0, -209.9, 38.77),
                length = 2.45,
                width = 0.8,
                heading = 30,
                debugPoly = false,
                minZ = 38.47,
                maxZ = 38.92
            },
            job = {name = Config.CourtJob, grade = 0}
        }
    },
	['DrawText'] = { -- Preset for Gabz Townhall
	  ['points'] = {
		['bar'] = {
			enable = true,
		    text = '[E] National Bar Association',
			pos = {x = -543.64, y = -197.0, z = 38.23},
			length = 2.2, width = 4, heading = 255,
			job = {check = false},
			trigger = 'ap-court:target:getBarStatus', isServer = false
		},
		['court'] = {
			enable = true,
		    text = '[E] Public Court',
			pos = {x = -552.18, y = -201.89, z = 38.23},
			length = 2, width = 4, heading = 345,
			job = {check = false},
			trigger = 'ap-court:client:drawtext:court', isServer = false
		},
		['jury'] = {
			enable = true,
		    text = '[E] Jury Vote',
			pos = {x = -581.12, y = -217.03, z = 38.23},
			length = 8, width = 3.8, heading = 30,
			job = {check = false},
			trigger = 'ap-court:client:verdictMenu', isServer = false
		},
		['judge'] = {
			enable = true,
		    text = '[E] Judge Menu',
			pos = {x = -586.85, y = -206.33, z = 38.23},
			length = 4, width = 4, heading = 30,
			job = {check = true, name = Config.CourtJob, grade = 0},
			trigger = 'ap-court:client:drawtext:judge', isServer = false
		},
		['tablecourt'] = {
			enable = true,
		    text = '[E] Judge Table',
			pos = {x = -576.9, y = -210.38, z = 38.23},
			length = 2.8, width = 3, heading = 210,
			job = {check = true, name = Config.CourtJob, grade = 0},
			trigger = 'ap-court:client:proManagement', isServer = false
		}
	  }
	}
}

Config.ExamQuestions = {
	[1] = { Question = 'A young boy was walking around the street listening to music, his volume set to max. The boy continues down the road until coming across traffic lights, he then waits patiently for them to change colour. The lights then change from amber to red and the boy begins to cross the road. A car coming down the road strikes the boy causing severe injuries. Whos fault was it that the boy got hit?:', 
	    Answer = 'b', a = 'Driver', b = 'Boy', c = 'Both', d = 'Traffic Lights' 
    },
	[2] = { Question = 'Can a Judge close a case without seeing evidence?:', 
	    Answer = 'a', a = 'Yes', b = 'No', c = 'Maybe', d = 'Umm?' 
	},
	[3] = { Question = 'Can a Police Officer arrest a suspect without evidence?:', 
	    Answer = 'c', a = 'No', b = 'Yes', c = 'Only if the officer has probable cause', d = 'Only if Gold Command is present' 
	},
	[4] = { Question = 'Can you interview a client at a police station, while your client is in custody without your bar license ID?:', 
	    Answer = 'b', a = 'Yes', b = 'No', c = 'Its up to the officer', d = 'Only if you give your name' 
	},
	[5] = { Question = 'Can you subpoena evidence without a Judges approval?:', 
	    Answer = 'b', a = 'Yes', b = 'No', c = 'Only if you feel like its needed', d = 'Only if your mate tells you to' 
	},
	[6] = { Question = 'Can you practice law without a bar license?:', 
	    Answer = 'c', a = 'Only if you feel like its important', b = 'Yes, sure you can', c = 'Only if you feel like its needed', d = 'Only if your mate tells you to' 
	},
	[7] = { Question = 'Can you work with the defendant and the victim on a trial?:', 
	    Answer = 'b', a = 'Yeah let them fight like cats', b = 'Its in the defendants and victims best intrest, that you only work with one of them', c = 'no its the law', d = 'Only if your mum tells you too' 
	},
	[8] = { Question = 'What does Subpoena mean?:', 
	    Answer = 'a', a = 'To take evidence', b = 'To give evidence', c = 'To copy evidence', d = 'To bin evidence' 
	},
	[9] = { Question = 'Can a Solicitor disobey the law as they have a bar license?:', 
	    Answer = 'b', a = 'Yes 1000%', b = 'No', c = 'Only if they might be god', d = 'Yeah, if you want your license taken away.' 
	},
}

Config.ExamOptions = {
	title = 'Bar Exam',
	description = 'Complete this test to get your Bar License, you need this in order to practise law.',
	image = 'SIM',
	minQuestions = 8,
}

Config.ExamJudgeOptions = {
	title = 'Retake Bar Exam',
	description = 'This is your last chance to retake the bar exam, fail do so will restrict you from retaking the exam for 28 days. If you compleate you background checks will be undertaken.',
	image = 'SIM',
	minQuestions = 5
}

Config.PhoneSettings = {
	['QBPHONE'] = { -- USE THIS FOR GKSPHONE / QUASAR-PHONE / QBPHONE / HIGH-PHONE
		['jury_summons'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the court",
			['sender'] = "Court",
			['subject'] = "Jury Service",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You have been summoned to the court for jury service. <br /><br /> Case Name: %s <br />Time & Date %s <br /><br /> Please make sure you attend the court 10 minutes prior to the case start time.<br /><br /> Thank you,<br />"..Config.CourtLocationName..".",
			['button'] = '{"buttonEvent":"ap-court:client:setCourtWaypoint","buttonData":"test","buttonname":"Directions To Court"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "jury@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		}, 
		['jury_summons_remove'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the court",
			['sender'] = "Court",
			['subject'] = "Jury Service",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s, <br /><br /> You have been removed as jury from %s. <br /><br /> Time & Date %s <br /><br /> You are no longer required to attend to this case.<br /><br /> Thank you,<br />"..Config.CourtLocationName..".",
			['button'] = '{"buttonEvent":"ap-court:client:setCourtWaypoint","buttonData":"test","buttonname":"Directions To Court"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "jury@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		}, 
		['court_summons'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the court",
			['sender'] = "Court",
			['subject'] = "Subpoena",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "This message serves as official written notice, %s is to appear in court on %s in the case of %s.<br /><br /> If for any reason you can not make the scheduled court date, contact a court administrator a soon as possible.<br /><br /> Failure to appear could result in legal actions taken against you.<br /><br />Thank you for your cooperation,<br />"..Config.CourtLocationName..".",
			['button'] = '{"buttonEvent":"ap-court:client:setCourtWaypoint","buttonData":"test","buttonname":"Directions To Court"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "court@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['bar_approve'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the National Bar Association",
			['sender'] = "National Bar Association",
			['subject'] = "Application",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s,<br /><br /> We are delighted to inform you that your background checks have passed.<br /><br /> Your bar application is now completed, please visit the court to collect your bar license card.<br /><br /> Kind Regards, <br />National Bar Association",
			['button'] = '{"buttonEvent":"ap-court:client:setCourtWaypoint","buttonData":"test","buttonname":"Directions To Court"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "bar@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['bar_deny'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the National Bar Association",
			['sender'] = "National Bar Association",
			['subject'] = "Application",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s,<br /><br /> We regret to inform you that your background checks have failed.<br /><br /> The Reason for this is %s.<br /><br /> Kind Regards, <br />National Bar Association",
			['button'] = '{"buttonEvent":"ap-court:client:setCourtWaypoint","buttonData":"test","buttonname":"Directions To Court"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "bar@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['bar_remove'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the National Bar Association",
			['sender'] = "National Bar Association",
			['subject'] = "Application",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s,<br /><br /> We regret to inform you that your bar membership has been removed.<br /><br /> The Reason for this is %s.<br /><br /> Kind Regards, <br />National Bar Association",
			['button'] = '{"buttonEvent":"ap-court:client:setCourtWaypoint","buttonData":"test","buttonname":"Directions To Court"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "bar@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['bar_exam_retake'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the National Bar Association",
			['sender'] = "National Bar Association",
			['subject'] = "Application",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "Dear %s,<br /><br /> We are delighted to inform you that you can now retake the exam.<br /><br /> Please visit the court to retake the exam.<br /><br /> Kind Regards, <br />National Bar Association",
			['button'] = '{"buttonEvent":"ap-court:client:setCourtWaypoint","buttonData":"test","buttonname":"Directions To Court"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "bar@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		},
		['appointment_update'] = {
			['title'] = "Mail",
			['msg'] = " Email received from the court",
			['sender'] = "Court",
			['subject'] = "Appointment Request",
			['image'] = "/html/static/img/icons/mail.png",
			['mail'] = "We have received your request and scheduled you as followed.<br /><br /> %s at the "..Config.CourtLocationName..".<br /><br /> Please arrive at least 5 minutes early to your appointment.<br /><br /> Thank you,<br />"..Config.CourtLocationName..".",
			['button'] = '{"buttonEvent":"ap-court:client:setCourtWaypoint","buttonData":"test","buttonname":"Directions To Court"}',
			--HIGH PHONE ONLY BELOW 
			['email'] = "appointment@gov.com",
			['photo'] = "",
			['photoattachment'] = ""
		}
	}
}

usingCriminalRecord = function()
  return Config.CriminalRecordArchives
end