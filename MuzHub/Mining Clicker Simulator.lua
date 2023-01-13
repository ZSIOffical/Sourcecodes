local TeleportService = game:GetService("TeleportService")
hookfunction(hookfunction,function ()
    return
end)
hookfunction(game.Players.LocalPlayer.kick,function ()
    TeleportService:Teleport(game.PlaceId,game.Players.LocalPlayer)
end)
wait(0.2)
local Module = require(game:GetService("ReplicatedStorage").Modules.PlrUpgrades)
Module["Ore Pay"].Multiplier = 1 * 9e9
Module["Gem Pay"].Multiplier = 1 * 9e9

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/muzscripter/projects/main/muz.wtf/ui.lua"))()
local Project = Library.Project({
    Version = "1.2",
    SavePosition = true
})
local Home = Project:Tab("Home")
local AutoFarmTab = Project:Tab("Autofarm/s")
local Player = Project:Tab("Player")
local Teleports = Project:Tab("Teleports")
local Misc = Project:Tab("Misc")
--{{Home}}--
Home:Button("SoloDev#7416",function ()
    setclipboard("discord.gg/muzhub")
end)
Home:Button("discord.gg/muzhub",function ()
    setclipboard("discord.gg/muzhub")
end)
--{{Autofarm}}--
local AutoClick = false
local WaitMode = "Heartbeat"
local AutoSendTrades = false
local AutoRebirht = false
local EggToHatch = "Starter Egg"
local Amount = tonumber("1")
local AutoHatch = false
local AutoUpgradeItem = "Ore Pay"
local AutoUpgrade = false
local Pet_to_Auto_Enchant = "Pig"
local AutoEnchantMode = "Gold"
local AutoEnchant = false
local AutoBuyNExtPickaxe =false
local drillPart = game:GetService("Workspace").Drill.Drill.CFrame
local AutoCollectDrill = false
local modes = {
    "clicks",
    "eggs"
}
local AutoClaimMainRewards = false
local AutoClaimSideRewards = false
local AutoClaimBonus = false
local pickaxes = {"Birch Pickaxe", "Stone Pickaxe","Bronze Pickaxe","Iron Pickaxe","Gold Pickaxe", "Platinum Pickaxes", "Sponge Pickaxe", "Mushroom Pickaxe", "Heart Pickaxe","Gear Pickaxe","Cactus Pickaxe","Bone Pickaxe","Bedrock Pickaxe","Sapphire Pickaxe","Diamond Pickaxe","Emerald Pickaxe","Amber Pickaxe","Ruby Pickaxe","Amethyst Pickaxes","Opal Pickaxe","Pearl Pickaxe","Anchor Pickaxe","Coral Pickaxe","Trident Pickaxe","Glowrock Pickaxe","Solar Pickaxe","Alien Pickaxe","Obsidian Pickaxe","Molten Pickaxe","Slime Pickaxe","Meteor Pickaxe","Moonrock Pickaxe","Omega Trident Pickaxe", "Spider Pickaxe","Martian Pickaxe", "Zeus Pickaxe", "Laser Pickaxe", "Plasma Pickaxe", "Darkmatter Pickaxe","Broom Pickaxe", "Zombie Pickaxe", "Scarecrow Pickaxe", "Lantern Pickaxe", "Scythe Pickaxe","Key Pickaxe", "Cupid's Pickaxe", "Scroll Pickaxe", "Chronos Pickaxe", "Rainbow Pickaxe","Eye Pickaxe", "Skull Pickaxe", "Sceptor Pickaxe", "Pitchfork Pickaxe", "Evil Scythe Pickaxe","Tooth Pickaxe", "Bones Pickaxe", "Fossil Pickaxe", "Battle Pickaxe", "Jurassic Pickaxe","Buoy Pickaxe", "Wheel Pickaxe", "Clam Pickaxe", "Squid Pickaxe", "Sea Trident Pickaxe","Cane Pickaxe", "Pyramid Pickaxe", "Ankh Pickaxe", "Dark Pickaxe", "Pharaoh Pickaxe","Apollo Pickaxe", "Skullcrusher Pickaxe", "Crescent Pickaxe", "Thunderbolt Pickaxe", "Omnipotent Pickaxe","Cloud Pickaxe", "Degeta Pickaxe", "Bell Pickaxe", "Freezer Pickaxe", "Dragon Pickaxe"}
AutoFarmTab:Dropdown("Autofarm wait mode",{"Heartbeat","Wait"},function (v)
    WaitMode = tostring(v)
end)
AutoFarmTab:Dropdown("Egg to Auto Open",{"Starter Egg","Spotted Egg","Floral Egg","Desert Egg","Snow Egg","Cave Egg","Ocean Egg","Jungle Egg","Volcano Egg","Space Egg","Undead Egg","Heavenly Egg","Devil Egg"},function (v)
    EggToHatch = v
end)
AutoFarmTab:Dropdown("Amount of eggs to hatch at a time",{"1","3"},function (v)
    Amount = tonumber(v)
end)
AutoFarmTab:Dropdown("Auto upgrade selection",{"Ore Pay","Pet Storage","Player Speed","Auto Click Speed","Pets Equipped","Drill Speed"},function (v)
    AutoUpgradeItem = v
end)
AutoFarmTab:Dropdown("Auto Enchant Mode",{"Gold","Diamond","Emerald","Darkmatter","Sunfire"},function (v)
    AutoEnchantMode = v
end)
AutoFarmTab:Textbox("Pet to Auto Enchant","Input Here",function(v)
    Pet_to_Auto_Enchant = v
end)
AutoFarmTab:Toggle("Auto enchant",false,function (state)
    if state then
        AutoEnchant = true
    else
        AutoEnchant = false
    end
    while AutoEnchant do
        wait()
        if AutoEnchantMode == "Gold" then
            local args = {[1] = Pet_to_Auto_Enchant,}
            game:GetService("ReplicatedStorage").Remotes.CraftToGold:FireServer(unpack(args))
        elseif AutoEnchantMode == "Diamond"then
            local args = {[1] = Pet_to_Auto_Enchant,[2] = "Golden"}
            game:GetService("ReplicatedStorage").Remotes.CraftToGold:FireServer(unpack(args))
        elseif AutoEnchantMode == "Emerald" then
            local args = {[1] = Pet_to_Auto_Enchant,[2] = "Diamond"}
            game:GetService("ReplicatedStorage").Remotes.CraftToGold:FireServer(unpack(args))
        elseif AutoEnchantMode == "Darkmatter" then
            local args = {[1] = Pet_to_Auto_Enchant,[2] = "Emerald"}
            game:GetService("ReplicatedStorage").Remotes.CraftToGold:FireServer(unpack(args))
        elseif AutoEnchantMode == "Sunfire" then
            local args = {[1] = Pet_to_Auto_Enchant,[2] = "Darkmatter"}
            game:GetService("ReplicatedStorage").Remotes.CraftToGold:FireServer(unpack(args))
        end
    end
end)
AutoFarmTab:Toggle("Autoclick",false,function (state)
    if state then
        AutoClick = true
    else
        AutoClick = false
    end
    if AutoClick == true then
        if WaitMode == "Heartbeat" then
            while  AutoClick do
                game:GetService("RunService").Heartbeat:wait()
                game:GetService("ReplicatedStorage").Remotes.Click:InvokeServer()
            end
        elseif WaitMode == "Wait" then
            while AutoClick do
                wait()
                game:GetService("ReplicatedStorage").Remotes.Click:InvokeServer()
            end
        end
    end
end)
AutoFarmTab:Toggle("Autobuy next pickaxe",false,function (v)
    if v then
        AutoBuyNExtPickaxe = true
    else
        AutoBuyNExtPickaxe = false
    end
    while AutoBuyNExtPickaxe do
        for _,v in pairs(pickaxes) do
            wait()
            local args = {[1] = v}
            game:GetService("ReplicatedStorage").Remotes.BuyPickaxe:InvokeServer(unpack(args))
        end
    end
end)
AutoFarmTab:Toggle("Autocollect drill",false,function (v)
    if v then
        AutoCollectDrill = true
    else
        AutoCollectDrill = false
    end
    while AutoCollectDrill do
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = drillPart + Vector3.new(0,10,0)
        fireproximityprompt(game:GetService("Workspace").Drill.Drill.collectDrill, 1, true)
    end
end)
AutoFarmTab:Toggle("Autoclaim side rewards",false,function (v)
    if v then
        AutoClaimSideRewards = true
    else
        AutoClaimSideRewards = false
    end
    while AutoClaimSideRewards do
        wait()
        for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.rewards.achievementsPanel.RebirthCounter.scrollingFrame:GetChildren()) do
            if v:IsA("Frame") then
                local args = {[1] = v.Name}
                game:GetService("ReplicatedStorage").Remotes.claimAchievment:FireServer(unpack(args))
            end
        end
    end
