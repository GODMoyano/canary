local creatureevent = CreatureEvent("recompense")

function creatureevent.onAdvance(player, skill, oldLevel, newLevel)
    if player:getLevel() >= 20 and player:getStorageValue(99970) ~= 1 then
        player:addItem(3043, 5)
        player:setStorageValue(99970, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have been rewarded 5 Crystal Coins for reach level 20.")

    elseif player:getLevel() >= 100 and player:getStorageValue(99971) ~= 1 then
        player:addItem(3043, 10)
        player:setStorageValue(99971, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have been rewarded 10 Crystal Coins for reach level 100.")

    elseif player:getLevel() >= 200 and player:getStorageValue(99972) ~= 1 then
        player:addItem(3043, 20)
        player:setStorageValue(99972, 1)
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You have been rewarded 20 Crystal Coins for reach level 200.")
        end
    return true
end

creatureevent:register()