
function Notify(data)
    if data.severity == nil then
        data.severity = "info"
    end

    if data.life == nil then
        data.life = 5000
    end

    if data.position == nil then
        data.position = Config.DefaultPosition
    end

    SendNUIMessage({
        type = "notify",
        data = data
    })
end

RegisterCommand("testnotify", function()
    Notify({
        title = "Test",
        description = "This is a test notification",
        severity = "info",
        life = 5000,
        position = "topright"
    })
end, false)

RegisterNetEvent("peuren_notify", function(data)
    Notify(data)
end)

exports("Notify", Notify)