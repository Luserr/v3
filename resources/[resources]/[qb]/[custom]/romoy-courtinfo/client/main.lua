local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('romoycinfo:client:DataCheck', function()
    QBCore.Functions.GetPlayerData(function(Player)
        data = {
            fullname = Player.charinfo.firstname..' '..Player.charinfo.lastname,
            dob = Player.charinfo.birthdate,
            nationality = Player.charinfo.nationality,
            phone = Player.character.phone,
            bloodnumber = Player.charinfo.blood,
            apartment = Player.metadata['currentapartment'],
            job = Player.job.name,
            licences = Player.metadata['licenses'],
        }
        if not Shared.JobRequire then
            QBCore.Functions.Notify('Your information is being requested and is being printed, we will email you when it is done', 'primary')
            for k,v in pairs(data) do 
                print(k,v)
            end
        else
            if Shared.JobRequire then
                for i,l in pairs(Shared.Jobnames) do 
                    ajobs = l.name
                end
                if Player.job.name ~= ajobs then
                    QBCore.Functions.Notify('Need a job', 'error')
                    return
                end
                if Player.job.name == ajobs then
                    citiname = exports['qb-input']:ShowInput({
                        header = "Info Check",
                        input = {
                            {
                                text = "Citizen ID",
                                name = 'citiid',
                                type = 'text',
                                isRequired = true
                            },
                        }
                    })
                    if citiname == nil then
                        print('No data')
                        return
                    end
                end
            end
        end
    end)
end)