local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("cl_acidtrip:client:supermario")
AddEventHandler("cl_acidtrip:client:supermario", function()
    QBCore.Functions.Progressbar("snort_coke", "Quick sniff..", math.random(1000, 1500), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "switch@trevor@trev_smoking_meth",
        anim = "trev_smoking_meth_loop",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        TriggerServerEvent("QBCore:Server:RemoveItem", "lsd", 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lsd"], "remove")
        exports["acidtrip"]:DoAcid(120000)
    end, function() -- Cancel
        StopAnimTask(PlayerPedId(), "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", 1.0)
        QBCore.Functions.Notify("Canceled..", "error")
    end)
end)