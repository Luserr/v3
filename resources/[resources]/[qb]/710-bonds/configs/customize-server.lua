local Framework = exports['710-lib']:GetFrameworkObject()
local Webhook = 'https://discord.com/api/webhooks/1027733644313366568/s6AkZv-B0FYVzxOv-GadBfzJjXOD2oGO7Jg3fasROC8l2UJ-Q6Ec8tyiw952EmbJFZvv'

RegisterNetEvent('710-bonds:SendWebhook', function(txt)
  local embed = {
      {
          ["color"] = '65352',
          ["author"] = {
              ["icon_url"] = "https://cdn.discordapp.com/attachments/1018532388130803822/1018634433303167027/logo_2.png",
              ["name"] = "Venture Bond",
          },
          ["title"] = "Venture Bond Logs",
          ["description"] = txt,
          ["footer"] = {
              ["text"] = os.date('%c'),
          }
      }
  }
  PerformHttpRequest(Webhook, function(err, text, headers) end, 'POST', json.encode({username = "Venture Bonds", embeds = embed}), {['Content-Type'] = 'application/json'})

end)

RegisterNetEvent('710-bonds:newWarrantInfoSend', function(crimsource, warrantinfo)
    local source = source 
    local CourtStaff = Framework.PlayerDataS(source)
    local Criminal = Framework.PlayerDataS(crimsource)
    --[[
      Here you can use this to send info to MDTs and things like that this gets triggered everytime a warrant is made. 
     if you need the criminals name or ID you can use 
     Criminal.Pid ---- this is to get your CitizenID for qbcore or Identifier for esx. 
     Criminal.Name ---- this is to get your name for your player
     warrantinfo -- will return the reason/info provided by the court staff. 
     if you want to send notifcations to either of the 2 options above you can just do 
     Criminal.Notify('Your message here') or CourtStaff.Notify('Your message here')
    ]]--


end)












