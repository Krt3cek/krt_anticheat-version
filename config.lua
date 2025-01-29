
-- ░█████╗░███╗░░██╗████████╗██╗░█████╗░██╗░░██╗███████╗░█████╗░████████╗
-- ██╔══██╗████╗░██║╚══██╔══╝██║██╔══██╗██║░░██║██╔════╝██╔══██╗╚══██╔══╝
-- ███████║██╔██╗██║░░░██║░░░██║██║░░╚═╝███████║█████╗░░███████║░░░██║░░░
-- ██╔══██║██║╚████║░░░██║░░░██║██║░░██╗██╔══██║██╔══╝░░██╔══██║░░░██║░░░
-- ██║░░██║██║░╚███║░░░██║░░░██║╚█████╔╝██║░░██║███████╗██║░░██║░░░██║░░░
-- ╚═╝░░╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝░░░╚═╝░░░


krt = {}

-- Anticheat Configuration Settings
krt.Debug = true  -- Enable debug mode for more detailed logs (Not recommended in production, Admins can be banned)
krt.Locale = "cs" -- Locale to use. Modify/Create locales in locales/ folder. Premade options - [en/cs]
krt.AutoSQL = true -- Enables automatic inserting into the sql
krt.Heartbeat = true -- heartbeat system for the anticheat (so cheaters cant turn it off)
krt.ScreenshotModule = "screenshot-basic"  -- Name of folder screenshot-basics (recomended) for taking player Screenshots (keep as is unless renamed)
krt.AnticheatModule = GetCurrentResourceName()     -- Name of the anticheat folder

-- Punishment settings (can be LOG, KICK, or BAN)
krt.PunishType = 'BAN'                     -- Default punishment method when a cheat is detected
krt.DetectionPunishments = {               -- Detection Punishments for each (they will use these detections instead of krt.PunishType)
    ["noclip"] = "BAN",  -- No-clip detection punishment
    ["freecam"] = "BAN",  -- Freecam detection punishment
    ["godmode"] = "BAN",  -- Godmode detection punishment
    ["semigodmode"] = "BAN",  -- Semi Godmode detection punishment
    ["biggerhitboxes"] = "BAN",  -- Bigger hitboxes detection punishment
    ["silentaim"] = "BAN",  -- Silent aim detection punishment
    ["softim"] = "LOG",  -- Soft aim detection punishment
    ["fastrun"] = "BAN",  -- FastRun detection punishment
    ["teleport"] = "BAN",  -- Teleportation detection punishment
    ["vehiclespawn"] = "BAN",  -- Vehicle Spawn detection punishment
    ["teleporttowaypoint"] = "BAN",  -- Teleportation detection punishment
    ["blips"] = "LOG",  -- Blips detection punishment
    ["invisibility"] = "BAN",  -- Invisibility detection punishment
    ["carspeedmodifier"] = "BAN",  -- Car Speed Modifier detection punishment
    ["carmodifier"] = "BAN",  -- Car Modifier detection punishment
    ["vehiclefix"] = "BAN",  -- Vehicle Fix detection punishment
    ["handlingedit"] = "BAN",  -- Handling Edit detection punishment
}

-- Detection settings
krt.BanScreen = true -- Shows a screen to a player before he gets banned
krt.BanScreenType = 1 -- (1 - Default) : (2 - Your own image)
krt.BanScreenImage = "https://r2.fivemanage.com/AR4O4yjUy8bEtyd3RH5VX/images/skeleton.png" -- (fivemanage links are the best)
krt.ConnectionCard = true  -- Shows connection card
krt.ShowReason = false  -- Should banned players see the reason for their ban?
krt.SendChatMessage = true -- sents a chat message
krt.PingOnDetect = "@everyone"  -- You can choose what role will the anticheat ping (not ping = "", ping everyone = "@everyone")
krt.AdminDetections = true  -- Should admins be detected and logged? (true/false)

-- Anti VPN
krt.antiVPN = true  -- Checks if you are using VPN

-- Additional Information and Links
krt.yourDiscord = 'https://dsc.gg/krtac'  -- Link for players to appeal bans

-- Screenshot & OCR (Optical Character Recognition) Settings
krt.OCR = true  -- Enable or disable OCR detection on player's Screenshots
krt.OCRCheckInterval = 15000  -- Time in ms between OCR checks on player's screen (keep it as is for better performance)
krt.Screenshots = true  -- Enable or disable sending Screenshots of player's screen

-- Username & AFK Detection Settings
krt.maxUsernameLength = 24  -- Maximum allowed length for player usernames (set to -1 to disable limit)
krt.antiAFK = false  -- Enable anti-AFK detection (checks if the player is AFK)
krt.antiAFKtime = 1200  -- Time in seconds before an AFK player is kicked

-- Needs
krt.needDiscord = true  -- Enforce Discord verification for players to join
krt.needSteam = true    -- Enforce Steam verification for players to join

krt.adminMenu = {
    enabled = true,     -- If the menu is enabled (/krtm)
    canOpen = "all",    -- Who can open the menu (all = all players that have txAdmin, limited = players typed in ids)  
    ids = {                   
        "steam:11111",
        "license:55555"
    }
}


-- ░█████╗░██╗░░░░░██╗███████╗███╗░░██╗████████╗
-- ██╔══██╗██║░░░░░██║██╔════╝████╗░██║╚══██╔══╝
-- ██║░░╚═╝██║░░░░░██║█████╗░░██╔██╗██║░░░██║░░░
-- ██║░░██╗██║░░░░░██║██╔══╝░░██║╚████║░░░██║░░░
-- ╚█████╔╝███████╗██║███████╗██║░╚███║░░░██║░░░
-- ░╚════╝░╚══════╝╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░

-- Main Anti-Cheat Features
krt.antiNUIDevTools = true               -- Detect and block the use of NUI Developer Tools in-game
krt.antiOverlay = true                   -- Block the use of external UI overlays (e.g., Eulen menus)
krt.antiAIs = true                       -- Block AI cheats like No Recoil, Infinite Ammo, or Damage Boosts
krt.antiMenus = true                     -- Quickly detect basic LUA cheat menus for enhanced protection
krt.antiDump = false                     -- WORKING ON!!! (Just Beta)
krt.antiInject = true                    -- Detects injections into the game
krt.antiCommandInject = false            -- Detects suspicious commands (krt.CommandsBlacklist)

-- Resources
krt.antiResourceStop = false             -- Prevents resource stop (disabling on live server can ban everyone)
krt.antiResourceStart = false            -- Prevents resource start (disabling on live server can ban everyone)

-- God Mode
krt.antiGodMode = true                   -- Detects players in god mode
krt.antiSemiGodMode = true               -- Detects semi god mode in fights

-- Noclip Detection
krt.antiNoClip = true                    -- Detects Noclipping players
krt.antiVehicleNoClip = true             -- Detects Vehicle noclip

-- Spectate detection
krt.antiSpectate = true                  -- Detects if a player tries to spectate others

