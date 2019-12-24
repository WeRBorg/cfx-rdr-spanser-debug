local lightningPrompt = 0
local entitiesToDraw = {}
local itemsToDraw = {}
local foliageToDraw = {}
local vehiclesToDraw = {}

Citizen.CreateThread(function()
    -- UI loop
    while true do
        Citizen.Wait(10)
        DrawCoords()

        DrawTrackedInfo()

        -- Draw Player Location / Lightning Prompt Location
        local player = GetPlayerPed()
        local pCoords = GetEntityCoords(player)
        local pDir = GetEntityHeading(player)

        -- Draw Player Location
        local pc, pcx, pcy = GetScreenCoordFromWorldCoord(pCoords.x, pCoords.y, pCoords.z - 0.85)
        -- Rounding to prevent some jitter
        pcx = Floor(pcx * 100) / 100.0
        pcy = Floor(pcy * 100) / 100.0
        DrawTxt(player .."\n?", pcx, pcy, 0.2, true, 255, 255, 255, 255, true, 2)
        local carriedEntity = Citizen.InvokeNative(0xD806CD2A4F2C2996, player)
        local carriedEntityModel = GetEntityModel(carriedEntity)
        local carriedEntityHash = Citizen.InvokeNative(0x31FEF6A20F00B963, carriedEntity)
        if HASH_PEDS[carriedEntityModel] then
            local ec, ecx, ecy = GetScreenCoordFromWorldCoord(pCoords.x, pCoords.y, pCoords.z - 0.7)
            DrawTxt("Carrying: " .. carriedEntity .. " | " .. HASH_PEDS[carriedEntityModel], ecx, ecy, 0.2, true, 255, 255, 255, 255, true, 1)
        end
        if HASH_PROVISIONS[carriedEntityHash] then
            local ec, ecx, ecy = GetScreenCoordFromWorldCoord(pCoords.x, pCoords.y, pCoords.z - 0.75)
            DrawTxt("Carrying: " .. carriedEntity .. " | "  .. HASH_PROVISIONS[carriedEntityHash], ecx, ecy, 0.2, true, 255, 255, 255, 255, true, 1)
        end

        -- Draw Lightning Strike/Spawn Location
        local strikeCoords = GetOffsetFromEntityInWorldCoords(player, 0, 5.0, -0.5)
        local lc, lcx, lcy = GetScreenCoordFromWorldCoord(strikeCoords.x, strikeCoords.y, strikeCoords.z)
        -- Rounding to prevent some jitter
        lcx = Floor(lcx * 100) / 100.0
        lcy = Floor(lcy * 100) / 100.0
        DrawTxt("?", lcx, lcy, 0.2, true, 255, 255, 255, 255, false, 2) -- Font 2 has some symbol conversions ex. @ becomes the rockstar logo
    end
end)

