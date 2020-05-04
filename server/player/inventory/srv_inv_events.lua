

RegisterNetEvent("rF:GetPlayerInventory")
AddEventHandler("rF:GetPlayerInventory", function()
    local inv = GetInventoryFromCache(source)
    TriggerClientEvent("rF:SendPlayerInventory", source, inv)
end)


RegisterNetEvent("rF:GetOtherPlayerInventory")
AddEventHandler("rF:GetOtherPlayerInventory", function(target)
    local inv = GetInventoryFromCache(target)
    TriggerClientEvent("rF:SendPlayerInventory", source, inv)
end)


RegisterNetEvent("rF:GiveItem")
AddEventHandler("rF:GiveItem", function(token, item, count, label)
    if CheckToken(token, source) then
        AddItemToPlayerInv(source, item, count, label)
    end
end)


RegisterNetEvent("rF:GiveItemToPlayer")
AddEventHandler("rF:GiveItemToPlayer", function(token, target, item, count, label)
    if CheckToken(token, source) then
        AddItemToPlayerInv(target, item, count, label)
    end
end)


RegisterNetEvent("rF:RemoveItem")
AddEventHandler("rF:RemoveItem", function(token, item, count, label)
    if CheckToken(token, source) then
        RemoveItemFromPlayerInv(source, item, count, label)
    end
end)


RegisterNetEvent("rF:RemoveItemToPlayer")
AddEventHandler("rF:RemoveItemToPlayer", function(token, target, item, count, label)
    if CheckToken(token, source) then
        RemoveItemFromPlayerInv(target, item, count, label)
    end
end)


RegisterNetEvent("rF:RenameItem")
AddEventHandler("rF:RenameItem", function(token, item, count, label)
    if CheckToken(token, source) then
        RenameItem(source, item, count, label)
    end
end)
