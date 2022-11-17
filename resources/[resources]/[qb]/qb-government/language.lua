--------------------------------------
----- Created by Adzeepulse#7832 -----
--------------------------------------

LangClient = {
    notifications = {
        ['vote_submit'] = "You have registered your vote!",
        ['vote_error'] = "Please Choose A Candidate!",
        ['apply_candidate_error'] = "You need to fill in all questions!",
        ['denied_candidate_error'] = "You need to fill in the reason!",
        ['start_voting_error'] = "You can only start the candidate applications once the last election winner has claimed there job!",
        ['message_owner_error'] = "You need to fill in the reason!",
        ['change_city_tax_error_one'] = "You need to input an amount lower then 1.0, e.g 0.25!",
        ['change_city_tax_error_two'] = "You can not go higher then the capped amount of %s%s",
        ['open_voting_ui_error_one'] = "You have already submitted a vote.",
        ['open_voting_ui_error_two'] = "Voting booths are not ready for using, please come back when the voting has started!",
        ['removeCandidate_error'] = "You need to fill in the reason!",
    },
    menus = {
        ['applyCandidate_ap_court_header'] = "Candidate App: [<span style='color:Red;'>NOT AUTHORISED</span>]",
        ['applyCandidate_ap_court_txt'] = "You are not able to apply to become a candidate, this is because you have a criminal record on file. You can apply for this position if your record gets wiped.",
        
        ['applyCandidate_state_six_header'] = "Candidate Status: [<span style='color:Red;'>REMOVED</span>]",
        ['applyCandidate_state_six_txt'] = "You have been removed due to: %s, you will not be able to reapply until the next election.",

        ['applyCandidate_state_five_header_one'] = "Voting Status: [<span style='color:Green;'>WINNER</span>]",
        ['applyCandidate_state_five_header_two'] = "Start %s Job",
        ['applyCandidate_state_five_txt_one'] = "Congratulation, you are the winner and had the max amount of votes.",
        ['applyCandidate_state_five_txt_two'] = "Click here to be assigned the %s job.",
        
        ['applyCandidate_state_four_header'] = "Voting Status: [<span style='color:Green;'>STARTED</span>]",
        ['applyCandidate_state_four_txt'] = "Amount of votes: <span style='color:Green;'>%s</span>",

        ['applyCandidate_state_three_header'] = "Candidate Status: [<span style='color:Green;'>APPROVED</span>]",
        ['applyCandidate_state_three_txt'] = "Your application has been approved, your candidacy has now started. You will now be able to advertise yourself to the public for when the poll starts.",

        ['applyCandidate_state_two_header'] = "Candidate Status: [<span style='color:Red;'>DENIED</span>]",
        ['applyCandidate_state_two_txt'] = "Thank you for your intrest but your application has been denied due to: %s, you will not be able to reapply until the next election.",

        ['applyCandidate_state_one_header'] = "Candidate Status: [<span style='color:Green;'>APPLIED</span>]",
        ['applyCandidate_state_one_txt'] = "Thank you for applying to be a candidate your application is pending checks from the government staff.",
        
        ['applyCandidate_state_zero_header_one'] = "Candidate Applications: [<span style='color:Green;'>OPEN</span>]",
        ['applyCandidate_state_zero_header_two'] = "Candidate Applications: [<span style='color:Red;'>CLOSED</span>]",
        ['applyCandidate_state_zero_txt_one'] = "If you feel like your a suitable candidate, please click to apply.",
        ['applyCandidate_state_zero_txt_two'] = "Candidate applications are currently closed, please keep an eye out for announcments.",

        ['viewRequestedCandidates_header_one'] = "Candidate Applications",
        ['viewRequestedCandidates_header_two'] = "Candidate Name: %s",
        ['viewRequestedCandidates_txt_one'] = " ",
        ['viewRequestedCandidates_txt_two'] = "Click to see more information!",

        ['getCandidateInfo_header_one'] = "Candidate Name",
        ['getCandidateInfo_header_two'] = "Short Description?",
        ['getCandidateInfo_header_three'] = "Why did you apply?",
        ['getCandidateInfo_header_four'] = "What would you bring to the city?",
        ['getCandidateInfo_header_five'] = "Accept Application",
        ['getCandidateInfo_header_six'] = "Deny Application",
        ['getCandidateInfo_txt_one'] = "%s",
        ['getCandidateInfo_txt_two'] = "%s",
        ['getCandidateInfo_txt_three'] = "%s",
        ['getCandidateInfo_txt_four'] = "%s",
        ['getCandidateInfo_txt_five'] = "Click here to add the candidate to the candidacy list.",
        ['getCandidateInfo_txt_six'] = "Click here to remove %s application from this voting poll.",

        ['votingOptions_header_one'] = "Finish Voting Polls",
        ['votingOptions_header_two'] = "Start Voting Polls",
        ['votingOptions_header_three'] = "Start Candidate Process",
        ['votingOptions_txt_one'] = "Click here to stop the public from useing the voting booths and for the voting to come to an end.",
        ['votingOptions_txt_two'] = "Click here to enable the public to use the voting booths and for the voting to start.",
        ['votingOptions_txt_three'] = "Click here to select the type of election you want to start.",

        ['startVoting_header'] = "Poll: %s",
        ['startVoting_txt'] = "Click here to start the voting.",

        ['viewCandidates_header_one'] = "Current Candidates",
        ['viewCandidates_header_two'] = "Name: %s",
        ['viewCandidates_txt'] = "Click here to manage this candidate.",

        ['manageCandidate_header_one'] = "Candidates Name:",
        ['manageCandidate_header_two'] = "Short Description?",
        ['manageCandidate_header_three'] = "Why do you want to be a candidate?",
        ['manageCandidate_header_four'] = "What would you bring to the city?",
        ['manageCandidate_header_five'] = "Current Votes:",
        ['manageCandidate_header_six'] = "Warn Candidate",
        ['manageCandidate_header_seven'] = "Remove Candidate",
        ['manageCandidate_header_eight'] = "Back",
        ['manageCandidate_txt_one'] = "%s",
        ['manageCandidate_txt_two'] = "%s",
        ['manageCandidate_txt_three'] = "%s",
        ['manageCandidate_txt_four'] = "%s",
        ['manageCandidate_txt_five'] = "%s",
        ['manageCandidate_txt_six'] = "Click here to warn the candidate via mail.",
        ['manageCandidate_txt_seven'] = "Click here to remove candidate from the poll.",
        ['manageCandidate_txt_eight'] = "Click here to go back a menu.",

        ['majorOffice_header_one'] = "Tax Settings",
        ['majorOffice_header_two'] = "Business Tax Accounts",
        ['majorOffice_header_three'] = "Add/Manage Business",
        ['majorOffice_header_four'] = "City Hall Funds",
        ['majorOffice_header_five'] = "View/Manage Appointments",
        ['majorOffice_txt_one'] = "Click here to control the city tax.",
        ['majorOffice_txt_two'] = "Click here too view business tax accounts.",
        ['majorOffice_txt_three'] = "Click here to add/manage a business.",
        ['majorOffice_txt_four'] = "Click here to manage funds.",
        ['majorOffice_txt_five'] = "Click here to view/manage current appointments.",

        ['taxAccounts_header_one'] = "View All Business Accounts",
        ['taxAccounts_header_two'] = "View Unpaid Tax Accounts",
        ['taxAccounts_header_three'] = "Back",
        ['taxAccounts_txt_one'] = "Click here to manage all Business tax accounts.",
        ['taxAccounts_txt_two'] = "Click here to manage unpaid tax accounts.",
        ['taxAccounts_txt_three'] = "Click here to go back to main menu.",

        ['viewallbusinesstax_header_one'] = "Business Accounts",
        ['viewallbusinesstax_header_two'] = "Business Name: %s",
        ['viewallbusinesstax_header_three'] = "Back",
        ['viewallbusinesstax_txt_one'] = "Click here to view this business.",
        ['viewallbusinesstax_txt_two'] = "Click here to go back one menu.",

        ['viewalltaxaccountsnow_state_one'] = "Company Not Registerd",
        ['viewalltaxaccountsnow_state_two'] = "%s",
        ['viewalltaxaccountsnow_header_one'] = "Business Name:",
        ['viewalltaxaccountsnow_header_two'] = "Total Tax Paid",
        ['viewalltaxaccountsnow_header_three'] = "Total Unpaid Tax",
        ['viewalltaxaccountsnow_header_four'] = "Business CEO",
        ['viewalltaxaccountsnow_header_five'] = "Back",
        ['viewalltaxaccountsnow_txt_one'] = "%s",
        ['viewalltaxaccountsnow_txt_two'] = "Amount: $<span style='color:Green;'>%s</span>",
        ['viewalltaxaccountsnow_txt_three'] = "Amount: $<span style='color:Red;'>%s</span>",
        ['viewalltaxaccountsnow_txt_four'] = "Name: %s",
        ['viewalltaxaccountsnow_txt_five'] = "Click to go back one menu.",

        ['viewunpaidtaxaccounts_header_one'] = "Unpaid Tax Accounts",
        ['viewunpaidtaxaccounts_header_two'] = "Business Name: %s",
        ['viewunpaidtaxaccounts_header_three'] = "Back",
        ['viewunpaidtaxaccounts_txt_one'] = "Click here to manage this unpaid tax account.",
        ['viewunpaidtaxaccounts_txt_two'] = "Click here to go back one menu.",

        ['fundsmenu_header_one'] = "Current Funds Amount:",
        ['fundsmenu_header_two'] = "Withdrawal",
        ['fundsmenu_header_three'] = "Deposit",
        ['fundsmenu_header_four'] = "Back",
        ['fundsmenu_txt_one'] = "Amount: %s%s",
        ['fundsmenu_txt_two'] = "Click here to withdraw funds.",
        ['fundsmenu_txt_three'] = "Click here to deposit funds.",
        ['fundsmenu_txt_four'] = "Click here to go back one menu.",

        ['manageUnpaidTaxAccounts_state_one'] = "%s",
        ['manageUnpaidTaxAccounts_state_two'] = "Company Not Registerd",
        ['manageUnpaidTaxAccounts_header_one'] = "Business Name:",
        ['manageUnpaidTaxAccounts_header_two'] = "Total Tax Paid",
        ['manageUnpaidTaxAccounts_header_three'] = "Total Unpaid Tax",
        ['manageUnpaidTaxAccounts_header_four'] = "Business CEO",
        ['manageUnpaidTaxAccounts_header_five'] = "Reissue Unpaid Tax Payment",
        ['manageUnpaidTaxAccounts_header_six'] = "Issue Tax Relief",
        ['manageUnpaidTaxAccounts_header_seven'] = "Message Business Owner",
        ['manageUnpaidTaxAccounts_header_eight'] = "Back",
        ['manageUnpaidTaxAccounts_txt_one'] = "%s",
        ['manageUnpaidTaxAccounts_txt_two'] = "Amount: $<span style='color:Green;'>%s</span>",
        ['manageUnpaidTaxAccounts_txt_three'] = "Amount: $<span style='color:Red;'>%s</span>",
        ['manageUnpaidTaxAccounts_txt_four'] = "Name: %s",
        ['manageUnpaidTaxAccounts_txt_five'] = "Click here to take an instant payment of unpaid tax, if the company does not have the funds you should seek a county court judgement.",
        ['manageUnpaidTaxAccounts_txt_six'] = "Click here to clear the companys outstanding tax amount.",
        ['manageUnpaidTaxAccounts_txt_seven'] = "Click here to send a message to the company owner.",
        ['manageUnpaidTaxAccounts_txt_eight'] = "Click to go back one menu.",

        ['taxSettings_header_one'] = "Tax Types",
        ['taxSettings_header_two'] = "%s Tax",
        ['taxSettings_header_three'] = "Back",
        ['taxSettings_txt_one'] = "Click here to manage this tax type.",
        ['taxSettings_txt_two'] = "Click here to go back a menu.",

        ['taxcontrol_control_percent_one'] = "Current: %s%s",
        ['taxcontrol_control_percent_two'] = "Current: %s%s",
        ['taxcontrol_header_one'] = "Tax Name:",
        ['taxcontrol_header_two'] = "Current Tax %",
        ['taxcontrol_header_three'] = "Change Tax Percent",
        ['taxcontrol_header_four'] = "Back",
        ['taxcontrol_txt_one'] = "%s",
        ['taxcontrol_txt_two'] = "%s",
        ['taxcontrol_txt_three'] = "Click here to change this tax percent for the city.",
        ['taxcontrol_txt_four'] = "Click here to go back a menu.",

        ['registerBusiness_header_one'] = "Add/Manage Business",
        ['registerBusiness_header_two'] = "Name: %s",
        ['registerBusiness_header_three'] = "Back",
        ['registerBusiness_txt_one'] = "Company Name: %s",
        ['registerBusiness_txt_two'] = "Click here to go back a menu.",

        ['registerplayercompany_header_one'] = "Company Name:",
        ['registerplayercompany_header_two'] = "Transfer Ownership",
        ['registerplayercompany_header_three'] = "Business Grant",
        ['registerplayercompany_header_four'] = "Change Tax Amount",
        ['registerplayercompany_header_five'] = "Register Company",
        ['registerplayercompany_header_six'] = "Back",
        ['registerplayercompany_txt_one'] = "%s",
        ['registerplayercompany_txt_two'] = "Click here to transfer ownership of %s to %s.",
        ['registerplayercompany_txt_three'] = "Click here to issue a grant.",
        ['registerplayercompany_txt_four'] = "Click here to change the amount of tax this company pays.",
        ['registerplayercompany_txt_five'] = "Click here to register %s to the city database.",
        ['registerplayercompany_txt_six'] = "Click here to go back to the register menu.",

        ['appointments_state_two_header_one'] = "Appointment Reason:",
        ['appointments_state_two_header_two'] = "Date & Time:",
        ['appointments_state_two_header_three'] = "Cancel Appointment",
        ['appointments_state_two_txt_one'] = "%s",
        ['appointments_state_two_txt_two'] = "%s",
        ['appointments_state_two_txt_three'] = "Click here to cancel the appointment.",

        ['appointments_state_one_header_one'] = "Appointment Status: [<span style='color:MediumSeaGreen;'>PENDING</span>]",
        ['appointments_state_one_header_two'] = "Cancel Appointment",
        ['appointments_state_one_txt_one'] = "Your appointment is pending the waiting list, once an appointment has been confirmed your status will change.",
        ['appointments_state_one_txt_two'] = "Click here to cancel the appointment.",

        ['appointments_state_zero_header'] = "Arrange Appointment",
        ['appointments_state_zero_txt'] = "Click here to arrange an appointment with the mayor's office.",

        ['appointmentsManage_header_one'] = "Requested Appointments",
        ['appointmentsManage_header_two'] = "Scheduled Appointments",
        ['appointmentsManage_header_three'] = "Back",
        ['appointmentsManage_txt_one'] = "Click here to view requested appointments.",
        ['appointmentsManage_txt_two'] = "Click here to view scheduled appointments.",
        ['appointmentsManage_txt_three'] = "Click here to go back to the main menu.",

        ['scheduledAppointments_header_one'] = "Scheduled Appointments",
        ['scheduledAppointments_header_two'] = "Name: %s",
        ['scheduledAppointments_header_three'] = "Back",
        ['scheduledAppointments_txt_one'] = " ",
        ['scheduledAppointments_txt_two'] = "Click here to manage this appointment.",
        ['scheduledAppointments_txt_three'] = "Click here to go back a menu.",

        ['requestedAppointments_header_one'] = "Requested Appointments",
        ['requestedAppointments_header_two'] = "Name: %s",
        ['requestedAppointments_header_three'] = "Back",
        ['requestedAppointments_txt_one'] = " ",
        ['requestedAppointments_txt_two'] = "Click here to manage this appointment request.",
        ['requestedAppointments_txt_three'] = "Click here to go back a menu.",

        ['manageAppointment_setup_header_one'] = "Name: %s",
        ['manageAppointment_setup_header_two'] = "Reason:",
        ['manageAppointment_setup_header_three'] = "Issue Appointment",
        ['manageAppointment_setup_header_four'] = "Cancel Appointment",
        ['manageAppointment_setup_header_five'] = "Back",
        ['manageAppointment_setup_txt_one'] = "Issue appointment to set a time and date for this appointment.",
        ['manageAppointment_setup_txt_two'] = "%s",
        ['manageAppointment_setup_txt_three'] = "Click here issue a time and date.",
        ['manageAppointment_setup_txt_four'] = "Click here to cancel this appointment request.",
        ['manageAppointment_setup_txt_five'] = "Click here to go back to the types of appointments.",

        ['manageAppointment_manage_header_one'] = "Name: %s",
        ['manageAppointment_manage_header_two'] = "Reason:",
        ['manageAppointment_manage_header_three'] = "Finish Appointment",
        ['manageAppointment_manage_header_four'] = "Cancel Appointment",
        ['manageAppointment_manage_header_five'] = "Back",
        ['manageAppointment_manage_txt_one'] = "Date & Time: %s",
        ['manageAppointment_manage_txt_two'] = "%s",
        ['manageAppointment_manage_txt_three'] = "Click here to finnish the appointment.",
        ['manageAppointment_manage_txt_four'] = "Click here to cancel this scheduled appointment.",
        ['manageAppointment_manage_txt_five'] = "Click here to go back to the types of appointments.",

        ['grants_header_one'] = "Issue Grant",
        ['grants_header_two'] = "Grant History",
        ['grants_header_three'] = "Back",
        ['grants_txt_one'] = "Click here to issue a grant.",
        ['grants_txt_two'] = "Click here to view the history of grants this business has had.",
        ['grants_txt_three'] = "Click here to go back to the business menu.",

        ['grantHistory_header_one'] = "%s Grant History",
        ['grantHistory_header_two'] = "Date: %s",
        ['grantHistory_header_three'] = "Back",
        ['grantHistory_txt_one'] = "Here you will be able to view all grants that this business has recived from when the company was registard.",
        ['grantHistory_txt_two'] = "Amount: %s%s | Reason Of Grant: %s",
        ['grantHistory_txt_three'] = "Click here to go back a menu.",

        ['staffVotingMenu_header_one'] = "View Candidate Applications",
        ['staffVotingMenu_header_two'] = "View Current Candidates",
        ['staffVotingMenu_header_three'] = "Voting Options",
        ['staffVotingMenu_txt_one'] = "Click here to view candidate applications.",
        ['staffVotingMenu_txt_two'] = "Click here to view current candidates.",
        ['staffVotingMenu_txt_three'] = "Click here to control the voting.",
    },
    dialog = {
        ['applyDialog_header'] = "Candidate Application",
        ['applyDialog_submit'] = "Submit",
        ['applyDialog_text_one'] = "Short Description?",
        ['applyDialog_text_two'] = "Why do you want to be a candidate?",
        ['applyDialog_text_three'] = "What would you bring to the city?",

        ['candidateStatus_header'] = "Candidate Denied Application",
        ['candidateStatus_submit'] = "Submit",
        ['candidateStatus_text'] = "Reason for denied application",

        ['withdrawfunds_header'] = "Current Funds: %s%s",
        ['withdrawfunds_submit'] = "Withdraw Money",
        ['withdrawfunds_text'] = "Amount",

        ['depositfunds_header'] = "Current Funds: %s%s",
        ['depositfunds_submit'] = "Deposit Money",
        ['depositfunds_text'] = "Amount",

        ['messageOwner_header'] = "Message Owner",
        ['messageOwner_submit'] = "Send Mail",
        ['messageOwner_text'] = "Reason",

        ['removeCandidate_header'] = "Remove Candidate",
        ['removeCandidate_submit'] = "Issue Removal",
        ['removeCandidate_text'] = "Reason",

        ['changeTaxCity_header'] = "%s Tax",
        ['changeTaxCity_submit'] = "Issue Change",
        ['changeTaxCity_text'] = "Current: %s%s",

        ['warnCandidate_header'] = "Warn %s",
        ['warnCandidate_submit'] = "Issue Warning",
        ['warnCandidate_text'] = "Warning Reason",

        ['securitychecks_header'] = "Security Checks",
        ['securitychecks_submit'] = "Verify Pin",
        ['securitychecks_text'] = "pin",

        ['changeplayercompanytax_header'] = "Change Tax Amount",
        ['changeplayercompanytax_submit'] = "Issue Change",
        ['changeplayercompanytax_text'] = "Current Amount: %s%s",

        ['appointmentReason_header'] = "Arrange Appointment",
        ['appointmentReason_submit'] = "Submit Appointment Request",
        ['appointmentReason_text'] = "Appointment Reason",

        ['issueAppointment_header'] = "Provide Date & Time",
        ['issueAppointment_submit'] = "Issue Appointment",
        ['issueAppointment_text_one'] = "Date (02/05/2022)",
        ['issueAppointment_text_two'] = "Time (14:00pm)",

        ['issueGrant_header'] = "City Hall Funds: %s%s",
        ['issueGrant_submit'] = "Issue Grant",
        ['issueGrant_text_one'] = "Grant Reason",
        ['issueGrant_text_two'] = "Amount ($)",
    }
}

