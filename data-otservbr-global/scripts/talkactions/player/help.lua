local commands = TalkAction("!help")
 
function commands.onSay(player, words, param)
    if player then
        local text = 'Origin Global OT help: \n\n'
		text = text .. 'COMANDOS:\n'
		text = text .. '!aol - 50k\n'
        text = text .. '!bless \n'
        text = text .. '!buyhouse \n'
        text = text .. '!leavehouse \n'
        text = text .. '!sellhouse \n'
        text = text .. '!serverinfo \n\n'
		text = text .. 'Earn TOURNAMENT COINS just staying ONLINE \n\n'
		text = text .. 'Every weekend BONUS XP and SKILS \n\n'
		text = text .. 'https://t.me/originotserver'
        player:showTextDialog(1952, text)
    end
    return false
end
 
commands:register()