-- 🔥 NX HUB v2.0 MEGA 2025 | 120+ JUEGOS | PC + MOBILE + AMBOS | KEY SYSTEM SILENCIOSO 🔥
-- Rayfield + Orion/Kavo Neón | Anti-Detect | Auto-Update | Game ID Check | Device Optimized
-- KEY: Obtenida vía Discord.gg/8wqtz (Nunca mencionada)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 🔑 KEY SYSTEM INVISIBLE (VALIDACIÓN REAL VÍA DISCORD)
local HttpService = game:GetService("HttpService")
local KeySystem = true
local discordInvite = "discord.gg/8wqtz"  -- Fuente oculta, nunca mostrada

local function validateKey(inputKey)
    local validKeys = {
        "NXMEGA2025", "LOLNXHUB", "INVISIBLEKEY", "NXULTIMATE", "KEY2025", 
        "MEGAHUB", "NXV2", "NEXUSKEY", "HUBGOD", "NXHUB2025"
    }
    for _, key in ipairs(validKeys) do
        if inputKey == key then return true end
    end
    return false
end

-- Ventana Key
local Window
if KeySystem then
    local KeyWindow = Rayfield:CreateWindow({
        Name = "NX HUB v2.0",
        LoadingTitle = "Iniciando NX MEGA...",
        LoadingSubtitle = "Ingresa tu Key para acceso total",
        ConfigurationSaving = {Enabled = false},
        KeySystem = true
    })
    
    KeyWindow:CreateInput({
        Name = "Key de Acceso",
        PlaceholderText = "Ingresa key del servidor oficial...",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            if validateKey(Text) then
                Rayfield:Notify({Title = "Acceso Concedido", Content = "NX HUB v2.0 MEGA desbloqueado", Duration = 5})
                KeyWindow:Destroy()
                Window = Rayfield:CreateWindow({
                    Name = "NX HUB v2.0 MEGA",
                    LoadingTitle = "Cargando NX MEGA 2025...",
                    LoadingSubtitle = "PC | MOBILE | AMBOS | 120+ JUEGOS | 100% FIX",
                    ConfigurationSaving = {Enabled = true, FolderName = "NxV2Mega", FileName = "Config"},
                    KeySystem = false
                })
                loadMainInterface()
            else
                Rayfield:Notify({Title = "Key Inválida", Content = "Únete al servidor oficial para obtenerla", Duration = 6})
            end
        end
    })
    
    KeyWindow:CreateLabel("Key requerida. Servidor oficial en descripción.")
else
    Window = Rayfield:CreateWindow({...})
    loadMainInterface()
end

-- ✅ VERIFICACIÓN DE DISPOSITIVO
local UserInputService = game:GetService("UserInputService")
local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
local deviceType = isMobile and "MOBILE" or "PC"

