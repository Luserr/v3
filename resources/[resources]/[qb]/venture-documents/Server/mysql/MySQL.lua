function __createDocumentsTable(cb)
    MySQL.Async.execute("CREATE TABLE IF NOT EXISTS lg_documents (id int AUTO_INCREMENT, type int, job text, identifier text, infos text, body longtext, images text, signatures text, PRIMARY KEY(id))", {}, cb)
end

function __selectDocumentsById(id, cb)
    MySQL.Async.fetchAll("SELECT * FROM lg_documents WHERE id = ?", {
        id
    }, function(result)
        if result then
            result = result[1]
            
            result.identifier = result.identifier
            result.infos = json.decode(result.infos)
            result.body = json.decode(result.body)
            result.images = json.decode(result.images)
            result.signatures = json.decode(result.signatures)
        end

        cb(result)
    end)
end

function __selectDocumentsByIdentifier(identifier, cb)
    MySQL.Async.fetchAll("SELECT * FROM lg_documents WHERE identifier = ? and type = 0 ORDER BY id DESC", {
        identifier
    }, function(result)
        if result then
            for i,k in pairs(result) do
                k.infos = json.decode(k.infos)
                k.body = json.decode(k.body)
                k.images = json.decode(k.images)
                k.signatures = json.decode(k.signatures)
            end
        end

        cb(result)
    end)
end

function __selectDocumentsByJob(job, cb)
    MySQL.Async.fetchAll("SELECT * FROM lg_documents WHERE job = ? and type = 1 ORDER BY id DESC", {
        job
    }, function(result)
        if result then
            for i,k in pairs(result) do
                k.infos = json.decode(k.infos)
                k.body = json.decode(k.body)
                k.images = json.decode(k.images)
                k.signatures = json.decode(k.signatures)
            end
        end

        cb(result)
    end)
end

function __selectDocuments(cb)
    MySQL.Async.fetchAll("SELECT * FROM lg_documents ORDER BY id DESC", {
        
    }, function(result)
        if result then
            for i,k in pairs(result) do
                k.infos = json.decode(k.infos)
                k.body = json.decode(k.body)
                k.images = json.decode(k.images)
                k.signatures = json.decode(k.signatures)
            end
        end

        cb(result)
    end)
end

function __insertDocument(type, job, identifier, infos, body, images, signatures, cb)
    MySQL.Async.insert("INSERT INTO lg_documents (type, job, identifier, infos, body, images, signatures) VALUES (?, ?, ?, ?, ?, ?, ?)", {
        type, job, identifier, json.encode(infos), json.encode(body), json.encode(images), json.encode(signatures)
    }, cb)
end

function __updateDocument(id, type, job, identifier, infos, body, images, signatures, cb)
    MySQL.Async.execute("UPDATE lg_documents SET type = ?, job = ?, identifier = ?, infos = ?, body = ?, images = ?, signatures = ? WHERE id = ?", {
        type, job, identifier, json.encode(infos), json.encode(body), json.encode(images), json.encode(signatures), id
    }, cb)
end

function __deleteDocument(id, cb)
    MySQL.Async.execute("DELETE FROM lg_documents WHERE id = ?", {
        id
    }, cb)
end

function __convertOldVersion(cb)
    -- CREATE TABLE IF NOT EXISTS documents(id int AUTO_INCREMENT, owner varchar(100), name_creator varchar(100), name varchar(50), date varchar(50), title varchar(50), scope text, images text, signatures text, job varchar(30) DEFAULT 'none', ismodel tinyint DEFAULT 0, isopen tinyint DEFAULT 1, PRIMARY KEY(id))
    print("Starting Documents System table conversion")
    MySQL.Async.fetchAll("SELECT * FROM documents", {}, function(result)
        for i,k in pairs(result) do
            k.images = json.decode(k.images)
            k.signatures = json.decode(k.signatures)

            for j,c in pairs(k.signatures) do
                k.signatures[j] = {
                    name = c.asign,
                    info = c.info,
                }
            end

            local document = {
                type = k.ismodel,
                job = k.job,
                identifier = k.owner,
                infos = {
                    created_by = k.name_creator,
                    updated_by = "-------",
                    finish_by  = "-------",
                    status     = k.isopen,
                    banner     = config.server_banner,
                    title      = translate.TR_TITLE,
                    subtitle   = k.title,
                    date       = k.date,
                    name_document = k.name,
                },
                body = k.scope,
                images = k.images,
                signatures = k.signatures,
            }

            __insertDocument(document.type, document.job, document.identifier, document.infos, document.body, document.images, document.signatures, function()
                print("A DOCUMENT WAS CONVERTED TO NEW DOCUMENTS SYSTEM.")
            end)
        end
    end)

    print("Documents System table conversion completed.")
end