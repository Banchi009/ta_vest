ESX = nil
TriggerEvent('esxgetSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('ta_vest', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('ta_vest', 1)
    TriggerClientEvent('Weste:ta_vest', source)

end)