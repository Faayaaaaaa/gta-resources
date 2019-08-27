for k, v in pairs(Config.Socials) do
    RegisterCommand(v.command, function(src, args, raw)
        local msg = 'Social: ' .. v.social .. ': ' .. v.response
        local fal = '^1SYSTEM'
        TriggerClientEvent('chat:addMessage', src, {
            args = { fal, msg, template = v.template }
        })
    end)
end