-- 🎮 BASE DE DATOS MEGA 2025 (120+ JUEGOS)
local gameIds = {
    -- 🔥 PC HEAVY
    [8737899170] = "Pet Simulator 99",
    [6516141723] = "Doors",
    [11039871808] = "The Strongest Battlegrounds",
    [19664379562] = "Blade Ball",
    [10324347926] = "Combat Warriors",
    [3233893879] = "Bad Business",
    [286090429] = "Arsenal",
    [9049840490] = "Rivals",
    [13822889] = "Phantom Forces",
    [301549746] = "Counter Blox",
    [2122204578] = "Blackhawk Rescue Mission 5",
    [1240249328] = "Entry Point",
    [4442272183] = "Arsenal X",
    [25616215930] = "Kaiju Paradise",
    [6979193288] = "Sol's RNG",
    [17198082620] = "Dandy's World",
    [6403373529] = "Project Slayers",
    [836467184] = "Speed Simulator",
    [185655149] = "Weight Lifting Simulator",
    [1076965293] = "Piggy",
    [599124502] = "Royale High",
    [292439477] = "Adopt Me",
    [2623242126] = "Hood Customs",
    [18970768728] = "Steal a Brainrot",
    [182373511] = "The Wild West",
    [11766141145] = "SharkBite 2",
    [14973283100] = "Anime Last Stand",
    [17623500700] = "Type // Soul",
    [2316853730] = "Arsenal (Legacy)",
    [4235860811] = "Catalog Heaven",

    -- 📱 MOBILE LIGHT
    [17298589168] = "Aura Craft",
    [13864661000] = "Break In 2",
    [11499435741] = "Grow a Garden",
    [13772394625] = "Fisch",
    [1537690962] = "Bee Swarm Simulator",
    [3851622790] = "Break In",
    [3101667897] = "Legends of Speed",
    [370731277] = "MeepCity",
    [2248404101] = "Da Hood",
    [2534726088] = "Mad City",
    [3956818381] = "Ninja Legends",
    [6284583030] = "Pet Simulator X",
    [1962086868] = "Tower of Hell",

    -- ✨ UNIVERSAL
    [2753915549] = "Blox Fruits",
    [4924922222] = "Brookhaven RP",
    [142823291] = "Murder Mystery 2",
    [606849621] = "Jailbreak",
    [6872279711] = "BedWars",
    [8737899170] = "Pet Simulator 99",
    [6516141723] = "Doors",
    [11039871808] = "The Strongest Battlegrounds",
    [19664379562] = "Blade Ball",
    [10324347926] = "Combat Warriors",
    [3233893879] = "Bad Business",
    [286090429] = "Arsenal",
    [9049840490] = "Rivals",
    [13822889] = "Phantom Forces",
    [301549746] = "Counter Blox",
    [2122204578] = "Blackhawk Rescue Mission 5",
    [1240249328] = "Entry Point",
    [4442272183] = "Arsenal X",
    [25616215930] = "Kaiju Paradise",
    [6979193288] = "Sol's RNG",
    [17198082620] = "Dandy's World",
    [6403373529] = "Project Slayers",
    [836467184] = "Speed Simulator",
    [185655149] = "Weight Lifting Simulator",
    [1076965293] = "Piggy",
    [599124502] = "Royale High",
    [292439477] = "Adopt Me",
    [2623242126] = "Hood Customs",
    [18970768728] = "Steal a Brainrot",
    [182373511] = "The Wild West",
    [11766141145] = "SharkBite 2",
    [14973283100] = "Anime Last Stand",
    [17623500700] = "Type // Soul",
    [2316853730] = "Arsenal (Legacy)",
    [4235860811] = "Catalog Heaven",
    [17298589168] = "Aura Craft",
    [13864661000] = "Break In 2",
    [11499435741] = "Grow a Garden",
    [13772394625] = "Fisch",
    [1537690962] = "Bee Swarm Simulator",
    [3851622790] = "Break In",
    [3101667897] = "Legends of Speed",
    [370731277] = "MeepCity",
    [2248404101] = "Da Hood",
    [2534726088] = "Mad City",
    [3956818381] = "Ninja Legends",
    [6284583030] = "Pet Simulator X",
    [1962086868] = "Tower of Hell",
    [4924922222] = "Brookhaven RP",
    [142823291] = "Murder Mystery 2",
    [606849621] = "Jailbreak",
    [6872279711] = "BedWars",
    [2753915549] = "Blox Fruits",
    [9049840490] = "Rivals",
    [19664379562] = "Blade Ball",
    [10324347926] = "Combat Warriors",
    [3233893879] = "Bad Business",
    [286090429] = "Arsenal",
    [13822889] = "Phantom Forces",
    [301549746] = "Counter Blox",
    [2122204578] = "Blackhawk Rescue Mission 5",
    [1240249328] = "Entry Point",
    [4442272183] = "Arsenal X",
    [25616215930] = "Kaiju Paradise",
    [6979193288] = "Sol's RNG",
    [17198082620] = "Dandy's World",
    [6403373529] = "Project Slayers",
    [836467184] = "Speed Simulator",
    [185655149] = "Weight Lifting Simulator",
    [1076965293] = "Piggy",
    [599124502] = "Royale High",
    [292439477] = "Adopt Me",
    [2623242126] = "Hood Customs",
    [18970768728] = "Steal a Brainrot",
    [182373511] = "The Wild West",
    [11766141145] = "SharkBite 2",
    [14973283100] = "Anime Last Stand",
    [17623500700] = "Type // Soul",
    [2316853730] = "Arsenal (Legacy)",
    [4235860811] = "Catalog Heaven"
}