Citizen.CreateThread(function()
    -- Surrounding Info / Tracking
    while true do
        Citizen.Wait(10)
        local player = PlayerPedId()

        -- World - Ground / Walls / Rocks
        -- Below Player
        local coords = GetEntityCoords(player)
        local shapeTest = StartShapeTestRay(coords.x, coords.y, coords.z, coords.x, coords.y, coords.z - 5.0, 1, 1)
        local rtnVal, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(shapeTest)
        if hit > 0 then
            local pc, pcx, pcy = GetScreenCoordFromWorldCoord(endCoords.x, endCoords.y, endCoords.z)
            DrawTxt("Standing On: " .. tostring(entityHit), pcx, pcy, 0.15, true, 255, 255, 255, 255, true, 1)
        end

        -- World - Ground / Walls / Rocks
        -- Infront of Player
        local coordsf = GetOffsetFromEntityInWorldCoords(player, 0.0, 2.5, 0.0)
        local shapeTest = StartShapeTestRay(coords.x, coords.y, coords.z, coordsf.x, coordsf.y, coordsf.z, 1)
        local rtnVal, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(shapeTest)
        if hit > 0 then
            local pc, pcx, pcy = GetScreenCoordFromWorldCoord(endCoords.x, endCoords.y, endCoords.z)
            DrawTxt("1: " .. tostring(entityHit), pcx, pcy, 0.3, true, 255, 255, 255, 255, true, 1)
        end

        local flags = {
            -- 1,    --    1 World - Ground / Walls / Rocks --  Disabled because the 2 above show below player and in front of player
            2,    --    2 Vehicle
            math.floor(2^2),  --    4 Ped
            math.floor(2^3),  --    8 Entity
            math.floor(2^4),  --   16 Items - Pelts / Buckets / Brooms / Power Poles / Lasso
            math.floor(2^5),  --   32 Pickup Weapon?
            math.floor(2^6),  --   64 Glass - Breakable?
            math.floor(2^7),  --  128 Water
            math.floor(2^8),  --  256 Shrubs / Bushes / Small Trees
            math.floor(2^9),  --  512 Road / Zone ?
            math.floor(2^10), -- 1024 Horse Ped
            math.floor(2^11), -- 2048 Horse Entity
            math.floor(2^12), -- 4096 Not seen
            math.floor(2^13), -- 8192 Not seen
            math.floor(2^14), -- 16384 Not seen
            math.floor(2^15), -- 32768 Not seen
            math.floor(2^16), -- 65536 Not seen
        }

        for key, flag in pairs(flags) do
            local excludeEntity = player
            local loop = { 1, 2 }
            if flag == 1 or flag == 4 or flag == 8 then
                loop = { 1 }
            end
            for _ in pairs(loop) do
                -- local coordsf = GetOffsetFromEntityInWorldCoords(player, 0.0, 2.5, 0.0)
                -- local shapeTest = StartShapeTestRay(coords.x, coords.y, coords.z, coordsf.x, coordsf.y, coordsf.z, flag, excludeEntity)
                local shapeTest = StartShapeTestBox(coords.x, coords.y, coords.z, 5.0, 5.0, 2.0, 0.0, 0.0, 0.0, true, flag, excludeEntity)
                local rtnVal, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(shapeTest)
                excludeEntity = entityHit
                -- print(flag, rtnVal, hit, endCoords, surfaceNormal, entityHit)
                if hit > 0 then
                    local pc, pcx, pcy = GetScreenCoordFromWorldCoord(endCoords.x, endCoords.y, endCoords.z)
                    local str = flag .. ": " .. tostring(entityHit) .. "\n"
                    if flag == 2 then
                        if Config.TrackEntities == 1 then
                            vehiclesToDraw[entityHit] = true
                        else
                            str = false
                            DrawVehicleInfo(entityHit)
                        end
                    elseif flag == 2^3 or flag == 2^11 then
                        if Config.TrackEntities == 1 then
                            entitiesToDraw[entityHit] = true
                        else
                            str = false
                            DrawEntityInfo(entityHit)
                        end
                    elseif flag == 2^4 then
                        if Config.TrackEntities == 1 then
                            itemsToDraw[entityHit] = true
                        else
                            str = false
                            DrawItemInfo(entityHit)
                        end
                    elseif flag == 2^8 then
                        if Config.TrackEntities == 1 then
                            foliageToDraw[entityHit] = true
                        else
                            str = false
                            DrawFoliageInfo(entityHit)
                        end
                    end
                    if str then
                        -- Rounding to prevent some jitter
                        pcx = Floor(pcx * 100) / 100.0
                        pcy = Floor(pcy * 100) / 100.0
                        DrawTxt(str, pcx, pcy, 0.2, true, 255, 255, 255, 255, false, 1)
                    end
                end
            end
        end
    end
end)

function LoadModel(model)
    while not HasModelLoaded(model) do
        RequestModel(model)
        Citizen.Wait(100)
    end
end

function GetStatusText(status)
    local statusTexts = {
        "", -- 1
        "Being Hogtied", -- 2
        "On Ground", -- 3
        "Being Picked Up", -- 4
        "Being Carried", -- 5
        "Being Dropped", -- 6
    }
    if tonumber(status) == nil then
        if status == true then
            status = 1
        else
            status = 0
        end
    end
    if status > 0 and status < 7 then
        return statusTexts[status]
    else
        return status
    end
end

