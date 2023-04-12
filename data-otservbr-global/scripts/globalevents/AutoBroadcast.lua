local autoBroadcast = GlobalEvent("AutoBroadcast")
function autoBroadcast.onThink(interval, lastExecution)
    local messages = {

	"Welcome to Origin Global OT",
	"Earn TOURNAMENT COINS just staying ONLINE",
	"Respect everyone!",
	"Stamina system is OFF, enjoy",
	"Join our telegram https://t.me/originotserver",
	"Type: !help to display all available commands",   
	"Every weekend BONUS XP and SKILLS",   
		
}

    Game.broadcastMessage(messages[math.random(#messages)], MESSAGE_INFO_DESCR) 
    return true
end

autoBroadcast:interval(25 * 60 * 1000)
autoBroadcast:register()