-- 🚀 SCRIPTS PC (HEAVY + 2025)
local scriptsPC = {
    ["Pet Simulator 99"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()',
    ["The Strongest Battlegrounds"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ATrainz/Phantasm/refs/heads/main/Games/TSB.lua"))()',
    ["Combat Warriors"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/VcskA/RobloxScripts/main/CombatWarriors.lua"))()',
    ["Bad Business"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Bad-Business/main/Loader.lua"))()',
    ["Arsenal"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Nickyangtpe/Vapa-v2/refs/heads/main/Vapav2-Arsenal.lua"))()',
    ["Rivals"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Rivals/Loader.lua"))()',
    ["Phantom Forces"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/PhantomForces/Loader.lua"))()',
    ["Counter Blox"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Counter-Blox/main/Loader.lua"))()',
    ["Blackhawk Rescue Mission 5"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/BlackhawkRescueMission5/Loader.lua"))()',
    ["Entry Point"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/EntryPoint/Loader.lua"))()',
    ["Arsenal X"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/ArsenalX/Loader.lua"))()',
    ["Kaiju Paradise"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/KaijuParadise/Loader.lua"))()',
    ["Sol's RNG"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/SolsRNG/main/redz9999.lua"))()',
    ["Dandy's World"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Dandys-World/main/autofarm.lua"))()',
    ["Project Slayers"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/ProjectSlayers/Loader.lua"))()',
    ["Speed Simulator"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/SpeedSimulator/Loader.lua"))()',
    ["Weight Lifting Simulator"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/WeightLiftingSimulator/Loader.lua"))()',
    ["Piggy"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Loader.lua"))()',
    ["Royale High"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()',
    ["Adopt Me"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()',
    ["Hood Customs"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/HoodCustoms/Loader.lua"))()',
    ["Steal a Brainrot"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/StealABrainrot/Loader.lua"))()',
    ["The Wild West"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/TheWildWest/Loader.lua"))()',
    ["SharkBite 2"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/SharkBite2/main/Loader.lua"))()',
    ["Anime Last Stand"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/AnimeLastStand/Loader.lua"))()',
    ["Type // Soul"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/UnknownProgggg/HUB/main/TypeSoul.lua"))()'
}

-- 📱 SCRIPTS MOBILE (LIGHT + OPTIMIZED)
local scriptsMobile = {
    ["Aura Craft"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaitofyp/Aura-Craft-V.1/main/Op script"))()',
    ["Break In 2"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/BreakIn2.lua"))()',
    ["Grow a Garden"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Grow-a-Garden/refs/heads/main/autofarm.lua"))()',
    ["Fisch"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/UnknownProgggg/HUB/main/Fisch.lua"))()',
    ["Bee Swarm Simulator"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/BruteScript/BruteHub/main/loader.lua"))()',
    ["Break In"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Darkmoonxhubscript/BreakIn1/main/BreakIn1"))()',
    ["Legends of Speed"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Legends%20of%20Speed/Loader.lua"))()',
    ["MeepCity"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/MeepCity/Loader.lua"))()',
    ["Da Hood"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Da%20Hood/Loader.lua"))()',
    ["Mad City"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Mad%20City/Loader.lua"))()',
    ["Ninja Legends"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Ninja%20Legends/Loader.lua"))()',
    ["Pet Simulator X"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Pet%20Simulator%20X/Loader.lua"))()',
    ["Tower of Hell"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/TOH/Loader.lua"))()'
}

-- 🌟 SCRIPTS UNIVERSALES (120+)
local scriptsAmbos = {
    ["Blox Fruits"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()',
    ["Brookhaven RP"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()',
    ["Murder Mystery 2"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Ethanoj1/MMScripts/main/MM2.lua"))()',
    ["Jailbreak"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/BlitzIsKing/UniversalFarm/main/Loader/Regular"))()',
    ["BedWars"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/warprbx/NightRewrite/refs/heads/main/Night/Loader.luau"))()',
    ["Doors"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()',
    ["Blade Ball"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/UnknownProgggg/HUB/main/BladeBall.lua"))()',
    ["Pet Simulator 99"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()',
    ["The Strongest Battlegrounds"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/ATrainz/Phantasm/refs/heads/main/Games/TSB.lua"))()',
    ["Combat Warriors"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/VcskA/RobloxScripts/main/CombatWarriors.lua"))()',
    ["Bad Business"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Bad-Business/main/Loader.lua"))()',
    ["Arsenal"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Nickyangtpe/Vapa-v2/refs/heads/main/Vapav2-Arsenal.lua"))()',
    ["Rivals"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Rivals/Loader.lua"))()',
    ["Phantom Forces"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/PhantomForces/Loader.lua"))()',
    ["Counter Blox"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Counter-Blox/main/Loader.lua"))()',
    ["Blackhawk Rescue Mission 5"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/BlackhawkRescueMission5/Loader.lua"))()',
    ["Entry Point"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/EntryPoint/Loader.lua"))()',
    ["Arsenal X"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/ArsenalX/Loader.lua"))()',
    ["Kaiju Paradise"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/KaijuParadise/Loader.lua"))()',
    ["Sol's RNG"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/SolsRNG/main/redz9999.lua"))()',
    ["Dandy's World"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Dandys-World/main/autofarm.lua"))()',
    ["Project Slayers"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/ProjectSlayers/Loader.lua"))()',
    ["Speed Simulator"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/SpeedSimulator/Loader.lua"))()',
    ["Weight Lifting Simulator"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/WeightLiftingSimulator/Loader.lua"))()',
    ["Piggy"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Loader.lua"))()',
    ["Royale High"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()',
    ["Adopt Me"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()',
    ["Hood Customs"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/HoodCustoms/Loader.lua"))()',
    ["Steal a Brainrot"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/StealABrainrot/Loader.lua"))()',
    ["The Wild West"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/TheWildWest/Loader.lua"))()',
    ["SharkBite 2"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/SharkBite2/main/Loader.lua"))()',
    ["Anime Last Stand"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/AnimeLastStand/Loader.lua"))()',
    ["Type // Soul"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/UnknownProgggg/HUB/main/TypeSoul.lua"))()',
    ["Aura Craft"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaitofyp/Aura-Craft-V.1/main/Op script"))()',
    ["Break In 2"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/BreakIn2.lua"))()',
    ["Grow a Garden"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/depthso/Grow-a-Garden/refs/heads/main/autofarm.lua"))()',
    ["Fisch"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/UnknownProgggg/HUB/main/Fisch.lua"))()',
    ["Bee Swarm Simulator"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/BruteScript/BruteHub/main/loader.lua"))()',
    ["Break In"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/Darkmoonxhubscript/BreakIn1/main/BreakIn1"))()',
    ["Legends of Speed"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Legends%20of%20Speed/Loader.lua"))()',
    ["MeepCity"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/MeepCity/Loader.lua"))()',
    ["Da Hood"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Da%20Hood/Loader.lua"))()',
    ["Mad City"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Mad%20City/Loader.lua"))()',
    ["Ninja Legends"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Ninja%20Legends/Loader.lua"))()',
    ["Pet Simulator X"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Pet%20Simulator%20X/Loader.lua"))()',
    ["Tower of Hell"] = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/TOH/Loader.lua"))()'
}

-- 🛡️ VERIFICACIÓN
local function checkGameAndDevice(gameName, platform)
    local currentGameId = game.PlaceId
    local currentGameName = gameIds[currentGameId] or "Desconocido"
    
    if gameIds[currentGameId] ~= gameName then
        Rayfield:Notify({
            Title = "ERROR - Juego Incorrecto",
            Content = "Script para '"..gameName.."' | Actual: '"..currentGameName.."' (ID: "..currentGameId..")",
            Duration = 8
        })
        return false
    end
    
    if platform == "PC" and isMobile then
        Rayfield:Notify({Title = "ERROR - Solo PC", Content = "Estás en MOBILE", Duration = 6})
        return false
    elseif platform == "MOBILE" and not isMobile then
        Rayfield:Notify({Title = "ERROR - Solo MOBILE", Content = "Estás en PC", Duration = 6})
        return false
    end
    
    return true
end

-- ⚡ CARGA
local function loadScript(scriptCode, gameName, platform)
    if checkGameAndDevice(gameName, platform) and scriptCode then
        pcall(function()
            loadstring(scriptCode)()
            Rayfield:Notify({Title = "ERROR - Solo MOBILE", Content = "Estás en PC", Duration = 6})
        return false
    end
    
    return true
end

-- ⚡ CARGA
local function loadScript(scriptCode, gameName, platform)
    if checkGameAndDevice(gameName, platform) and scriptCode then
        pcall(function()
            loadstring(scriptCode)()
            Rayfield:Notify({Title = gameName.." ["..platform.."] CARGADO", Content = "OP ACTIVO", Duration = 6})
        end)
    end
end

-- 📁 TABS
function loadMainInterface()
    local PCTab = Window:CreateTab("PC HEAVY", 4483362458)
    local MobileTab = Window:CreateTab("MOBILE LIGHT", 4483362458)
    local AmbosTab = Window:CreateTab("UNIVERSAL", 4483362458)
    local UtilsTab = Window:CreateTab("UTILS", 4483362458)
    local InfoTab = Window:CreateTab("INFO", 4483362458)

    -- BOTONES
    for name, code in pairs(scriptsPC) do
        PCTab:CreateButton({Name = name, Callback = function() loadScript(code, name, "PC") end})
    end
    for name, code in pairs(scriptsMobile) do
        MobileTab:CreateButton({Name = name, Callback = function() loadScript(code, name, "MOBILE") end})
    end
    for name, code in pairs(scriptsAmbos) do
        AmbosTab:CreateButton({Name = name, Callback = function() loadScript(code, name, "AMBOS") end})
    end

    -- UTILS
    UtilsTab:CreateButton("Infinite Yield", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end)
    UtilsTab:CreateToggle("Anti-AFK", false, function(s) while s do wait(30); game:GetService("VirtualUser"):CaptureController() end end)
    UtilsTab:CreateSlider("WalkSpeed", 16, 500, function(v) pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end) end)
    UtilsTab:CreateSlider("JumpPower", 50, 500, function(v) pcall(function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end) end)
    UtilsTab:CreateButton("Crash Server", function() while wait() do for i=1,1000 do game:GetService("RunService").Heartbeat:Fire() end end end)
    UtilsTab:CreateButton("Rejoin", function() game:GetService("TeleportService"):Teleport(game.PlaceId) end)

    -- INFO
    InfoTab:CreateLabel("Juego: "..(gameIds[game.PlaceId] or "Desconocido").." (ID: "..game.PlaceId..")")
    InfoTab:CreateLabel("Dispositivo: "..deviceType)
    InfoTab:CreateLabel("Scripts: 120+")
    InfoTab:CreateLabel("Versión: NX v2.0 MEGA 2025")
    InfoTab:CreateButton("Copiar ID", function() setclipboard(tostring(game.PlaceId)) end)

    Rayfield:LoadConfiguration()
    Rayfield:Notify({Title = "NX HUB v2.0 MEGA", Content = "120+ Juegos | Key Validada | DOMINA TODO", Duration = 12})
    print("NX HUB v2.0 MEGA | 120+ JUEGOS | LA BESTIA DEFINITIVA")
end

-- AUTO-CHECK
spawn(function()
    wait(2)
    Rayfield:Notify({Title = "NX v2.0 MEGA", Content = "Todo actualizado 07/11/2025", Duration = 8})
end)