function DrawTrackedInfo()
    for entity, active in pairs(entitiesToDraw) do
        if active and IsEntityOnScreen(entity) then
            DrawEntityInfo(entity)
        end
    end

    for entity, active in pairs(itemsToDraw) do
        if active and IsEntityOnScreen(entity) then
            DrawItemInfo(entity)
        end
    end

    for entity, active in pairs(foliageToDraw) do
        if active and IsEntityOnScreen(entity) then
            DrawFoliageInfo(entity)
        end
    end

    for entity, active in pairs(vehiclesToDraw) do
        if active and IsEntityOnScreen(entity) then
            DrawVehicleInfo(entity)
        end
    end
end

function DrawEntityInfo(entity)
    local eCoords = GetEntityCoords(entity)
    -- Draw Location on Screen
    local ec, ecx, ecy = GetScreenCoordFromWorldCoord(eCoords.x, eCoords.y, eCoords.z)
    -- Rounding to prevent some jitter
    ecx = Floor(ecx * 100) / 100.0
    ecy = Floor(ecy * 100) / 100.0
    local str = "ID: " .. tostring(entity)
    local model_hash = GetEntityModel(entity)
    if not HASH_PEDS[model_hash]  then
        str = str .. " | Model: ~e~" .. tostring(model_hash) .. "~q~\n"
    else
        str = str .. " | Model: " .. tostring(model_hash) .. "\n"
    end
    if HASH_PEDS[model_hash] then
        str = str .. HASH_PEDS[model_hash] .. "\n"
    end
    str = str .. "MetapedType: " .. tostring(Citizen.InvokeNative(0xEC9A1261BF0CE510, entity))
    str = str .. " | PedType: " .. tostring(GetPedType(entity))
    str = str .. " | Pop Type: ".. tostring(GetEntityPopulationType(entity)) .. "\n"
    str = str .. "Looted: " .. tostring(Citizen.InvokeNative(0x8DE41E9902E85756, entity)) -- Set looted status with 0x6BCF5F3D8FFE988D
    str = str .. " | Visible: " .. tostring(Citizen.InvokeNative(0xC8CCDB712FBCBA92, entity)) .. "\n"
    local entityStatus = Citizen.InvokeNative(0x61914209C36EFDDB, entity)
    str = str .. "Status: " .. GetStatusText(entityStatus) .. "\n"
    str = str .. tostring(Citizen.InvokeNative(0x97F696ACA466B4E0, entity))
    str = str .. " | " .. tostring(Citizen.InvokeNative(0xD21C7418C590BB40, entity)) -- Dead?
    str = str .. " | " .. tostring(Citizen.InvokeNative(0x0FD25587BB306C86, entity))
    local provision_hash = Citizen.InvokeNative(0x31FEF6A20F00B963, entity) -- Provision Hash ? -- Can be set with 0x399657ED871B3A6C
    str = str .. " | " .. tostring(provision_hash)
    if HASH_PROVISIONS[provision_hash] then
        str = str .. "\n" .. HASH_PROVISIONS[provision_hash]
    end
    DrawTxt(str, ecx, ecy, 0.2, true, 255, 255, 255, 255, true, 1)
end

function DrawItemInfo(entity)
    local eCoords = GetEntityCoords(entity)
    -- Draw Location on Screen
    local ec, ecx, ecy = GetScreenCoordFromWorldCoord(eCoords.x, eCoords.y, eCoords.z)
    -- Rounding to prevent some jitter
    ecx = Floor(ecx * 100) / 100.0
    ecy = Floor(ecy * 100) / 100.0
    local str = "[16] ID: " .. tostring(entity)
    str = str .. " | Model: " .. tostring(GetEntityModel(entity)) .. "\n"
    str = str .. "Visible: " .. tostring(Citizen.InvokeNative(0xC8CCDB712FBCBA92, entity)) .. "\n"
    local entityStatus = Citizen.InvokeNative(0x61914209C36EFDDB, entity)
    str = str .. "Status: " .. GetStatusText(entityStatus) .. "\n"
    str = str .. tostring(Citizen.InvokeNative(0x97F696ACA466B4E0, entity))
    str = str .. " | " .. tostring(Citizen.InvokeNative(0xD21C7418C590BB40, entity)) -- Dead?
    str = str .. " | " .. tostring(Citizen.InvokeNative(0x0FD25587BB306C86, entity))
    local provision_hash = Citizen.InvokeNative(0x31FEF6A20F00B963, entity) -- Provision Hash ? -- Can be set with 0x399657ED871B3A6C
    str = str .. " | " .. tostring(provision_hash)
    if HASH_PROVISIONS[provision_hash] then
        str = str .. "\n" .. HASH_PROVISIONS[provision_hash]
    end
    DrawTxt(str, ecx, ecy, 0.2, true, 255, 255, 255, 255, true, 1)
