local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Functions.CreateUseableItem("lsd", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("cl_acidtrip:client:supermario", source, true)   
    end
end)