end)
AutoFarmTab:Toggle("Autoclaim main rewards",false,function (v)
    if v then
        AutoClaimMainRewards = true
    else
        AutoClaimMainRewards = false
    end
    while AutoClaimMainRewards do
        wait()
        for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.moreRewards.moreRewardsPanel123.a1.scrollingFrame:GetChildren()) do
            if v:IsA("Frame") then
               local args = {[1] = tonumber(v.Name),[2] = modes[math.random(1,#modes)]}
                game:GetService("ReplicatedStorage").Remotes.GetClickReward:FireServer(unpack(args))
            end
        end
    end
end)
AutoFarmTab:Toggle("Auto hatch",false,function (state)
    if state then
        AutoHatch = true
    else
        AutoHatch = false
    end
    if EggToHatch == "Starter Egg" or "Spotted" or "Floral Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["World 1"].STARTEREGG1.Model["Meshes/EggStandArea_Cube.126 (2)"].CFrame + Vector3.new(0,10,0)
        end
    if EggToHatch == "Desert Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1557.3525390625, 42.647647857666016, -5948.1220703125) + Vector3.new(0,10,0)   end
    if EggToHatch == "Snow Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1555.4683837890625, 43.066871643066406, -5730.74365234375)+ Vector3.new(0,10,0)
    end
    if EggToHatch == "Cave Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1545.7457275390625, 42.6879768371582, -5519.3056640625)+ Vector3.new(0,10,0)
    end
    if EggToHatch == "Ocean Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1550.736328125, 43.27012252807617, -5268.537109375)+ Vector3.new(0,10,0)
    end
    if EggToHatch == "Jungle Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1555.5775146484375, 42.693756103515625, -5055.740234375)+ Vector3.new(0,10,0)
    end
    if EggToHatch == "Volcano Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1550.304443359375, 41.794105529785156, -4868.75634765625)+ Vector3.new(0,10,0)
    end
    if EggToHatch == "Space Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1556.631591796875, 42.693748474121094, -4631.60888671875)+ Vector3.new(0,10,0)
    end
    if EggToHatch == "Undead Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1551.5380859375, 42.69394302368164, -4413.5263671875)+ Vector3.new(0,10,0)
    end
    if EggToHatch == "Heavenly Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1480.287841796875, 41.794105529785156, -4127.87890625)+ Vector3.new(0,10,0)
    end
    if EggToHatch == "Devil Egg" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1552.982666015625, -12.49493408203125, -4149.46435546875)+ Vector3.new(0,10,0)
    end
    while AutoHatch do
        wait(1)
        local args = {
            [1] = EggToHatch, -- name
            [2] = Amount -- amount
        }
        
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
    end
end)
AutoFarmTab:Toggle("Auto rebirth",false,function (state)
    if state then
        AutoRebirht = true
    else
        AutoRebirht = false
    end
    while AutoRebirht do
        wait()
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
    end
end)
AutoFarmTab:Toggle("Auto upgrade",false,function (state)
    if state then
        AutoUpgrade = true
    else
        AutoUpgrade = false
    end
    while AutoUpgrade do
        wait()
        local args = {[1] = AutoUpgradeItem}
        game:GetService("ReplicatedStorage").Remotes.upgradePlr:FireServer(unpack(args))
    end
end)
AutoFarmTab:Toggle("Autoclaim Bonus",false,function (state)
    if state then
        AutoClaimBonus = true
    else
        AutoClaimBonus = false
    end
    while AutoClaimBonus do
        wait()
        game:GetService("ReplicatedStorage").Remotes.Bonus:InvokeServer()
    end
end)
AutoFarmTab:Toggle("Auto send trades to everyone",false,function (state)
    if state then
        AutoSendTrades = true
    else
        AutoSendTrades = false
    end
    while AutoSendTrades do
        for _,v in pairs(game.Players:GetPlayers()) do
            wait(5)
            local args = {
                [1] = tostring(v.Name)
            }
            
            game:GetService("ReplicatedStorage").Remotes.GetTradeInfo:InvokeServer(unpack(args))
        end
    end
end)
--{{Teleport}}--
local PlayerTable = {}
local PlrToTpTo = nil
for _,v in pairs(game.Players:GetPlayers()) do
    table.insert(PlayerTable,tostring(v.Name))
end
Teleports:Dropdown("Choose a player",PlayerTable,function (v)
    PlrToTpTo = v
end)
Teleports:Button("Teleport to player",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[PlrToTpTo].Character.HumanoidRootPart.CFrame
end)
Teleports:Button("Desert",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1495.5213623046875, 41.794105529785156, -5898.0380859375)+ Vector3.new(0,10,0)
end)
Teleports:Button("Snow",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1488.8236083984375, 41.79411697387695, -5678.400390625)+ Vector3.new(0,10,0)
end)
Teleports:Button("Ocean",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1457.2232666015625, 41.788333892822266, -5297.310546875)+ Vector3.new(0,10,0)
end)
Teleports:Button("Jungle",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1502.9259033203125, 50.531829833984375, -5056.734375)+ Vector3.new(0,10,0)
end)
Teleports:Button("Cave",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1493.9207763671875, 41.788333892822266, -5494.00830078125)+ Vector3.new(0,10,0)
end)
Teleports:Button("Volcano",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1490.533935546875, 67.35420989990234, -4833.26806640625)+ Vector3.new(0,10,0)
end)
Teleports:Button("Space",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1496.3087158203125, 41.79410171508789, -4588.26806640625)+ Vector3.new(0,10,0)
end)
Teleports:Button("Undead",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1508.5780029296875, 41.79429626464844, -4387.669921875)+ Vector3.new(0,10,0)
end)
Teleports:Button("Heaven",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1480.287841796875, 41.794105529785156, -4127.87890625)+ Vector3.new(0,10,0)
end)
Teleports:Button("Hell",function ()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1486.7037353515625, -13.300993919372559, -4141.32568359375)+ Vector3.new(0,10,0)
end)
--{{Player}}--
Player:Toggle(
        "Antiafk",
         false,
         function(v)
            local d = false
            if v == true then
                d = true
            else
                d = false
            end
            while d do
                local am = game:GetService("VirtualUser")
                game:GetService("Players").LocalPlayer.Idled:connect(
                    function()
                        am:CaptureController()
                        am:ClickButton2(Vector2.new())
                    end
                )
                wait()
            end
        end
    )
