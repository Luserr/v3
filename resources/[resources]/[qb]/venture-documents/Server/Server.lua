local show_document = {}

CreateThread(function()
    __createDocumentsTable(function()
        print("Documents System Inicializado com sucesso!")
    end)

    if config.enable_conversion then
        RegisterCommand("doc_conversion", function()
            __convertOldVersion(function()
            
            end)
        end)
    end
end)

function LoadDocuments(source)
    local identifier = getIdentifier(source)

    __selectDocumentsByIdentifier(identifier, function(result)
        TriggerClientEvent("lg_documents:LoadedDocuments", source, result)
    end)
end

function LoadTemplates(source)
    local job = getJob(source)

    __selectDocumentsByJob(job, function(result)
        TriggerClientEvent("lg_documents:LoadedTemplates", source, result)
    end)
end

function GiveDocument(source, target, document_id)
    local identifier = getIdentifier(source)

    __selectDocumentsById(document_id, function(result)
        local target_identifier = getIdentifier(target)
        local target_name = getName(target)

        if not result then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_EXIST)
            return
        elseif result.identifier ~= identifier then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_ISNOT_YOUR)
            return
        elseif not target_identifier then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NO_NEAREST)
            return
        end

        __updateDocument(document_id, result.type, result.job, target_identifier, result.infos, result.body, result.images, result.signatures, function()
            showNotification(source, translate.TR_GIVE_1 .. target_name)
            showNotification(target, translate.TR_GIVE_2)

            TriggerClientEvent("lg_documents:ConfirmAction", source)
        end)
    end)
end

function ShowDocument(source, target, document_id)
    local identifier = getIdentifier(source)

    __selectDocumentsById(document_id, function(result)
        local target_identifier = getIdentifier(target)
        local target_name = getName(target)
        
        if not result then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_EXIST)
            return
        elseif result.identifier ~= identifier then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_ISNOT_YOUR)
            return
        elseif not target_identifier then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NO_NEAREST)
            return
        end

        showNotification(source, translate.TR_SHOWING_1 .. " " .. target_name)
        showNotification(target, translate.TR_SHOWING_2 .. " " .. config.key_accept)

        result.infos.status = 0
        show_document[target] = result

        SetTimeout(30000, function()
            if show_document[target] and show_document[target] == result then
                show_document[target] = nil
            end
        end)
    end)
end

function SeeDocument(source)
    if not show_document[source] then
        return
    end

    TriggerClientEvent("lg_documents:SeeDocument", source, show_document[source])
end

function SaveDocument(source, document_id, document)
    local identifier = getIdentifier(source)
    local name = getName(source)

    if document_id then
        __selectDocumentsById(document_id, function(result)
            if not result then
                TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_EXIST)
                return
            elseif result.identifier ~= identifier and result.type == 0 then
                TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_ISNOT_YOUR)
                return
            elseif not HasPermissionToCreate(source) and result.type == 1 then
                TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_PERMISSION)
                return
            end

            result.infos.updated_by = name
            result.infos.name_document = document.name_document
            result.infos.title = document.title
            result.infos.date = document.date
            result.infos.subtitle = document.subtitle
            result.infos.banner = document.banner

            __updateDocument(document_id, result.type, result.job, identifier, result.infos, document.body, document.images, document.signatures, function()
                showNotification(source, translate.TR_SAVE_SUCCESSFUL)
                TriggerClientEvent("lg_documents:ConfirmAction", source)
            end)

        end)
    else
        if not HasPermissionToCreate(source) then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_PERMISSION)
            return
        end

        local job = getJob(source)

        document.infos = {
            created_by = name,
            updated_by = name,
            finish_by = nil,
            status = 1,

            name_document = document.name_document,
            title = document.title,
            date = document.date,
            subtitle = document.subtitle,
            banner = document.banner,
        }

        __insertDocument(document.type, job, identifier, document.infos, document.body, document.images, document.signatures, function()
            showNotification(source, translate.TR_CREATE_SUCCESSFUL)
            TriggerClientEvent("lg_documents:ConfirmAction", source)
        end)
    end
end

