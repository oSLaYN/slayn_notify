RegisterNetEvent('slayn_notify:client:SendAlert')
AddEventHandler('slayn_notify:client:SendAlert', function(data)
	DoCustomHudText(data.type, data.text, data.length, data.style)
end)

RegisterNetEvent('slayn_notify:client:PersistentHudText')
AddEventHandler('slayn_notify:client:PersistentHudText', function(data)
	PersistentHudText(data.action, data.id, data.type, data.text, data.style)
end)

function DoShortHudText(type, text, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = 1000,
		style = style
	})
end

function DoHudText(type, text, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = 2500,
		style = style
	})
end

function DoLongHudText(type, text, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = 5000,
		style = style
	})
end

function DoCustomHudText(type, text, length, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = length,
		style = style
	})
end

function PersistentHudText(action, id, type, text, style)
	if action:upper() == 'START' then
		SendNUIMessage({
			persist = action,
			id = id,
			type = type,
			text = text,
			style = style
		})
	elseif action:upper() == 'END' then
		SendNUIMessage({
			persist = action,
			id = id
		})
	end
end

RegisterCommand('notify', function(source, args)
	exports['slayn_notify']:DoHudText('success', 'Sucesso.')
	exports['slayn_notify']:DoHudText('payment', 'Pagamento.')
	exports['slayn_notify']:DoHudText('error', 'Erro.')
	exports['slayn_notify']:DoHudText('inform', 'Informação.')
	exports['slayn_notify']:DoHudText('warning', 'Aviso.')
	exports['slayn_notify']:DoHudText('billing', 'Fatura.')
end)