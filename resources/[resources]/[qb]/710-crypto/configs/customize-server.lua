local Framework = exports['710-lib']:GetFrameworkObject()

RegisterNetEvent('710-crypto:SendCryptoHook', function(source, type, crypto, value)
    if Config.CryptoSystem.WebhookLogs then 
        local Webhook = {} --- Leave this like this and set the webhook URL below
        local message = {} --- Leave this line blank and set the message below  
        if type == 'Crypto Buy' then
            local source = source 
            local Player = Framework.PlayerDataS(source) 
            Webhook = 'https://discord.com/api/webhooks/1027734843955630130/BDtcS-F78PAdaMiIUL5tYaoPgd73jKjBI1QE85-X2Tln1Bji2p3v9Mp5Glp1pBtPMG1b' --- put your webhook here you can make all of them the same if you want but the text will be different so i thought id just add this also if you want to change channels 
            message = crypto..' has been bought by '..Player.Name..' for $'..value
        elseif type == 'Crypto Sell' then
            local source = source 
            local Player = Framework.PlayerDataS(source)
            Webhook = 'https://discord.com/api/webhooks/1027734843955630130/BDtcS-F78PAdaMiIUL5tYaoPgd73jKjBI1QE85-X2Tln1Bji2p3v9Mp5Glp1pBtPMG1b'
            message = crypto..' has been sold by '..Player.Name..' for $'..value
        elseif type == 'Crypto Transfer' then
            local source = source 
            local Player = Framework.PlayerDataS(source)
            Webhook = 'https://discord.com/api/webhooks/1027734843955630130/BDtcS-F78PAdaMiIUL5tYaoPgd73jKjBI1QE85-X2Tln1Bji2p3v9Mp5Glp1pBtPMG1b'
            message = crypto..' has been transferred by '..Player.Name..' amount sent = '..value
        elseif type == 'Crypto Reveived' then
            local source = source 
            local Player = Framework.PlayerDataS(source)
            Webhook = 'https://discord.com/api/webhooks/1027734843955630130/BDtcS-F78PAdaMiIUL5tYaoPgd73jKjBI1QE85-X2Tln1Bji2p3v9Mp5Glp1pBtPMG1b'
            message = crypto..' has been received by '..Player.Name..' amount received = '..value
        elseif type == 'Crypto Market Update' then
            Webhook = 'https://discord.com/api/webhooks/1027734843955630130/BDtcS-F78PAdaMiIUL5tYaoPgd73jKjBI1QE85-X2Tln1Bji2p3v9Mp5Glp1pBtPMG1b'
            message = 'Crypto Market change! \n' --- leave this as a starting and the cryptos will loop below add them onto this message 
            for k,v in pairs(crypto) do
                message = message..k..' = $'..v..' \n'
            end


        else
            type = 'Crypto Log - Type was wrong or not provided'
            Webhook = 'https://discord.com/api/webhooks/1027734843955630130/BDtcS-F78PAdaMiIUL5tYaoPgd73jKjBI1QE85-X2Tln1Bji2p3v9Mp5Glp1pBtPMG1b'
            message = 'Type was wrong or not provided type = '..type..' crypto = '..crypto..' value = '..value
        end
        local embed = {
            {
                ["color"] = '65352',
                ["author"] = {
                    ["icon_url"] = "https://cdn.discordapp.com/attachments/1018532388130803822/1018634433303167027/logo_2.png",
                    ["name"] = "Crypto System",
                },
                ["title"] = type,
                ["description"] = message,
                ["footer"] = {
                    ["text"] = os.date('%c'),
                }
            }
        }
        PerformHttpRequest(Webhook, function(err, text, headers) end, 'POST', json.encode({username = "venture-crypto", embeds = embed}), {['Content-Type'] = 'application/json'})
    end 
end)       