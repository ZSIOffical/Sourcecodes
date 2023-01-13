local Eggs = {}
function openEgg(egg)
    local args = {[1] = egg,[2] = false,[3] = false}
    game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
end
function quest(quest)
    local args = {[1] = "Request",[2] = "Demon Village"}
    game:GetService("ReplicatedStorage").Remotes.QuestRemote:InvokeServer(unpack(args))
end
function EvolveWepon(name)
    local args = {
        [1] = name
    }
    game:GetService("ReplicatedStorage").Remotes.WeaponEvolve:FireServer(unpack(args))

end
function teleport(World)
        local args = {
        [1] = "world",
        [2] = World
    }

game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))

end
local AutoQuest = false
local Quests = game:GetService("Players").LocalPlayer.PlayerGui.MainGui.HUD.Left.Quests.ScrollList
local CurrentQuest = ""
for i,v in pairs(Quests:GetChildren()) do
    if v:IsA("Frame") then
        CurrentQuest = v.Name
    end
end
local worlds = {}
local Enmies = {
    ["Imp City"] = {"Elite Imp","Warrior Imp","Royal Imp","Killer","Nomo"},
    ["Ant Kingdom"]= {"Ant","Elite Ant","Red Ant","Army Ant","Ant Queen","Hunted King"},
    ["Blox Docks"]= {"Fish Pirate","Marine","Clown Pirate","Barbaric Pirate","Arshark"},
    ["Hero Academy"] = {"Villain","Thug","Beast","Evolved Beast","One Man","Overhead"},
    ["Walled City"] = {"Giant","Elite Giant","Warrior Giant","Beast Giant","Royal Giant","Armored Giant"},
    ["City A2"] = {"Monster","Elite Monster","Royal Monster","Warrior Monster","Reptillian King","Split Hair"},
    ["Shinobiville"] = {"Clone Shinobi","Elite Shinobi","Shadow Shinobi","Serparu"},
    ["Dragon World"] = {"Elite Force","Red Force","Yellow Force","Green Force","Freezer","Cellium"},
    ["Demon Village"] = {"Demon Soldier","Demon Guirdian","Elite Demon","Weak Demon"},
    ["Spirit Society"] = {"Elite Soulless","Soulless","Royal Soulless","Warrior Soulless","Grim","Soulless King"}
}
for i,v in pairs(Enmies) do
    table.insert(worlds,i) 
    table.sort(worlds)
end
function AutoKillEnemyQuest(World,Mob)
    if AutoQuest == true then
        while AutoQuest do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies[World][Mob].HumanoidRootPart.CFrame
            mouse1click()  
            wait()
        end
    end
end
local Eggs1 = game:GetService("Workspace").Eggs
for i,v in pairs(Eggs1:GetChildren()) do
    if v:IsA("Model") then
        table.insert(Eggs,v.Name)
    end