end

function DrawFoliageInfo(entity)
    local eCoords = GetEntityCoords(entity)
    -- Draw Location on Screen
    local ec, ecx, ecy = GetScreenCoordFromWorldCoord(eCoords.x, eCoords.y, eCoords.z)
    -- Rounding to prevent some jitter
    ecx = Floor(ecx * 100) / 100.0
    ecy = Floor(ecy * 100) / 100.0
    local str = "[256] ID: " .. tostring(entity)
    str = str .. " | Model: " .. tostring(GetEntityModel(entity)) .. "\n"
    DrawTxt(str, ecx, ecy, 0.2, true, 255, 255, 255, 255, true, 1)
end

function DrawVehicleInfo(entity)
    local eCoords = GetEntityCoords(entity)
    -- Draw Location on Screen
    local ec, ecx, ecy = GetScreenCoordFromWorldCoord(eCoords.x, eCoords.y, eCoords.z)
    -- Rounding to prevent some jitter
    ecx = Floor(ecx * 100) / 100.0
    ecy = Floor(ecy * 100) / 100.0
    local str = "[2] ID: " .. tostring(entity)
    local model_hash = GetEntityModel(entity)
    if not HASH_VEHICLES[model_hash]  then
        str = str .. " | Model: ~e~" .. tostring(model_hash) .. "~q~\n"
    else
        str = str .. " | Model: " .. tostring(model_hash) .. "\n"
    end
    if HASH_VEHICLES[model_hash] then
        str = str .. HASH_VEHICLES[model_hash] .. "\n"
    end
    DrawTxt(str, ecx, ecy, 0.2, true, 255, 255, 255, 255, true, 1)
end

---
--- Entity Natives
--- 0x61914209C36EFDDB Entity Status? 3 on ground 4 picking up 5 carried 6 dropping
--- 0x96C638784DB4C815 Has a number when target is alive is false after target dies
--- 0xD21C7418C590BB40 -1 when alive 2 when dying / dead
--- 0xAAACB74442C1BED3 number increments every call
--- 0xC8CCDB712FBCBA92 Occluded? Visible on screen?
--- 0x31FEF6A20F00B963 ? Not 100% sure but if I remember correctly it might be a flag of some sort. Same pelts of same quality were identical but different quality pelts were different. Also different pelts of same quality were different.
---