Player:Slider(
    "Hipheight",
    0,
    500,
    3,
    function (v)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = v     
    end
)
Player:Slider(
    "Jumppower",
    0,
    500,
    50,
    function (v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v     
    end
)
Player:Slider(
    "Walkspeed",
    0,
    500,
    16,
    function (v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v     
    end
)
Player:Button(
    "Reset",
    function ()
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Accessory") then
                v:Destroy()
            end
        end
     end
)
--{{Misc}}--
local Sounds = {}
local SelectedSound = "music"
local SelectedID = nil
local Volume = 1
local PlaybackSpeed = 1
for i,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Sound") then
        table.insert(Sounds,v.Name)
    end
end
Misc:Dropdown("Select Sound",Sounds,function (v)
    SelectedSound = v
end)
Misc:Slider("Volume",0,10,1,function (v)
    Volume = v
end)
Misc:Slider("Playback Speed",0,20,1,function (v)
    PlaybackSpeed = v
end)
Misc:Textbox("Custom Soundid","input here",function (v)
    SelectedID = v
end)
Misc:Button("Change",function ()
    game.Workspace[SelectedSound].SoundId = "rbxassetid://"..tostring(SelectedID)
    game.Workspace[SelectedSound].Volume = Volume
    game.Workspace[SelectedSound].PlaybackSpeed = PlaybackSpeed
end)
Misc:Button("Serverhop",function ()
    TeleportService:Teleport(game.PlaceId,game.Players.LocalPlayer)
end)