LangServer = {
    notifications = {
        ['candidateStatus_one'] = "Your candidacy application has been accepted.",
        ['candidateStatus_two'] = "Your candidacy application has been denied, Visit the court house for the reason why.",
        
        ['startVoting'] = "The government has started the candidate application process, please visit the townhall to apply.",
        
        ['applyDialog'] = "%s",

        ['enableVoting_one'] = "Candidate applications are now closed and the voting poll are now open, come down to the townhall to vote for your candidate.",
        ['enableVoting_two'] = "You can only start the voting if there are canidates.",
        
        ['finishVoting_one'] = "You have gave the verdict, the winner has been notified via email.",
        ['finishVoting_two'] = "You can only finish the voting if there are canidates.",

        ['takeFullPayment_one'] = "Business: %s has cleared the unpaid tax on there account.",
        ['takeFullPayment_two'] = "Business: %s does not have the funds to clear there debt.",

        ['clearUnpaidTax'] = "Business: %s has been given tax relief.",

        ['systemTax'] = "You have paid %s%s income tax.",

        ['businessTaxPayments_one'] = "Your business could not afford the business tax payment of %s%s.",
        ['businessTaxPayments_two'] = "Your business has paid %s%s in tax.",

        ['changeTaxCity'] = "You have updated %s Tax to %s%s",

        ['chargeCityTax'] = "You have paid %s%s %s tax.",

        ['warnCandidate'] = "You have been warned by the voting staff, check the email for more info.",

        ['removeCandidate'] = "You have removed %s as a candidate.",

        ['sortfunds_one'] = "You do not have the correct funds to withdraw.",
        ['sortfunds_two'] = "You are not allowed to withdraw less then %s%s",
        ['sortfunds_three'] = "You are not allowed to withdraw more then %s%s",
        ['sortfunds_four'] = "You have withdrawn %s%s from the cityhall funds",
        ['sortfunds_five'] = "You do not have the correct funds to deposit.",
        ['sortfunds_six'] = "You are not allowed to deposit less then %s%s",
        ['sortfunds_seven'] = "You are not allowed to deposit more then %s%s",
        ['sortfunds_eight'] = "You have deposit %s%s to the cityhall funds",

        ['verifyPin'] = "Security pin email sent to %s.",
        
        ['registerplayercompany'] = "you have registerd %s to the city database.",

        ['transferplayercompany_one'] = "you have transferd ownership of %s to %s.",
        ['transferplayercompany_two'] = "This company is a government owned company and can't be transferred.",

        ['changeplayercompanytax_one'] = "You can not set the tax amount higher then the legal amount!",
        ['changeplayercompanytax_two'] = "You can not set the tax amount lower then the legal amount!",
        ['changeplayercompanytax_three'] = "You have change the companys tax from %s to %s.",

        ['messageOwner'] = "You have been sent an email from the mayor's office.",

        ['submitAppointment'] = "Your appointment request has been sent.",

        ['cancelAppointment'] = "Your appointment has been cancelled.",

        ['mayorCancelAppointment'] = "You have cancelled %s appointment.",

        ['issueAppointment'] = "You have scheduled an appointment for %s on %s, an email has been sent with the date and time.",
        
        ['finishAppointment'] = "You have marked this appointment as finished.",

        ['issueGrant_one'] = "The cityhall does not have enough funds to cover this grant.",
        ['issueGrant_two'] = "The cityhall can only grant from %s%s to %s%s.",
        ['issueGrant_three'] = "The cityhall has issued a grant of %s%s to %s.",
        ['issueGrant_four'] = "The cityhall has issued a grant of %s%s to %s.",

        ['staffVotingCommand'] = "Voting Settings (Admin Only)",
    }
}