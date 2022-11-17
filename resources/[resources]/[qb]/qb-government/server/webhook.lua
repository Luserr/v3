local CandidateWinnerWebhook = ""
local PollsOpenWebhook = ""
local CandidateStartedWebhook = ""
local CompanyRegisterdWebhook = ""
local CompanyGrantGivenWebhook = ""
local AppointmentRequestWebhook = ""
local AppointmentApproveWebhook = ""
local MayorTaxChangeWebhook = ""

webhookMsg = {
    ['CandidateWinner'] = {
        ['title'] = "%s",
        ['message'] = "*The votes have been counted and the winner of the election is...* \n\n **Name:** ```%s```"
    }, 
    ['PollsOpen'] = {
        ['title'] = "%s",
        ['message'] = "```The polls are now open, if you would like to make a vote please visit the city hall.```"
    },
    ['CandidateStarted'] = {
        ['title'] = "%s",
        ['message'] = "```This election process has just started, If you believe you are the right person to run as a candidate for this role please visit the city hall to put in an candidate application.```"
    },
    ['CompanyRegisterd'] = {
      ['title'] = "Company Registered",
      ['message'] = "**Company Name:** ```%s``` \n\n **Owners Name:** ```%s``` \n\n **Mayor's Name:** ```%s``` \n\n **Date & Time Of Registration:** ```%s```"
    },
    ['CompanyGrantGiven'] = {
      ['title'] = "Company Name: %s",
      ['message'] = "**Grant Reason:** ```%s``` \n\n **Grant Amount:** ```%s%s``` \n\n **Date & Time:** ```%s``` \n\n **Owners Name:** ```%s``` \n\n **Mayor's Name:** ```%s```"
    },
    ['AppointmentRequest'] = {
      ['title'] = "Appointment Request",
      ['message'] = "**Name:** ```%s``` \n\n **Reason:** ```%s``` \n\n **Date & Time Of Request:** ```%s```"
    },
    ['AppointmentApprove'] = {
      ['title'] = "Appointment Approve",
      ['message'] = "**Name:** ```%s``` \n\n **Mayor's Name:** ```%s``` \n\n **Reason:** ```%s``` \n\n **Appointment Date & Time:** ```%s```"
    },
    ['MayorTaxChange'] = {
      ['title'] = "Company Tax Change",
      ['message'] = "**Company Name:** ```%s``` \n\n **Old Tax Amount:** ```%s%s``` \n\n **New Tax Amount:** ```%s%s``` \n\n **Owners Name:** ```%s``` \n\n **Mayor's Name:** ```%s```"
    }
}

sendLogsDiscord = function(title, message, webhook)
    local Discord_url = nil
	local embed = {
		{
			["color"] = 3085967,
			["title"] = "**".. title .."**",
			["description"] = message
		}
	}
    if webhook == "CandidateWinnerWebhook" then
      Discord_url = CandidateWinnerWebhook
    elseif webhook == "PollsOpenWebhook" then
      Discord_url = PollsOpenWebhook
    elseif webhook == "CandidateStartedWebhook" then
      Discord_url = CandidateStartedWebhook 
    elseif webhook == "CompanyRegisterdWebhook" then
      Discord_url = CompanyRegisterdWebhook
    elseif webhook == "CompanyGrantGivenWebhook" then
      Discord_url = CompanyGrantGivenWebhook  
    elseif webhook == "AppointmentRequestWebhook" then
      Discord_url = AppointmentRequestWebhook
    elseif webhook == "AppointmentApproveWebhook" then
      Discord_url = AppointmentApproveWebhook
    elseif webhook == "MayorTaxChangeWebhook" then
      Discord_url = MayorTaxChangeWebhook   
    end
    PerformHttpRequest(Discord_url, function(err, text, headers) end, 'POST', json.encode({username = title, embeds = embed}), { ['Content-Type'] = 'application/json' })
end

customphonefunction = function(data)
  local identifier = data.id
  local sender = data.sender
  local subject = data.subject
  local message = data.mail
  local image = data.image
  local button = data.button
  local notify = data.notifymsg

  -- Put custom event here.

end