-- Teleportation Detection
krt.antiTeleport = true                  -- Detects if a player is teleporting (far from previous position)
krt.antiTeleportDetections = 3           -- How much detections until player gets banned
krt.antiTeleportToWaypoint = true        -- Detects if a player is teleporting to his waypoint
krt.antiTeleportDistance = 250           -- Distance (in meters) required to detect teleportation
krt.antiTeleportWhitelistedCoords = {    -- Player won't be detected at these coords for freecam, for example on character selection
    vector3(0, 0, 0)
}

-- Invisible detection
krt.antiInvisible = true                 -- Detects invisible players

-- FreeCam Detection
krt.antiFreeCam = true                   -- Detects FreeCam Hack
krt.antiFreecamDistance = 45             -- Camera distance from player to trigger FreeCam detection

-- Detects Cheats
krt.antiEulen = true                     -- Detects Injection of Eulen
krt.antiSusano = true                    -- WORKING ON!!! (Not Working)

krt.antiEulenKill = true                 -- Detects Eulen kill
krt.antiEulenFreecam = true              -- Detects Eulen Freecam
krt.antiEulenNoclip = true               -- Detects Eulen NoClip

krt.antiSusanoKill = true                -- Detects Susano kill
krt.antiSusanoNoClip = true              -- Detects Susano NoClip
krt.antiSusanoSafeExplode = true         -- WORKING ON!!! (Just Beta)
krt.antiSusanoRagdollEveryone = true     -- WORKING ON!!! (Just Beta)
krt.antiRagdollEveryoneTimeWindow = 30000-- WORKING ON!!! (Just Beta)
krt.antiRagdollEveryonePeopleToFall = 5  -- WORKING ON!!! (Just Beta)

krt.antiSkriptggKill = true              -- Detects Skript.gg kill

-- Health & Armour Detections
krt.antiHealthHack = true                -- Detects health hack (e.g., infinite health)
krt.antiArmourHack = true                -- Detects armour hack (e.g., infinite armor)
krt.antiArmourAdd = true                 -- Detects adding armour from cheats

-- Player Detections
krt.antiInfiniteStamina = true           -- Detect and block cheats that allow players to run indefinitely
krt.antiSuperJump = true                 -- Detect and prevent the use of Super Jump cheats
krt.antiBeastJump = true                 -- Detect and prevent the use of Beast Jump cheat
krt.antiFastRun = true                   -- Detect and block cheats that enable players to run faster than normal
krt.antiSmallPed = false                 -- Prevent players from using tiny or unusual character models (disabled for now)

-- Weapons Detections
krt.antiWeaponDamageChanger = true       -- Detects weapon damage changes
krt.antiGiveWeapons = true               -- Detect and prevent giving weapons to other players
krt.antiSpoofGiveWeapons = true          -- Detects Give Weapon with spoof like (susano)
krt.antiRemoveWeapons = true             -- Monitor and block unauthorized weapon removals from players
krt.antiBlacklistedWeapon = true         -- Detect and prevent players from using restricted weapons
krt.antiHeadshot = true                  -- Disable one-shot headshot kills to prevent unfair gameplay
krt.antiDamageBoost = true               -- Detects boosted damage (e.g., through Citizen AIs or mods)
krt.antiDefenseBoost = true              -- Detects boosted defense (e.g., through Citizen AIs or mods)
krt.maximumModifier = 1.15               -- Maximum allowed damage/defense modifier before detection (float value)
krt.antiTaze = true                      -- Disable the ability for cheaters to abuse tasers on other players
krt.antiInfiniteRoll = true              -- Detect and block infinite combat rolls during fights

-- Ammo cheats
krt.antiExplosiveAmmo = true             -- Detects explosive ammo cheats
krt.antiInfiniteAmmo = true              -- Detects infinite ammo cheats
krt.antiFillAmmo = true

-- Anti reload Detection
krt.antiNoReload = true                  -- Detects when player is not reloading

-- Magic bullet
krt.antiMagicBullet = true               -- Detects magic bullet cheats (shooting through walls)
krt.antiMagicBulletTolerance = 3         -- Number of failed Line-of-Sight checks before detection

-- Rapid Fire & Explosive Ammo Detection
krt.antiRapidFire = true                 -- Detects rapid fire cheats
krt.antiRapidFireMaxShots = 3            -- Maximum number of shots before rapid fire detection
krt.antiRapidFireThreshold = 900         -- Time threshold (in ms) between shots for rapid fire detection

-- Aim Detections
krt.antiAimbot = true                    -- Aimbot detection
krt.antiAimbotLookThreshold = 2000       -- How long needs to be player lockon other players head to be banned
krt.antiAimbotTimeThreshold = 5000    
krt.antiAimbotHeadshotThreshold = 5
krt.antiSilentAim = true                 -- Silent aim detection
krt.antiSilentAimThreshold = 0.50     
krt.antiSoftAim = true                   -- Soft aim detection
krt.antiBiggerHitBoxes = true            -- Detects larger hitboxes

-- Vision & Rainbow Effects Detection
krt.antiThermal = false                  -- Anti Thermal Vision (has bypass for players in helicopters)
krt.antiNightVision = false              -- Anti Night Vision cheat
krt.antiRainbow = true                   -- Detects rainbow-colored vehicles (can interfere with vehicle tuning)

-- Vehicle Detections
krt.antiBlacklistedVehicles = true       -- Monitor and block the use of unauthorized or restricted vehicles
krt.antiBlacklistPlate = true            -- Detects blacklisted vehicle plates
krt.antiPlateChange = false              -- Detects if player changes vehicle plates (can interfere with vehicle shops)
krt.antiVDM = true                       -- Block vehicles from causing damage to other players to prevent griefing
krt.antiVehicleHashChanger = true        -- Detects when player spawns a car and make it look like other car
krt.antiTeleportToVehicle = true         -- Detects teleport tp / in car
krt.antiTeleportToVehicleThreshold = 10  -- Distance threshold to consider a teleport
krt.antiVehicleFix = true                -- Detects fixing vehicles (can interfere with vehicle shops)
krt.antiCarSpeedModifier = true          -- Detects modified vehicle speed
krt.antiCarSpeedModifierMaxSpeed = 300   -- Detects players who are going over this limit
krt.antiHandlingEdit = true              -- Detects vehicles handling edit
krt.antiCarModifierChange = true         -- Detects changes in vehicle modifications (can interfere with vehicle shops)
krt.antiWeaponVehicles = true            -- Prevent players from using weaponized vehicles like the Oppressor or Nightshark

-- Hud cheats
krt.antiRadar = false                    -- Detect radar cheats used outside of vehicles (disabled for compatibility)
krt.antiBlips = false                    -- Monitor and block player radar blips cheats (may conflict with police scripts)

-- Misc Anti-Cheat Features
krt.antiClearTasks = true                -- Detect players forcibly ejecting others from vehicles
krt.messageBlacklist = true              -- Kick players for using prohibited words in chat
krt.antiObjectAttach = true              -- Automatically remove objects attached to players by cheats
krt.antiSoloSession = true               -- Detects Solo Session Connections


-- ░██████╗███████╗██████╗░██╗░░░██╗███████╗██████╗░
-- ██╔════╝██╔════╝██╔══██╗██║░░░██║██╔════╝██╔══██╗
-- ╚█████╗░█████╗░░██████╔╝╚██╗░██╔╝█████╗░░██████╔╝
-- ░╚═══██╗██╔══╝░░██╔══██╗░╚████╔╝░██╔══╝░░██╔══██╗
-- ██████╔╝███████╗██║░░██║░░╚██╔╝░░███████╗██║░░██║
-- ╚═════╝░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝

