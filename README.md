**IT WORKS WITH EVERY FRAMEWORK**
# Tiny Description
That script, like her name says, it's a notify system for your server. Not so simple only with text, it cames with an icon included for every notify type.
It's all free to use. I need to say thank you for [mythic_notify](https://github.com/JayMontana36/mythic_notify) developer, because i use that script to make my own one.

# Commands/Exports
**Client-Side**
exports['slayn_notify']:DoHudText(type, text)
exports['slayn_notify']:DoShortHudText(type, text)
exports['slayn_notify']:DoLongHudText(type, text)
exports['slayn_notify']:PersistentHudText(action, id, type, text, style)
*Action Only Have 2 Options:* **START** *or* **END**
*ID it's eveything you want to specify the event*

**Server-Side**
TriggerClientEvent('slayn_notify:client:SendAlert', source, {type = type, text = text})