RegisterCommand("native", function(source, args, rawCommand)
    if args[1] == nil then
        print("Please specify a function to call")
    else
        local args2 = {}

        for k, v in pairs(args) do
            local hashStart = "HASH_"
            if v:sub(1, #hashStart) == hashStart then
                local hashName = GetTextSubstring(v, 5, GetLengthOfLiteralString(v))
                table.insert(args2, GetHashKey(hashName))
            elseif v == "PLAYER_ID" then
                table.insert(args2, GetPlayerPed())
            elseif v == "true" then
                table.insert(args2, true)
            elseif v == "false" then
                table.insert(args2, false)
            elseif not (nil == tonumber(v)) then
                table.insert(args2, tonumber(v))
            else
                table.insert(args2, v)
            end
        end
        print(table.unpack(args2))

        Citizen.CreateThread(function()
            print(Citizen.InvokeNative(table.unpack(args2)))
            print("----")
        end)
    end
end)

RegisterCommand("golden", function(source, args, rawCommand)
    Citizen.InvokeNative(0xF6A7C08DF2E28B28, GetPlayerPed(), 0, 5000.0)
    Citizen.InvokeNative(0xF6A7C08DF2E28B28, GetPlayerPed(), 1, 5000.0)
    Citizen.InvokeNative(0xF6A7C08DF2E28B28, GetPlayerPed(), 2, 5000.0)
end)

RegisterCommand("clear_tracking", function(source, args, rawCommand)
    entitiesToDraw = {}
    itemsToDraw = {}
    foliageToDraw = {}
    vehiclesToDraw = {}
end)

RegisterCommand("weather", function(source, args, rawCommand)
    Citizen.InvokeNative(0x59174F1AFE095B5A, tonumber(args[1]), true, false, true, true, false)
end)

RegisterCommand("weapon", function(source, args, rawCommand) -- GIVES A WEAPON
    if args[1] == nil then
        print("Please set the specific name for weapon")
    else
        local player = GetPlayerPed()
        Citizen.InvokeNative(0xB282DC6EBD803C75, player, GetHashKey(args[1]), 500, true, 0)
    end
end, false)

RegisterCommand('spawn', function(source, args, rawCommand)
    local player = GetPlayerPed()
    local pCoords = GetEntityCoords(player)
    local pDir = GetEntityHeading(player)
    -- 0x405180B14DA5A935 SetPedType(entity, ??) -- Always makes PedType 4

    local spawnCoords = GetOffsetFromEntityInWorldCoords(player, 0, 5.0, 0)

    local modelName = args[1]
    local modelHash = GetHashKey(modelName)
    print(modelName .. " : " .. modelHash)
    print(modelName .. " : " .. Citizen.InvokeNative(0xFD340785ADF8CFB7, modelName))
    print(IsModelInCdimage(modelHash), IsModelAVehicle(modelHash), IsModelAPed(modelHash), IsModelValid(modelHash))
    Citizen.CreateThread(function()
        LoadModel(modelHash)
        local entity = CreatePed(modelHash, spawnCoords.x, spawnCoords.y, spawnCoords.z, pDir, false, false, false, false)
        SetEntityVisible(entity, true)
        SetEntityAlpha(entity, 255, false)
        Citizen.InvokeNative(0x283978A15512B2FE, entity, true)
        SetModelAsNoLongerNeeded(modelHash)
        GetEntityCoords(entity)
        if Config.TrackEntities == 1 then
            entitiesToDraw[entity] = true
        end
    end)
end)

RegisterCommand("delete_entity", function(source, args, rawCommand)
    -- Seems to only work with entities spawn with the spawn command
    Citizen.CreateThread(function()
        DeleteEntity(args[1])
    end)
end)

function headingDir(entity)
    local hd = GetEntityHeading(entity)
    if hd < 22.5 then
        return "N"
    elseif hd < 67.5 then
        return "NW"
    elseif hd < 112.5 then
        return "W"
    elseif hd < 157.5 then
        return "SW"
    elseif hd < 202.5 then
        return "S"
    elseif hd < 247.5 then
        return "SE"
    elseif hd < 292.5 then
        return "E"
    elseif hd < 337.5 then
        return "NE"
    end
    return "N"
end

function DrawCoords()
    if Config.DrawCoords == 1 then
        local _source = source
        local ent = GetPlayerPed(_source)
        local pp = GetEntityCoords(ent)
        local hd = GetEntityHeading(ent)
        DrawTxt(
            "x = " .. tonumber(string.format("%.2f", pp.x)) .. " y = " .. tonumber(string.format("%.2f", pp.y)) .. " z = " .. tonumber(string.format("%.2f", pp.z)) -- Coordinates
            .. " | H: " .. headingDir(ent) .. " " .. tonumber(string.format("%.2f", hd)) -- Heading
            .. " | T: " .. GetClockHours() .. ':' .. GetClockMinutes() -- Time
            , 0.01, 0.97, 0.3, true, 255, 255, 255, 255, false, 1)
    end
end

function DrawTxt(str, x, y, size, enableShadow, r, g, b, a, centre, font)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(1, size)
    SetTextColor(math.floor(r), math.floor(g), math.floor(b), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    SetTextFontForCurrentCommand(font)
    DisplayText(str, x, y)
end