-- Anti Trigger Detection
krt.fakeTriggers = true                 -- Creates fake triggers to confuse mod menus and executors
krt.antiTrigger = false                 -- WORKING ON!!! (Not Working)

krt.triggerLimiterTime = 10000          -- 10 seconds (Basic)
krt.triggerLimiterTimes = 5             -- How much times can the trigger be executed in krt.TriggerLimiterBlacklistTime

-- Explosion Detection Settings
krt.antiParticles = true                -- Detects blacklisted particles (e.g., harmful effects)
krt.antiSpamParticles = true
krt.maxParticles = 5
krt.antiExplosion = true                -- Detects blacklisted explosion types
krt.cancelOtherExplosions = true        -- Cancels explosions that aren't blacklisted
krt.antiExplosionMods = true            -- Detects invisible, inaudible, and damage-boosted explosions
krt.explosionLimit = true               -- Limits the number of explosions a player can create in a short time
krt.maxExplosionsInterval = 5000        -- Time window (in ms) to check if player exceeds explosion limit
krt.maxExplosions = 3                   -- Maximum number of explosions allowed in the time window

-- Ped Creation Detection Settings
krt.antiPeds = true                     -- Detects creation of blacklisted peds (NPCs)
krt.antiShootingPeds = true             -- Detects creation of peds with weapons
krt.antiSpamPed = true                  -- Detects mass spawning of peds
krt.maxPed = 1                          -- Maximum number of peds player can create in short time before detection

-- Vehicle Creation Detection Settings
krt.antiVehicle = true                  -- Detects creation of blacklisted vehicles
krt.antiNonWhitelistedSpawnVehicle = true       -- Detect spawn of cars in Non WL Coords and Resources
krt.antiSpamVehicle = true              -- Detects mass spawning of vehicles
krt.maxVehicle = 1                      -- Maximum number of vehicles player can create in short time before detection

-- Object Creation Detection Settings
krt.antiObjects = true                  -- Detects creation of blacklisted objects and props
krt.antiSpamObject = true               -- Detects mass spawning of objects
krt.maxObject = 8                       -- Maximum number of objects player can create in short time before detection

-- Vehicle Speed Control Settings
krt.maxCreatingSpeed = 80               -- Prevents spawning of vehicles with excessive speeds (e.g., ram vehicles in mod menus)


-- ██╗░░░░░░█████╗░░██████╗░░██████╗
-- ██║░░░░░██╔══██╗██╔════╝░██╔════╝
-- ██║░░░░░██║░░██║██║░░██╗░╚█████╗░
-- ██║░░░░░██║░░██║██║░░╚██╗░╚═══██╗
-- ███████╗╚█████╔╝╚██████╔╝██████╔╝
-- ╚══════╝░╚════╝░░╚═════╝░╚═════╝░

-- Prints
krt.ConnectPrints = true       -- Prints player connections (Detects HARDCAP connection attempts)
krt.DisconnectPrints = true    -- Prints player connections (Detects HARDCAP connection attempts)
krt.VPNPrints = true           -- Prints VPN connections

-- Logs
krt.ConnectLogs = true         -- Logs all player connections
krt.DisconnectLogs = true      -- Logs player disconnections
krt.VPNLogs = true             -- Logs player VPNs
krt.ExplosionLogs = true       -- Logs all explosions (detects malicious explosions)
krt.ObjectLogs = true          -- Logs all created objects (for anti-cheat purposes)
krt.ChatLogs = true            -- Logs all chat messages (for monitoring chat activity)
krt.ResourceStartLogs = true   -- Logs when resources are started (detects suspicious resource activity)
krt.ResourceStopLogs = true    -- Logs when resources are stopped (detects potential server disruptions)



-- ░██╗░░░░░░░██╗██╗░░██╗██╗████████╗███████╗██╗░░░░░██╗░██████╗████████╗
-- ░██║░░██╗░░██║██║░░██║██║╚══██╔══╝██╔════╝██║░░░░░██║██╔════╝╚══██╔══╝
-- ░╚██╗████╗██╔╝███████║██║░░░██║░░░█████╗░░██║░░░░░██║╚█████╗░░░░██║░░░
-- ░░████╔═████║░██╔══██║██║░░░██║░░░██╔══╝░░██║░░░░░██║░╚═══██╗░░░██║░░░
-- ░░╚██╔╝░╚██╔╝░██║░░██║██║░░░██║░░░███████╗███████╗██║██████╔╝░░░██║░░░
-- ░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚═╝░░░╚═╝░░░╚══════╝╚══════╝╚═╝╚═════╝░░░░╚═╝░░░