function FinishDocument(source, document_id)
    local identifier = getIdentifier(source)
    local name = getName(source)

    if not HasPermissionToFinish(source) then
        TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_PERMISSION)
        return
    end
    
    __selectDocumentsById(document_id, function(result)
        if not result then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_EXIST)
            return
        elseif result.identifier ~= identifier and result.type == 1 then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_ISNOT_YOUR)
            return
        end

        result.infos.status = 0
        result.infos.finish_by = name

        __updateDocument(document_id, result.type, result.job, result.identifier, result.infos, result.body, result.images, result.signatures, function()
            showNotification(source, translate.TR_FINISH_SUCCESSFUL)
            TriggerClientEvent("lg_documents:ConfirmAction", source)
        end)

    end)
end

function DeleteDocument(source, document_id)
    local identifier = getIdentifier(source)

    __selectDocumentsById(document_id, function(result)
        if not result then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_EXIST)
            return
        elseif result.identifier ~= identifier and result.type == 0 then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_ISNOT_YOUR)
            return
        elseif not HasPermissionToCreate(source) and result.type == 1 then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_PERMISSION)
            return
        end

        __deleteDocument(document_id, function()
            showNotification(source, translate.TR_DELETE_SUCCESSFUL)
            TriggerClientEvent("lg_documents:ConfirmAction", source)
        end)
    end)
end

function CreateCopy(source, document_id)
    local identifier = getIdentifier(source)

    __selectDocumentsById(document_id, function(result)
        if not result then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_EXIST)
            showNotification(source, translate.TR_NOT_EXIST)
            return
        elseif result.identifier ~= identifier then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_ISNOT_YOUR)
            showNotification(source, translate.TR_ISNOT_YOUR)
            return
        elseif not HasPermissionToCreate(source) then
            TriggerClientEvent("lg_documents:CancelAction", source, translate.TR_NOT_PERMISSION)
            showNotification(source, translate.TR_NOT_PERMISSION)
            return
        end

        if not string.find(result.infos.name_document, "(" .. translate.TR_COPY .. ")" ) then
            result.infos.name_document = '('.. translate.TR_COPY ..') ' .. result.infos.name_document
        end

        __insertDocument(result.type, result.job, result.identifier, result.infos, result.body, result.images, result.signatures, function()
            showNotification(source, translate.TR_COPY_SUCCESSFUL)
            TriggerClientEvent("lg_documents:ConfirmAction", source)
        end)
    end)
end

function HasPermissionToCreate(source)
    local job = getJob(source)
    local grade = getGrade(source)

    for i,k in pairs(config.jobs_create) do
        if k.job == job and grade >= k.grade then
            return true
        end
    end

    return false
end

function HasPermissionToFinish(source)
    local job = getJob(source)
    local grade = getGrade(source)

    for i,k in pairs(config.jobs_finish) do
        if k.job == job and grade >= k.grade then
            return true
        end
    end

    return false
end

RegisterNetEvent("lg_documents:LoadDocuments", function()
    LoadDocuments(source)
end)
RegisterNetEvent("lg_documents:LoadTemplates", function()
    LoadTemplates(source)
end)

RegisterNetEvent("lg_documents:SaveDocument", function(data)
    SaveDocument(source, data.document_id, data.document)
end)

RegisterNetEvent("lg_documents:DeleteDocument", function(data)
    DeleteDocument(source, data.document_id)
end)

RegisterNetEvent("lg_documents:FinishDocument", function(data)
    FinishDocument(source, data.document_id)
end)

RegisterNetEvent("lg_documents:ShowDocument", function(target, data)
    ShowDocument(source, target, data.document_id)
end)

RegisterNetEvent("lg_documents:SeeDocument", function()
    SeeDocument(source)
end)

RegisterNetEvent("lg_documents:GiveDocument", function(target, data)
    GiveDocument(source, target, data.document_id)
end)

RegisterNetEvent("lg_documents:CreateCopy", function(data)
    CreateCopy(source, data.document_id)
end)

RegisterNetEvent("lg_documents:ShowNotification", function(message)
    showNotification(source, message)
end)