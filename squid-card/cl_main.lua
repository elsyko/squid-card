local opened = false

RegisterCommand('squid-number', function(s,a,r)
    local newNum = a[1]
    if newNum then 
        local len = string.len(newNum)
        if len <= 10 and len > 0 then
            SendNUIMessage({
                action = "newnumber",
                number = newNum,
            })
        else
            exports["mythic_notify"]:SendAlert('error', 'The number must be between 1 - 10 numbers.')
        end
    else
        exports["mythic_notify"]:SendAlert('error', 'You must enter a new number for the card.')
    end
end)

RegisterCommand('squid-card', function(s,a,r)
    if not opened then
        SendNUIMessage({
            action = "show"
        })
        SetNuiFocus(true, true)
    else
        SendNUIMessage({
            action = "close"
        })
        SetNuiFocus(false, false)
    end
end)

RegisterNUICallback("closeCard",function(data, cb)
    SetNuiFocus(false, false)
end)