end
local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/UILib/itachi/source.lua"))()
local h = UILib:Init({Title = "Phantom Hub"})
local h1 = h:Tab("Autofarms")
local h2 = h:Tab("Teleports")
local h3 = h:Tab("Player")
local h4 = h:Tab("Credits")
local cr = h4:Section("Credits")
cr:NewButton({Title="SoloDev#7416",Callback=function ()
    setclipboard("https://discord.gg/h3sExDK6uQ")
end})
cr:NewButton({Title="discord.gg/h3sExDK6uQ",Callback=function ()
    setclipboard("https://discord.gg/h3sExDK6uQ")

end})
local plr = h3:Section("Player")
plr:NewSlider({Title="Walkspeed",Max=500,Min=0,Default=16,Callback=function (v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end})
plr:NewSlider({Title="Jumppower",Max=500,Min=0,Default=50,Callback=function (v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end})
plr:NewToggle({Title="sit",Default=false,Callback=function (v)
    if v then
        game.Players.LocalPlayer.Character.Humanoid.Sit = true
    else
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
end})
plr:NewButton({Title="Reset",Callback=function ()
    game.Players.LocalPlayer.Character.Head:Destroy()
end})
local telportsSec = h2:Section("Teleports")
local Enemie = h1:Section("Select Enemie")
local Autofarms = h1:Section("Autofarms")
local world = ""
local  players = {}

for i,v in pairs(game.Players:GetPlayers()) do    
    table.insert(players,v.Name)
    table.sort(players)
end
game.Players.Changed:connect(function ()
    for i,v in pairs(game.Players:GetPlayers()) do    
        table.insert(players,v.Name)
        table.sort(players)
    end
end)
local playerToTpTO = ""
telportsSec:NewDropdown({Title="Select World",Items=worlds,Callback=function (v)
    world = v
end})
telportsSec:NewDropdown({Title="Select Player",Items=players,Callback=function (v)
    playerToTpTO = v
end})
telportsSec:NewButton({Title="Teleport to world",Callback=function ()
    local randomEnemie  =  {}
    local realRandomEnemie = ""
    for i,v in pairs(Enmies[world]) do
       table.insert(randomEnemie,v)
       realRandomEnemie = randomEnemie[math.random(#randomEnemie)]
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies[world][realRandomEnemie].HumanoidRootPart.CFrame
end})
telportsSec:NewButton({Title="Teleport to Player",Callback=function ()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[playerToTpTO].Character.HumanoidRootPart.CFrame end})
-----------------------
local Mob = "Weak Demon"
local AutoKillMob = false
local AutoEquipWepon = false
local World = "Blox Docks"
Enemie:NewDropdown({Title="Imp City",Items=Enmies["Imp City"],Callback=function (v)
    Mob =v
    World = "Imp City"
end})
Enemie:NewDropdown({Title="Ant Kingdom",Items=Enmies["Ant Kingdom"],Callback=function (v)
    Mob = v
    World = "Ant Kingdom"
end})
Enemie:NewDropdown({Title="Blox Docks",Items=Enmies["Blox Docks"],Callback=function (v)
    Mob = v
    World = "Blox Docks"
end})
Enemie:NewDropdown({Title="Hero Academy",Items=Enmies["Hero Academy"],Callback=function (v)
    Mob = v
    World = "Hero Academy"
end})

Enemie:NewDropdown({Title="Walled City",Items=Enmies["Walled City"],Callback=function (v)
    Mob = v
    World = "Walled City"
end})
Enemie:NewDropdown({Title="City A2",Items=Enmies["City A2"],Callback=function (v)
    Mob = v
    World = "City A2"
end})
Enemie:NewDropdown({Title="Shinobiville",Items=Enmies["Shinobiville"],Callback=function (v)
    Mob = v
    World = "Shinobiville"
end})
Enemie:NewDropdown({Title="Dragon World",Items=Enmies["Dragon World"],Callback=function (v)
    Mob = v
    World = "Dragon World"
end})
Enemie:NewDropdown({Title="Demon Village",Items=Enmies["Demon Village"],Callback=function (v)
    Mob = v
    World = "Demon Village"
end})
Enemie:NewDropdown({Title="Spirit Society",Items=Enmies["Spirit Society"],Callback=function (v)
    Mob =v
    World ="Spirit Society"
end})
game.Workspace.Enemies[World].ChildRemoved:connect(function (v)
    if v.Name == Mob then
        Mob = Mob
    end
end)
game.Workspace.Enemies[World].ChildAdded:connect(function (v)
    if v.Name == Mob then
        Mob = Mob
    end
end)
local selectedEgg = nil
local AutoOpenEgg = false
local AutoCraft = false
local swords = {}
local SelectedSword = ""
local Shards = {"Uncommon Shard","Rare Shard","Legendary Shard","Mythical Shard","Secret Shard"}
local ShardToAutoCraft = ""
local autoCraftShards = false
function craftShard(shard)
    local args = {[1] =shard}
    game:GetService("ReplicatedStorage").Remotes.CraftShard:InvokeServer(unpack(args)) 
end
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Frames.Inventory.Main.ScrollList:GetChildren()) do
    table.insert(swords,v.Name)
    table.sort(swords)
end
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Frames.Inventory.Main.ScrollList.Changed:connect(function ()
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Frames.Inventory.Main.ScrollList:GetChildren()) do
        table.insert(swords,v.Name)
        table.sort(swords)
    end
end)
Autofarms:NewDropdown({Title="Select Shard",Items=Shards,Callback=function (v)
    ShardToAutoCraft = v
end})
Autofarms:NewDropdown({Title="Select Egg",Items=Eggs,Callback=function (v)
    selectedEgg = v
end})
Autofarms:NewDropdown({Title="Select Sword",Items=swords,Callback=function (v)
    SelectedSword = v
end})
Autofarms:NewToggle({Title="Autoopen Egg",Default=false,Callback=function (v)
    AutoOpenEgg = v
    while AutoOpenEgg do
        wait()
        openEgg(selectedEgg)
    end
end})
Autofarms:NewToggle({Title="Autokill Enemie",Default=false,Callback=function (v)
    AutoKillMob = v
    while AutoKillMob do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Enemies[World][Mob].HumanoidRootPart.CFrame
        mouse1click()  
        wait()
        
    end
end})
Autofarms:NewToggle({Title="Autocraft sword",Default=false,Callback=function (v)
    AutoCraft = v
    while AutoCraft do
        local args = {[1] = SelectedSword,[2] = "Sword"}
        game:GetService("ReplicatedStorage").Remotes.Craft:InvokeServer(unpack(args))
    end

end})
Autofarms:NewToggle({Title="Autocraft shard",Default=false,Callback=function (v)
    autoCraftShards = v
    while autoCraftShards do
        craftShard(ShardToAutoCraft)
    end

end})
Autofarms:NewButton({Title="Open Egg",Callback=function ()
    openEgg(selectedEgg)
end})
--[[
Autofarms:NewToggle({Title="Autoequip Wepon",Default=false,Callback=function (v)
    AutoEquipWepon = v
    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Frames.Inventory.Main.ScrollList.ChildAdded:connect(function(v1)
        if AutoEquipWepon then
            for i,v12 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Frames.Inventory.Main.ScrollList:GetChildren()) do
                local args = {[1] = "Unequip",[2] = v12.Name}
                game:GetService("ReplicatedStorage").Remotes.PetRemote:FireServer(unpack(args))
            end
        end
    end)
    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Frames.Inventory.Main.ScrollList.ChildAdded:connect(function(v1)
        wait(0.5)
        if AutoEquipWepon then
            local args = {[1] = "equip",[2] = v1.Name}
            game:GetService("ReplicatedStorage").Remotes.EquipItem:FireServer(unpack(args))
        end
    end)
end})
local t = {}
local AutoEquipBestPet = false
-- Ignore since I'm still fixing it
Autofarms:NewToggle({Title="Autoequip best pet",Default=false,Callback=function (v)
    AutoEquipBestPet = v
end})
game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Frames.Companions.Main.ScrollList.Changed:connect(function (v)
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Frames.Companions.Main.ScrollList:GetChildren()) do
        if v:IsA("ImageButton") then
            table.insert(t,v.Name)
            table.sort(t)
            if AutoEquipBestPet then
                local args = {[1] = "Unequip",[2] = v.Name}
                game:GetService("ReplicatedStorage").Remotes.PetRemote:FireServer(unpack(args))
            end
            
        end
    end
    wait(0.5)
    if AutoEquipBestPet then
        for i,v in pairs(t) do
        local args = {[1] = "Equip",[2] = v}
        game:GetService("ReplicatedStorage").Remotes.PetRemote:FireServer(unpack(args))
        end
       
    end
end)
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Frames.Companions.Main.ScrollList:GetChildren()) do
    if v:IsA("ImageButton") then
        table.insert(t,v.Name)
        table.sort(t)
        if AutoEquipBestPet then
            if AutoEquipBestPet then
                local args = {[1] = "Equip",[2] = t[1]}
                game:GetService("ReplicatedStorage").Remotes.PetRemote:FireServer(unpack(args))
                local args1 = {[1] = "Equip",[2] = t[2]}
                game:GetService("ReplicatedStorage").Remotes.PetRemote:FireServer(unpack(args1))
                local args2 = {[1] = "Equip",[2] = t[3]}
                game:GetService("ReplicatedStorage").Remotes.PetRemote:FireServer(unpack(args2))
            end
        end
    end
end
]]