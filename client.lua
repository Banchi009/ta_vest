ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('Weste:ta_vest')
AddEventHandler('Weste:ta_vest', function()

    local playerPed = PlayerPedId()
    local lib = 'clothingtie'
    local anim = 'try_tie_neutral_a'
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayerAnim(playerPed, lib, anim, 8.0, 1.0, -1, 49, 0, false, false, false)
        RemoveAnimDict(lib)
    end)
    Citizen.Wait(1000)
    ClearPedTasks(playerPed)

    SetPedArmour(playerPed, 100) -- here
    TriggerEvent('skinchanger:change', 'bproof_1', 15)

end)