krt.ResourcesStopWhitelist = { -- Whitelisted Resources (resources that won't trigger resource start/stop detections)
    ['es_extended'] = true,
    ['okokBanking'] = true,
    ['okokBilling'] = true,
    ['ox_inventory'] = true,
    ['esx_skin'] = true,
    ['screenshot-basic'] = true,
}

krt.VehicleSpawnScriptsWhitelist = { -- Scripts that spawn cars (REQUIRED)
    --"esx_vehicleshop", 
    "lunar_garage",
    "es_extended",
    "job_garages",  
}

krt.VehicleSpawnCoordsWhitelist = { -- All garages coords (add if you have custom, default they are lunar_garage)
    {x = 229.3425, y = -801.4708, z = 30.5659, radius = 50.0},
    {x = 270.75, y = -340.51, z = 44.92, radius = 50.0},
    {x = -66.51, y = -1828.01, z = 26.94, radius = 50.0},
    {x = 1023.2, y = -764.27, z = 57.96, radius = 50.0},
    {x = -1244.27, y = -1422.08, z = 4.32, radius = 50.0},
    {x = -2964.96, y = 372.07, z = 14.78, radius = 50.0},
    {x = 216.94, y = 2608.44, z = 46.33, radius = 50.0},
    {x = 1880.14, y = 3757.73, z = 32.93, radius = 50.0},
    {x = 364.84, y = 289.73, z = 103.42, radius = 50.0},
    {x = 1710.64, y = 4746.94, z = 41.95, radius = 50.0},
    {x = 110.84, y = 6607.82, z = 31.86, radius = 50.0},
    {x = 325.5470, y = -211.0033, z = 54.0863, radius = 50.0},
    {x = -164.0872, y = -1306.4490, z = 31.3066, radius = 50.0},
    {x = 1874.1654, y = 3705.6885, z = 34.5459, radius = 50.0},
    {x = 843.9660, y = -1334.4912, z = 27.0971, radius = 50.0},
    {x = 408.0792, y = -998.0554, z = 29.2663, radius = 50.0},
    {x = 2421.7756, y = 4959.3447, z = 46.0200, radius = 50.0},
    {x = -608.2778, y = -875.6619, z = 25.2812, radius = 50.0},
    {x = -1480.0311, y = -496.4789, z = 32.8068, radius = 50.0},
    {x = -1667.8083, y = 72.3026, z = 63.5343, radius = 50.0},
    {x = -387.9319, y = -107.0117, z = 38.6853, radius = 50.0},
    {x = -1178.4406, y = -2845.8442, z = 13.9457, radius = 50.0},
    {x = -803.2337, y = -1421.8733, z = -0.4749, radius = 50.0}
}

krt.ArmourAddItemsWhitelist = {"customarmour1", "light_armour", "medium_armour", "heavy_armour"}

krt.WeaponsItemsWhitelist = {"customgun1", "customgun2", "customgun3", "customgun4"}

krt.AmmoItemsWhitelist = {"customammo1", "customammo2", "customammo3", "customammo4"}

-- Vehicle things to whitelist
krt.VehicleFixResourcesWhitelist = {"repairkitscript", "TunningSystem"}    -- Define your trusted scripts for repairing cars
krt.CarModifierChangeCoordsWhitelist = {{x = 100, y = 100, z = 100}, {x = 200, y = 200, z = 200}}             -- Define whitelisted coordinates (e.g., mechanic locations)
krt.CarModifierChangeCoordsRadiusWhitelist = 50       -- Radius to check around the mechanic locations

krt.ObjectWhitelist = { -- Whitelisted objects that won't be deleted by wx.antiObjectAttach, Anti Spam Objects and other detections. By default it contains all objects from scully_emotemenu.

    -- Prop Animations

    [`prop_pencil_01`] = true,
    [`prop_suitcase_01c`] = true,
    [`prop_tool_fireaxe`] = true,
    [`prop_tool_pickaxe`] = true,
    [`p_michael_backpack_s`] = true,
    [`prop_bskball_01`] = true,
    [`prop_fish_slice_01`] = true,
    [`prop_beach_ring_01`] = true,
    [`v_ret_ml_beerdus`] = true,
    [`v_ret_ml_beeram`] = true,
    [`v_ret_ml_beerpride`] = true,
    [`v_ret_ml_beerbar`] = true,
    [`prop_amb_beer_bottle`] = true,
    [`prop_beggers_sign_03`] = true,
    [`prop_beggers_sign_01`] = true,
    [`prop_beggers_sign_02`] = true,
    [`prop_beggers_sign_04`] = true,
    [`prop_binoc_01`] = true,
    [`hei_heist_sh_bong_01`] = true,
    [`xm3_prop_xm3_bong_01a`] = true,
    [`prop_bongos_01`] = true,
    [`prop_novel_01`] = true,
    [`prop_boombox_01`] = true,
    [`prop_cs_sol_glasses`] = true,
    [`prop_snow_flower_02`] = true,
    [`hei_prop_heist_box`] = true,
    [`prop_ld_case_01`] = true,
    [`prop_tool_broom`] = true,
    [`prop_pap_camera_01`] = true,
    [`prop_v_cam_01`] = true,
    [`bzzz_pizzahut_cup_a`] = true,
    [`prop_food_bs_bag_01`] = true,
    [`prop_food_cb_bag_01`] = true,
    [`prop_food_bag1`] = true,
    [`bzzz_pizzahut_menu_a`] = true,
    [`prop_pizza_box_02`] = true,
    [`bzzz_pizzahut_box_a`] = true,
    [`bkr_prop_biker_case_shut`] = true,
    [`prop_cash_case_01`] = true,
    [`prop_cash_case_02`] = true,
    [`ch_prop_ch_security_case_01a`] = true,
    [`prop_dumpster_01a`] = true,
    [`prop_dumpster_02a`] = true,
    [`v_ret_ml_beerben1`] = true,
    [`v_ret_ml_beerbla1`] = true,
    [`v_ret_ml_beerjak1`] = true,
    [`v_ret_ml_beerlog1`] = true,
    [`v_ret_ml_beerpis1`] = true,
    [`prop_beer_box_01`] = true,
    [`prop_mp_cone_02`] = true,
    [`ba_prop_battle_champ_open`] = true,
    [`vw_prop_vw_tray_01a`] = true,
    [`prop_amb_ciggy_01`] = true,
    [`prop_cigar_02`] = true,
    [`prop_cigar_01`] = true,
    [`prop_sponge_01`] = true,
    [`p_amb_clipboard_01`] = true,
    [`prop_roadcone02b`] = true,
    [`prop_parking_wand_01`] = true,
    [`prop_cs_bowie_knife`] = true,
    [`prop_tool_shovel`] = true,
    [`w_am_digiscanner`] = true,
    [`bkr_prop_duffel_bag_01a`] = true,
    [`prop_fishing_rod_01`] = true,
    [`prop_champ_flute`] = true,
    [`prop_food_bs_tray_03`] = true,
    [`prop_food_bs_tray_02`] = true,
    [`prop_food_cb_tray_02`] = true,
    [`prop_food_tray_02`] = true,
    [`prop_food_tray_03`] = true,
    [`bzzz_prop_torch_fire001`] = true,
    [`w_am_jerrycan`] = true,
    [`prop_controller_01`] = true,
    [`prop_cs_street_binbag_01`] = true,
    [`prop_bin_08open`] = true,
    [`prop_cs_bin_01`] = true,
    [`prop_cs_bin_03`] = true,
    [`prop_bin_08a`] = true,
    [`prop_bin_07d`] = true,
    [`bzzz_prop_gift_purple`] = true,
    [`bzzz_prop_gift_orange`] = true,
    [`bzzz_prop_gift_jewel`] = true,
    [`bzzz_prop_gift_bonbonier`] = true,
    [`prop_golf_wood_01`] = true,
    [`prop_acc_guitar_01`] = true,
    [`prop_el_guitar_01`] = true,
    [`prop_el_guitar_02`] = true,
    [`prop_el_guitar_03`] = true,
    [`sf_prop_sf_guitar_case_01a`] = true,
    [`vw_prop_casino_art_guitar_01a`] = true,
    [`sf_prop_sf_el_guitar_02a`] = true,
    [`prop_gun_case_01`] = true,
    [`ind_prop_firework_01`] = true,
    [`prop_mr_raspberry_01`] = true,
    [`pprp_icefishing_box_02`] = true,
    [`pprp_icefishing_box_01`] = true,
    [`prop_franklin_dl`] = true,
    [`prop_fib_badge`] = true,
    [`p_ld_id_card_002`] = true,
    [`prop_michael_sec_id`] = true,
    [`prop_lspd_badge`] = true,
    [`bkr_prop_fakeid_singledriverl`] = true,
    [`bkr_prop_fakeid_openpassport`] = true,
    [`prop_cs_dildo_01`] = true,
    [`p_cs_joint_02`] = true,
    [`prop_skid_chair_02`] = true,
    [`prop_leaf_blower_01`] = true,
    [`prop_phone_ing`] = true,
    [`prop_anim_cash_pile_01`] = true,
    [`prop_tourist_map_01`] = true,
    [`xm_prop_x17_bag_med_01a`] = true,
    [`prop_megaphone_01`] = true,
    [`prop_cs_mop_s`] = true,
    [`prop_police_id_board`] = true,
    [`bzzz_murder_axe001`] = true,
    [`w_pi_heavypistol`] = true,
    [`bzzz_murder_machete001`] = true,
    [`prop_v_bmike_01`] = true,
    [`p_ing_microphonel_01`] = true,
    [`prop_cliff_paper`] = true,
    [`ng_proc_paper_news_quik`] = true,
    [`ng_proc_paper_news_rag`] = true,
    [`prop_notepad_01`] = true,
    [`prop_cs_walking_stick`] = true,
    [`prideflag1`] = true,
    [`prideflag2`] = true,
    [`prideflag3`] = true,
    [`prideflag4`] = true,
    [`prideflag5`] = true,
    [`prideflag6`] = true,
    [`prideflag7`] = true,
    [`prideflag8`] = true,
    [`prideflag9`] = true,

    -- Food Animations (Consumable)
    [`sf_prop_sf_apple_01b`] = true,
    [`h4_prop_h4_caviar_tin_01a`] = true,
    [`prop_cs_bowl_01`] = true,
    [`prop_beerdusche`] = true,
    [`prop_beer_logopen`] = true,
    [`prop_beer_amopen`] = true,
    [`prop_beer_pissh`] = true,
    [`prop_cs_beer_bot_02`] = true,
    [`prop_bottle_brandy`] = true,
    [`prop_food_bs_coffee`] = true,
    [`prop_food_bs_juice01`] = true,
    [`prop_food_bs_chips`] = true,
    [`scully_boba`] = true,
    [`scully_boba2`] = true,
    [`scully_boba3`] = true,
    [`prop_candy_pqs`] = true,
    [`bzzz_food_xmas_lollipop_a`] = true,
    [`bzzz_food_xmas_lollipop_b`] = true,
    [`bzzz_food_xmas_lollipop_c`] = true,
    [`bzzz_food_xmas_lollipop_d`] = true,
    [`bzzz_food_xmas_lollipop_e`] = true,
    [`prop_drink_champ`] = true,
    [`v_ret_ml_chips2`] = true,
    [`p_amb_coffeecup_01`] = true,
    [`bzzz_foodpack_croissant001`] = true,
    [`prop_plastic_cup_02`] = true,
    [`prop_amb_donut`] = true,
    [`prop_donut_02`] = true,
    [`bzzz_foodpack_donut002`] = true,
    [`bzzz_foodpack_donut001`] = true,
    [`prop_ld_flow_bottle`] = true,
    [`prop_cs_burger_01`] = true,
    [`prop_ecola_can`] = true,
    [`prop_choc_ego`] = true,
    [`bzzz_animal_fish002`] = true,
    [`bzzz_food_xmas_gingerbread_a`] = true,
    [`prop_cs_hotdog_01`] = true,
    [`prop_cs_hotdog_02`] = true,
    [`bzzz_icecream_cherry`] = true,
    [`bzzz_icecream_chocolate`] = true,
    [`bzzz_icecream_lemon`] = true,
    [`bzzz_icecream_pistachio`] = true,
    [`bzzz_icecream_raspberry`] = true,
    [`bzzz_icecream_stracciatella`] = true,
    [`bzzz_icecream_strawberry`] = true,
    [`bzzz_icecream_walnut`] = true,
    [`natty_lollipop_spiral01`] = true,
    [`natty_lollipop_spiral02`] = true,
    [`natty_lollipop_spiral03`] = true,
    [`natty_lollipop_spiral04`] = true,
    [`natty_lollipop_spiral05`] = true,
    [`natty_lollipop_spiral06`] = true,
    [`natty_lollipop_spin01`] = true,
    [`natty_lollipop_spin02`] = true,
    [`natty_lollipop_spin03`] = true,
    [`natty_lollipop_spin04`] = true,
    [`natty_lollipop_spin05`] = true,
    [`natty_lollipop01`] = true,
    [`bzzz_food_xmas_macaroon_a`] = true,
    [`bzzz_food_dessert_a`] = true,
    [`v_res_tt_milk`] = true,
    [`scully_pho`] = true,
    [`prop_pineapple`] = true,
    [`v_res_tt_pizzaplate`] = true,
    [`prop_wine_rose`] = true,
    [`prop_rum_bottle`] = true,
    [`prop_sandwich_01`] = true,
    [`v_res_tt_can03`] = true,
    [`prop_taco_01`] = true,
    [`prop_tequila_bottle`] = true,
    [`prop_food_bs_burger2`] = true,
    [`prop_vodka_bottle`] = true,
    [`prop_wheat_grass_glass`] = true,
    [`prop_wheat_grass_half`] = true,
    [`prop_cs_whiskey_bottle`] = true,
    [`prop_wine_white`] = true,
    [`bzzz_food_xmas_mug_a`] = true,
    [`bzzz_food_xmas_mug_b`] = true,
    [`bzzz_food_xmas_mulled_wine_a`] = true,
}



-- ██████╗░██╗░░░░░░█████╗░░█████╗░██╗░░██╗██╗░░░░░██╗░██████╗████████╗░██████╗
-- ██╔══██╗██║░░░░░██╔══██╗██╔══██╗██║░██╔╝██║░░░░░██║██╔════╝╚══██╔══╝██╔════╝
-- ██████╦╝██║░░░░░███████║██║░░╚═╝█████═╝░██║░░░░░██║╚█████╗░░░░██║░░░╚█████╗░
-- ██╔══██╗██║░░░░░██╔══██║██║░░██╗██╔═██╗░██║░░░░░██║░╚═══██╗░░░██║░░░░╚═══██╗
-- ██████╦╝███████╗██║░░██║╚█████╔╝██║░╚██╗███████╗██║██████╔╝░░░██║░░░██████╔╝
-- ╚═════╝░╚══════╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝╚═════╝░░░░╚═╝░░░╚═════╝░

-- OCR Detection for Suspicious Words
-- If any of these words are detected on the player's screen through OCR, the player will be flagged.
-- Note: OCR scans only native game strings, such as menus, the pause menu, or 3D/2D text.
-- It does **not** detect NUI elements like chat or other UI components.
krt.OCRWordsBlacklist = {
    "FlexSkazaMenu", "SidMenu", "Lynx8",
    "LynxEvo", "Maestro Menu", "redEngine",
    "redENGINE", "Eulen", "HX", "TZ",
    "HamMafia", "HamHaxia", "Dopameme",
    "redMENU", "Desudo", "explode",
    "gamesense", "Anticheat", "Tapatio",
    "Malossi", "RedStonia", "Chocohax",
    "skin changer", "torque multiple", "override player speed",
    "colision proof", "explosion proof", "copy outfit",
    "play single particle", "infinite ammo", "rip server",
    "remove ammo", "remove all weapons", "V1s_u4l",
    "injected", "Explode Players", "Ram Player",
    "fallout", "godmode", "god mode",
    "modmenu", "esx money", "give armor",
    "aimbot", "trigger", "triggerbot",
    "Rapid Fire","rage bot","ragebot",
    "rapidfire", "freecam", "execute",
    "noclip", "ckgangisontop", "lumia1",
    "ISMMENU", "TAJNEMENUMenu", "rootMenu",
    "Outcasts666", "WaveCheat", "NacroxMenu",
    "MarketMenu", "topMenu", "Flip Vehicle",
    "Rainbow Paintjob", "Combat Assiters", "Damage Multiplier",
    "Give All Weapons", "Teleport To Impact", "Explosive Impact",
    "Server Nuke Options", "No Ragdoll", "Super Powers",
    "invisible all vehicles", "Spam Message", "Destroy Map",
    "Delete Props", "Cobra Menu",
    "no-clip", "injected", "Money Options",
    "Nuke Options", "Aimbot", "TriggerBot",
    "RapidFire","Force Player Blips","Force Radar",
    "Force Gamertags","Steal Outfit","ESX Money Options",
    "press AV PAG","TP to Waypoint","Self Options",
    "Vehicle options","Weapon Options","spam Vehicles",
    "taze All","explosive ammo","super damage",
    "rapid fire","Super Jump","Infinite Roll",
    "Cage Player","Give all","No Criticals",
    "Move On Water","Disable Ragdoll","CutzuSD",
    "Vertisso","fuck server","lynx",
    "Teleport to Closest Vehicle","CKGang","CK Gang",
    "CKGang 2.0","Toggle ESP",
    "NoClip","No-Clip","Semi-GodMode",
    "Repair Vehicle","Fix Vehicle","absolute",
    "Lumia","Gamesense","Fivesense",
    "SkidMenu","Dopamine","Explode",
    "Teleport Options","infnite combat roll","Hydro Menu",
    "Enter Menu Open Key","Give Single Weapon","Airstrike Player",
    "Taze Player","Razer Menu","Swagamine",
    "Visual Options","d0pamine","Infinite Stamina",
    "Blackout","Delete Vehicles Within Radius","Engine Power Boost",
    "Teleport Into Player's Vehicle","menu keybind",
    "nospread","transparent props","bullet tracers",
    "Dumper","LUA Executor","Executor",
    "Lux Menu","NEVERWHERE","Event Blocker",
    "Spectate","Wallhack","triggers",
    "crosshair","Alokas66","Hacking System!",
    "Destroy Menu","Server IP","Teleport To"
}

-- Blacklisted Weapons
krt.WeaponsBlacklist = {
    --  TRANSLATION/LABEL    INGAME MODEL NAME
    ['Sniper Rifle'] = "weapon_sniperrifle",
    ['Minigun'] = "weapon_minigun",
    ['Heavy Rifle'] = "weapon_heavyrifle",
    ['Heavy Sniper MK2'] = "weapon_heavysniper_mk2",
    ['Marksman Rifle'] = "weapon_marksmanrifle",
    ['Marksman Rifle MK2'] = "weapon_marksmanrifle_mk2",
    ['RPG'] = "weapon_rpg",
    ['Grenade Launcher'] = "weapon_granadelauncher",
    ['Navy Revolver'] = "weapon_navyrevolver",
    -- ['Flare Gun'] = "weapon_flaregun",
    ['Vintage Pistol'] = "weapon_vintagepistol",
    -- ['Taser'] = "weapon_stungun",
    ['Marksman Pistol'] = "weapon_marksmanpistol",
    ['Gadget Pistol'] = "weapon_gadgetpistol",
    -- ['Pistol MK2'] = "weapon_pistol_mk2",
    ['Bottle'] = "weapon_bottle",
    ['Stone Hatchet'] = "weapon_stone_hatchet",
    -- ['Flare'] = "weapon_flare",
    -- ['Snowball'] = "weapon_snowball",
    -- ['Gas Canister'] = "weapon_petrolcan",
    ['Parachute'] = "gadget_parachute",
    ['Hazard Canister'] = "weapon_hazardcan",
    ['Fertilizer Can'] = "weapon_fertilizercan",
    ['EMP Launcher'] = "weapon_emplauncher",
    ['Machine Gun'] = "weapon_mg",
    -- ['SNS Pistol'] = "weapon_snspistol",
    ['SNS Pistol MK2'] = "weapon_snspistol_mk2",
    -- ['Nightstick'] = "weapon_nightstick",
    ['Ray Pistol'] = "weapon_raypistol",
    ['Ray Carbine'] = "weapon_raycarbine",
    -- ['Combat MG'] = "weapon_combatmg",
    ['SMG MK2'] = "weapon_smg_mk2",
    ['Revolver MK2'] = "weapon_revolver_mk2",
    ['RPG 2'] = "weapon_rpg_2",
    ['Smoke Launcher'] = "weapon_grenadelauncher_smoke",
    ['Firework Launcher'] = "weapon_firework",
    ['Railgun'] = "weapon_railgun",
    ['Homing Launcher'] = "weapon_hominglauncher",
    ['Compact Launcher'] = "weapon_compactlauncher",
    ['Ray Minigun'] = "weapon_rayminigun",
    ['Grenade'] = "weapon_grenade",
    ['BZ Gas'] = "weapon_bzgas",
    ['Molotov'] = "weapon_molotov",
    ['Sticky Bomb'] = "weapon_stickybomb",
    ['Pipe Bomb'] = "weapon_pipebomb",
    ['Proximity Mine'] = "weapon_proxmine"
}

--Blacklist
krt.CommandsBlacklist = { -- Blacklisted commands
	"killmenu",
	"chocolate",
	"pk",
	"haha",
	"lol",
	"panickey",
	"killmenu",
	"panik",
	"lynx",
	"brutan",
    "fg",
	"purgemenu"
}

-- Blacklists (I recommend you to read through it and edit it)
krt.PlatesBlacklist = { -- Blacklisted vehicle plates
    'nigger',
    'nigga',
    'faggot',
    'retard',
    'ownage',
    'owned',
    'ckgang',
    'skriptgg',
    'eulen',
    'fatality'
}

krt.TaskBlacklist = { -- Blacklisted tasks https://alloc8or.re/gta5/doc/enums/eTaskTypeIndex.txt
    100,
    101,
    151,
    221,
    222
}

krt.ClipSizeList = { -- How many bullets should be allowed in certain weapons?
    { weapon = 'WEAPON_PISTOL',           clip = 14 },
    { weapon = 'WEAPON_APPISTOL',         clip = 18 },
    { weapon = 'WEAPON_COMBATPISTOL',     clip = 24 },
    { weapon = 'WEAPON_CARBINERIFLE',     clip = 60 },
    { weapon = 'WEAPON_CARBINERIFLE_MK2', clip = 60 },
}

-- Blacklisted Assets
krt.AssetsBlacklist = { GetHashKey("core"), GetHashKey("scr_ba_bomb"), GetHashKey("scr_rcbarry2"), GetHashKey("scr_rcpaparazzo1") }

-- Blacklisted Particles
krt.ParticlesBlacklist = {
    GetHashKey("scr_firework_xmas_burst_rgw"),
    GetHashKey("exp_grd_petrol_pump"),
    GetHashKey("scr_clown_bul"),
    GetHashKey("scr_mich4_firework_trailburst_spawn"),
    GetHashKey("blood_shark_attack"),
    GetHashKey("td_blood_shotgun"),
    GetHashKey("td_blood_throat"),
    GetHashKey("blood_melee_punch"),
    GetHashKey("blood_exit"),
    GetHashKey("blood_chopper"),
    GetHashKey("trail_splash_blood"),
    GetHashKey("td_blood_stab"),
    GetHashKey("blood_armour_heavy"),
    GetHashKey("blood_mist"),
    GetHashKey("blood_nose"),
    GetHashKey("blood_entry_head_sniper"),
    GetHashKey("scr_ba_bomb_destroy"),
    GetHashKey("scr_clown_appears")
}

krt.TriggerBlacklist = { -- Add more blacklisted triggers here
    "toggleDuty",
    "admin:revive",
}

krt.TriggerLimiterBlacklist = { -- Add more Limit Triggers here
    "testeat:hello",
    "admin:sellfood",
}

krt.TriggerValuesBlacklist = {            -- Player will be detected when he triggers one of these events with higher value than specified
    ['esx_truckerjob:payout'] = 5000,
    ['esx_garbagejob:payout'] = -1, -- Set to "-1" to detect every value
}

krt.FakeTriggerList = { -- List with fake triggers
    -- type = 'client' = TriggerEvent
    -- type = 'server' = TriggerServerEvent

    -- ["esx_ambulancejob:revive"] = { type = "client" },

    ["esx:spawnVehicle"] = { type = "client" },
    ["esx:setgroup"] = { type = "client" },
}

-- Blacklisted Names
krt.BadNamesList = {
    "nigga",
    "nigger",
    "n1gger",
    "n1gg3r",
    "admin",
    "moderator",
    "owner",
    "coowner",
    "faggot",
    "kys",
    "retard",
    --[[ PREVENTS XSS INJECTION ]] "<script",
    --[[ PREVENTS XSS INJECTION ]] "<script src",
    --[[ PREVENTS XSS INJECTION ]] "<script src=",
    --[[ PREVENTS XSS INJECTION ]] "<script src =",
    --[[ PREVENTS XSS INJECTION ]] "<src =",
    --[[ PREVENTS XSS INJECTION ]] "<script>",
    --[[ PREVENTS XSS INJECTION ]] "/>",
    "moderator",
    "eulencheats",
    "eulen",
    'redengine',
    'susano',
    "lynxmenu",
    "atgmenu",
    "hacker",
    "rustchance.com",
    "rustchance",
    "hellcase.com",
    "hellcase",
    "youtube.com",
    "youtu.be",
    "youtube",
    "twitch.tv",
    "twitch",
    "chocohax",
    "https",
    "http",
    "www.",
    "?",
    "§",
    "pornhub.com",
    "porn",
    "pornhub",
}

-- Chat Blacklist
-- Chat Blacklist
krt.BlockedWordsList = {
    -- Racist Terms
    'negre',
    'negr',
    'nigga',
    'nigger',
    'niggers',
    'i hate niggers',
    'nate higgers',
    'coon',
    'chink',
    'gook',
    'wetback',
    'spic',
    'beaner',
    'sandnigger',
    'cracker',
    'honky',

    -- Offensive Phrases
    'gas the jews',
    'kill all jews',
    'burn in hell',
    'white power',
    'heil hitler',
    'kkk',
    'klan',

    -- Homophobic Terms
    'faggot',
    'faggots',
    'dyke',
    'tranny',
    'kys',
    'kill yourself',
    'queer',

    -- Ableist Terms
    'retard',
    'retarded',
    'autist',
    'autistic freak',
    'sped',

    -- General Profanity
    'whore',
    'slut',
    'cunt',
    'bitch',
    'bastard',
    'dickhead',

    -- Sexual Terms
    'rape',
    'rapist',
    'child molester',
    'pedophile',
    'pedo',
    'groomer',

    -- Miscellaneous
    'terrorist',
    'suicide bomber',
    'allah akbar',
    'islamic scum',

    'https://',
    '.gg',
    'Komarov',
    'Pornhub',
}


-- Vehicle Blacklist
krt.VehicleBlacklist = {
    ["oppressor"] = true,
    ["oppressor2"] = true,
    ["hydra"] = true,
    ["lazer"] = true,
    ["rhino"] = true,
    ["valkyrie"] = true,
    ["apc"] = true,
    ["barracks"] = true,
    ["minitank"] = true,
    ["barrage"] = true,
    ["chernobog"] = true,
    ["halftrack"] = true,
    ["khanjali"] = true,
    ["scarab"] = true,
    ["scarab2"] = true,
    ["scarab3"] = true,
    ["deluxo"] = true,
    ["thruster"] = true,
    ["trailersmall2"] = true,
    ["deathbike2"] = true,
    ["deathbike3"] = true,
    ["shotaro"] = true,
    ["dominator4"] = true,
    ["dominator5"] = true,
    ["dominator6"] = true,
    ["slamtruck"] = true,
    ["volatol"] = true,
    ["jet"] = true,
    ["avenger2"] = true,
    ["avenger"] = true,
    ["cargoplane"] = true,
    ["cargoplane2"] = true,
    ["sultanrs"] = true,
    ["kosatka"] = true,
    ["tug"] = true,
    ["terbyte"] = true,
    ["savage"] = true,
}

-- Blacklisted Peds Models to spawn / use
krt.PedBlacklist = {
    "a_c_dolphin",
    "a_c_killerwhale",
    "a_c_sharktiger",
    "a_c_humpback",
    "mp_m_niko_01",
    's_m_y_swat_01',
    'u_m_y_pogo_01',
    "player_one",
    "player_two",
    "u_m_m_jesus_01",
    "u_m_y_babyd",
    "u_m_y_zombie_01",
    "u_m_y_pogo_0",
    "s_m_y_clown_01",
    "mp_f_cocaine_01",
    "a_c_chimp",
    "u_m_y_juggernaut_01"
}



-- Object Blacklist
krt.ObjectBlacklist = {
    "prop_doghouse_01", -- Trap player from susano.re
    "ap1_lod_slod4",
    "cs4_lod_01_slod3",
    "p_spinning_anus_s",
    "sr_prop_stunt_tube_crn_15d_05a",
    "as_prop_as_dwslope30",
    "prop_carjack",
    "p_amb_brolly_01",
    "stt_prop_stunt_track_uturn",
    "stt_prop_stunt_track_turnice",
    "stt_prop_stunt_track_hill",
    "prop_gold_cont_01",
    "p_cablecar_s",
    "stt_prop_stunt_tube_l",
    "stt_prop_stunt_track_dwuturn",
    "prop_fnclink_05crnr1",
    "xs_prop_hamburgher_wl",
    "xs_prop_plastic_bottle_wl",
    "prop_windmill_01",
    "p_spinning_anus_s",
    "stt_prop_ramp_adj_flip_m",
    "stt_prop_ramp_adj_flip_mb",
    "stt_prop_ramp_adj_flip_s",
    "stt_prop_ramp_adj_flip_sb",
    "stt_prop_ramp_adj_hloop",
    "stt_prop_ramp_adj_loop",
    "stt_prop_ramp_jump_l",
    "stt_prop_ramp_jump_m",
    "stt_prop_ramp_jump_s",
    "stt_prop_ramp_jump_xl",
    "stt_prop_ramp_jump_xs",
    "stt_prop_ramp_jump_xxl",
    "stt_prop_ramp_multi_loop_rb",
    "stt_prop_ramp_spiral_l",
    "stt_prop_ramp_spiral_l_l",
    "stt_prop_ramp_spiral_l_m",
    "stt_prop_ramp_spiral_l_s",
    "stt_prop_ramp_spiral_l_xxl",
    "stt_prop_ramp_spiral_m",
    "stt_prop_ramp_spiral_s",
    "stt_prop_ramp_spiral_xxl",
    "stt_prop_stunt_track_dwslope30",
    "stt_prop_stunt_track_start",
    "stt_prop_stunt_track_slope45",
    "stt_prop_stunt_track_slope30",
    "stt_prop_stunt_track_slope15",
    "stt_prop_stunt_track_short",
    "stt_prop_stunt_track_sh45_a",
    "stt_prop_stunt_track_sh45",
    "stt_prop_stunt_track_sh30",
    "stt_prop_stunt_track_sh15",
    "stt_prop_stunt_track_otake",
    "stt_prop_stunt_track_link",
    "stt_prop_stunt_track_jump",
    "stt_prop_stunt_track_hill2",
    "stt_prop_stunt_track_hill",
    "stt_prop_stunt_track_funnel",
    "stt_prop_stunt_track_funlng",
    "stt_prop_stunt_track_fork",
    "stt_prop_stunt_track_exshort",
    "stt_prop_stunt_track_dwuturn",
    "stt_prop_stunt_track_dwturn",
    "stt_prop_stunt_track_dwslope45",
    "stt_prop_stunt_track_dwslope30",
    "stt_prop_stunt_track_dwslope15",
    "stt_prop_stunt_track_dwshort",
    "stt_prop_stunt_track_dwsh15",
    "stt_prop_stunt_track_dwlink_02",
    "stt_prop_stunt_track_dwlink",
    "stt_prop_stunt_track_cutout",
    "stt_prop_stunt_track_bumps",
    "stt_prop_stunt_target_small",
    "stt_prop_stunt_target",
    "stt_prop_stunt_soccer_sball",
    "stt_prop_stunt_soccer_lball",
    "stt_prop_stunt_soccer_goal",
    "stt_prop_stunt_soccer_ball",
    "stt_prop_stunt_ramp",
    "stt_prop_stunt_landing_zone_01",
    "stt_prop_stunt_jump_sb",
    "stt_prop_stunt_jump_s",
    "stt_prop_stunt_jump_mb",
    "stt_prop_stunt_jump_m",
    "stt_prop_stunt_jump_loop",
    "stt_prop_stunt_jump_lb",
    "stt_prop_stunt_jump_l",
    "stt_prop_stunt_jump45",
    "stt_prop_stunt_jump30",
    "stt_prop_stunt_jump15",
    "stt_prop_stunt_track_start",
    "prop_contnr_pile_01a",
    "ce_xr_ctr2",
    "stt_prop_ramp_jump_xxl",
    "hei_prop_carrier_jet",
    "prop_parking_hut_2",
    "csx_seabed_rock3_",
    "db_apart_03_",
    "db_apart_09_",
    "stt_prop_stunt_tube_l",
    "stt_prop_stunt_track_dwuturn",
    "xs_prop_hamburgher_wl",
    "sr_prop_spec_tube_xxs_01a",
    "prop_air_bigradar",
    "p_tram_crash_s",
    "prop_windmill_01",
    "prop_start_gate_01",
    "prop_trailer_01_new",
    "sr_prop_sr_track_block_01",
    "sr_prop_spec_tube_xxs_04a",
    "stt_prop_stunt_soccer_sball",
    "stt_prop_stunt_track_cutout",
    "stt_prop_stunt_target_small",
    "prop_cj_big_boat",
    "stt_prop_stunt_domino"
}

-- Explosion Blacklist (https://wiki.rage.mp/index.php?title=Explosions)
krt.ExplosionBlacklist = {
    [0]  = "GRENADE",
    [1]  = "GRENADELAUNCHER",
    [2]  = "STICKYBOMB",
    [3]  = "MOLOTOV",
    [4]  = "ROCKET",
    [5]  = "TANKSHELL",
    [6]  = "HI_OCTANE",
    -- [7]  = "CAR",
    -- [8]  = "PLANE",
    -- [9]  = "PETROL_PUMP",
    -- [10] = "BIKE",
    -- [11] = "DIR_STEAM",
    -- [12] = "DIR_FLAME",
    -- [13] = "DIR_WATER_HYDRANT",
    -- [14] = "DIR_GAS_CANISTER",
    -- [15] = "BOAT",
    -- [16] = "SHIP_DESTROY",
    -- [17] = "TRUCK",
    -- [18] = "BULLET",
    [19] = "SMOKEGRENADELAUNCHER",
    [20] = "SMOKEGRENADE",
    [21] = "BZGAS",
    [22] = "FLARE",
    -- [23] = "GAS_CANISTER",
    -- [24] = "EXTINGUISHER",
    [25] = "PROGRAMMABLEAR",
    -- [26] = "TRAIN",
    -- [27] = "BARREL",
    -- [28] = "PROPANE",
    -- [29] = "BLIMP",
    -- [30] = "DIR_FLAME_EXPLODE",
    -- [31] = "TANKER",
    -- [32] = "PLANE_ROCKET",
    -- [33] = "VEHICLE_BULLET",
    -- [34] = "GAS_TANK",
    -- [35] = "BIRD_CRAP",
    [36] = "RAILGUN",
    -- [37] = "BLIMP2",
    [38] = "FIREWORK",
    -- [39] = "SNOWBALL",
    [40] = "PROXMINE",
    [41] = "VALKYRIE_CANNON",
    [42] = "AIR_DEFENSE",
    [43] = "PIPEBOMB",
    [44] = "VEHICLEMINE",
    [45] = "EXPLOSIVEAMMO",
    [46] = "APCSHELL",
    [47] = "BOMB_CLUSTER",
    [48] = "BOMB_GAS",
    [49] = "BOMB_INCENDIARY",
    [50] = "BOMB_STANDARD",
    [51] = "TORPEDO",
    [52] = "TORPEDO_UNDERWATER",
    [53] = "BOMBUSHKA_CANNON",
    [54] = "BOMB_CLUSTER_SECONDARY",
    [55] = "HUNTER_BARRAGE",
    [56] = "HUNTER_CANNON",
    [57] = "ROGUE_CANNON",
    [58] = "MINE_UNDERWATER",
    [59] = "ORBITAL_CANNON",
    [60] = "BOMB_STANDARD_WIDE",
    [61] = "EXPLOSIVEAMMO_SHOTGUN",
    [62] = "OPPRESSOR2_CANNON",
    [63] = "MORTAR_KINETIC",
    [64] = "VEHICLEMINE_KINETIC",
    [65] = "VEHICLEMINE_EMP",
    [66] = "VEHICLEMINE_SPIKE",
    [67] = "VEHICLEMINE_SLICK",
    [68] = "VEHICLEMINE_TAR",
    [69] = "SCRIPT_DRONE",
    [70] = "RAYGUN",
    [71] = "BURIEDMINE",
    [72] = "SCRIPT_MISSILE",
    [73] = "SCRIPT_MISSILE",
    [82] = "EXP_TAG_SUBMARINE_BIG"
}
