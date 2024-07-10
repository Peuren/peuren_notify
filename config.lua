Config = {}

Config.DefaultPosition = "topright" --Default notification position. Possible values: center, topleft, topcenter, topright, bottomleft, bottomcenter, bottomright

--[[
    --- USAGE ---

    EXPORT:
    exports["peuren_notify"]:Notify({
        title = "Title",
        description = "Description",
        severity = "info",
        life = 5000,
        position = "topright"
    })

    EVENTS:
        SERVER-SIDE:
            TriggerClientEvent("peuren_notify", source, {
                title = "Title",
                description = "Description",
                severity = "info",
                life = 5000,
                position = "topright"
            })

        CLIENT-SIDE:
            TriggerEvent("peuren_notify", {
                title = "Title",
                description = "Description",
                severity = "info",
                life = 5000,
                position = "topright"
            })

    PARAMETERS: 
    {
        title = title of the notification,
        description = description of the notification,
        severity = severity of the notification ("error" | "secondary" | "info" | "success" | "warn" | "contrast"),
        life = duration of the notification in milliseconds,
        position = position of the notification ("center" | "topleft" | "topcenter" | "topright" | "bottomleft" | "bottomcenter" | "bottomright")
    }
]]