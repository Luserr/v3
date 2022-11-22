-- if your server use oxmysql, active the line '@oxmysql/lib/MySQL.lua'
-- or if your server use mysql-async, active the line '@mysql-async/lib/MySQL.lua'
-- OPTIONS: 
-- ESX 
-- QBCore
-- VRP ( open the fxmanifest file and activate the line "@vrp/lib/utils.lua" )
-- Standalone
use_framework = 'QBCore'

config = {
    -- commands will open the NUI
    commands = {
        "documents",
        "docs",
    },

    -- key bind to accept see document
    key_accept = "F5",

    -- banner of the main page
    server_banner = "img/banner.png",

    -- who can create and manage documents and templates
    -- if you use VRP Framework, put the permission in job and grade = 0
    jobs_create = {
        {
            job = "police",
            grade = 0,
        },

        -- {
        --     job = "judge",
        --     grade = 0,
        -- },
    },

    -- who can finish documents
    -- if you use VRP Framework, put the permission in job and grade = 0
    jobs_finish = {
        {
            job = "police",
            grade = 3,
        },
        
        -- {
        --     job = "judge",
        --     grade = 0,
        -- },
    },

    -- By enabling this option, you can use the doc_conversion command to convert from the old system to the new one.
    -- Use the command only once.
    -- Use only if you had the old version of the script.
    enable_conversion = false,
}

translate = {
    TR_DOCUMENT_SYSTEM = "DOCUMENTS SYSTEM",
    TR_WELCOME = "Welcome back to Document Management.",
    TR_WELCOME_TEXT = "Here you can view, edit and create new documents.",
    TR_TITLE = "Document Title",
    TR_DATE = "April 16, 2020",
    TR_SUBTITLE = "YOUR TITLE",
    TR_CHOOSE_PHOTO = "Choose a photo",
    TR_PLACE_URL = "URL to the image",
    TR_LOAD = "Load",
    TR_CHANGE = "Change",
    TR_CANCEL = "Cancel",
    TR_OR_PREVIEW = "Or choose one already used before",
    TR_SAVE_DOCUMENT = "Save Document",
    TR_NAME_DOCUMENT = "Name of Document",
    TR_CONFIRM = "Confirm",
    TR_TEMPLATE = "Templat",
    TR_DOCUMENT = "Document",
    TR_BACK = "Back",
    TR_CHANGE_BANNER = "Change Logo",
    TR_ADD_SIG = "Add Signature",
    TR_DEL_SIG = "Remove Signature",
    TR_SAVE = "Save",
    TR_TEXT_HERE = "YOUR TEXT HERE",
    TR_CREATED_BY = "created by",
    TR_UPDATED_BY = "updated by",
    TR_FINISH_BY = "finish by",
    TR_DELETE_IMG = "Delete Image",
    TR_CLICK_IMG = "Click to Insert a image",
    TR_TEXT_INSERT_IMG = "The URL must be secure (HTTPS) and contain .png , .jpg or .gif",
    TR_PUT_URL = "Put a URL",
    TR_INSERT = "Insert",
    TR_EXAMPLE_NAME = "Example Name",
    TR_EXAMPLE_INFO = "Example Info",
    TR_DELETE_TITLE = "Are you sure you want to delete this document?",
    TR_DELETE_TEXT = "When you delete this document, it will be completely erased and it will not be possible to recover it. Are you sure about that?",
    TR_YES = "Yes",
    TR_NO = "No",
    TR_EXIT = "Exit",
    TR_FINISH_TITLE = "Are you sure you want to Complete this document?",
    TR_FINISH_TEXT = "When you complete this document, it can no longer be edited by anyone. Are you sure about that?",
    TR_SAVING = "Saving...",
    TR_SEE_LIST = "See list of documents",
    TR_OPENNED = "Opened",
    TR_CLOSED = "Completed",
    TR_OPEN = "Open",
    TR_FINISH_LABEL = "Once completed, no one will be able to edit",
    TR_FINISH = "Complete Document",
    TR_CREATE_COPY = "Create Copy",
    TR_SHOW_LABEL = "The player will not be able to edit",
    TR_SHOW_DOCUMENT = "Show to Nearest Player",
    TR_GIVE_LABEL = "The player can edit",
    TR_GIVE_DOCUMENT = "Give to Nearest Player",
    TR_DELETE = "Delete",
    TR_CREATE_M_LABEL = "Create a new Template or Document",
    TR_NEW_DOCUMENT = "New Document",
    TR_MY_DOCUMENTS = "My Documents",
    TR_SEARCH = "Search for a document",
    TR_EMPTY_DOCS = "You don't have any documents",
    TR_LOADING_DOCS = "Loading Documents",
    TR_DELETE_TITLE2 = "Are you sure you want to delete this template?",
    TR_DELETE_TEXT2 = "When you delete this template, it will be completely erased and it will not be possible to recover it. Are you sure about that?",
    TR_BACK_DOCUMENTS = "Back to Documents list",
    TR_CREATE_TEMPLATE = "Create a new template",
    TR_NEW_TEMPLATE = "New Template",
    TR_CHOOSE_TEMPLATE = "Choose a Template",
    TR_CHOOSE_TEMPLATE2 = "Choose this Template",
    TR_EDIT_TEMPLATE = "Edit this Template",
    TR_DELETE_TEMPLATE = "Delete this Template",
    TR_EMPTY_TEMPS = "No templates found",
    TR_LOADING_TEMPS = "Loading Templates",
    TR_NO_NEAREST = "There's nobody close to you.",
    TR_NOT_EXIST = "This Document does not exist",
    TR_ISNOT_YOUR = "This Document does not belong to you.",
    TR_GIVE_1 = "Document delivered to:",
    TR_GIVE_2 = "You received a document",
    TR_SHOWING_1 = "You are showing the document to",
    TR_SHOWING_2 = "Someone is trying to show you a document. To accept, press",
    TR_NOT_PERMISSION = "You do not have permission",
    TR_SAVE_SUCCESSFUL = "Saved successfully!",
    TR_CREATE_SUCCESSFUL = "Successfully created!",
    TR_FINISH_SUCCESSFUL = "Successfully completed!",
    TR_DELETE_SUCCESSFUL = "Document successfully deleted",
    TR_COPY_SUCCESSFUL = "Successfully copied!",
    TR_COPY = "Copy",
}