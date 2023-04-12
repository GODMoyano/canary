local config = {
    storage = 30070,
    tokensPerHour = 5 * 30, -- quantidade
    checkDuplicateIps = false
}

local onlineTokensEvent = GlobalEvent("GainTokenPerHour")

function onlineTokensEvent.onThink(interval)
    local players = Game.getPlayers()
    if #players == 0 then
        return true
    end

    local checkIp = {}
    for _, player in pairs(players) do
        local ip = player:getIp()
        if ip ~= 0 and (not config.checkDuplicateIps or not checkIp[ip]) then
            checkIp[ip] = true
            local seconds = math.max(0, player:getStorageValue(config.storage))
            if seconds >= 30 * 60 then -- 30 minutos
                player:setStorageValue(config.storage, 0)
                db.query("UPDATE `accounts` SET `tournament_coins` = `tournament_coins` + '" .. config.tokensPerHour .. "' WHERE `id` = '" .. player:getAccountId() .. "';")
                player:sendTextMessage(MESSAGE_INFO_DESCR, "You received "..config.tokensPerHour.." Tournament Coins for being online!")
                return true
            end
            player:setStorageValue(config.storage, seconds + math.ceil(interval/1000))
        end
    end
    return true
end

onlineTokensEvent:interval(10000)
onlineTokensEvent:register()
