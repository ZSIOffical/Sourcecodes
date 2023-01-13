--{{ Functions }}--
function openEgg(Egg)
    local args = {[1] = Egg,[2] = "Hatch" }    
    game:GetService("ReplicatedStorage").Remotes.Gameplay.RequestPetPurchase:InvokeServer(unpack(args))
end
function Tp(cframe)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cframe
end
function claimAchivement(v)
    local args = {[1] = v}
     game:GetService("ReplicatedStorage").Events.AchievementCompleted:FireServer(unpack(args)) 
 end
--{{ Vars }}--
--// ui vars
local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/UILib/itachi/source.lua"))()
local h = UILib:Init({Title = "Phantom Hub"})
local h1 = h:Tab("Autofarms")
local AutoFarm_Sec = h1:Section("Autofamrs")
--// script vars 
local Eggs = {}
local Mobs = {}
local Achievements = {}

local randomMob = nil
local EggToAutoBuy = nil

local AutoKillMob = false
local AutoBuyEgg = false
local AutoclaimAchievements = false

local waitMode = "HeartBeat"
--{{ Vars addition }}--
for _,v in pairs(game:GetService("Workspace").Eggs.Holders:GetChildren()) do
    if v:IsA("Model") then
        table.insert(Eggs,tostring(v.Name))
    end
end
for _,v in pairs(game:GetService("Workspace").Mobs["1"]:GetChildren()) do 
    if v:IsA("Model") then 
        table.insert(Mobs,tostring(v.Name)) 
        wait(0.2)
        randomMob = Mobs[math.random(#Mobs)]
    end 
end
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Achievements.Main.ListFrame:GetChildren()) do
    if v:IsA("Frame") then
        if v.Name ~= "PaddingFrame" then
            table.insert(Achievements,v.Name)
            wait(0.1)
            randomAchievement = Achievements[math.random(#Achievements)]
        end 
    end
end
game:GetService("Players").LocalPlayer.PlayerGui.Achievements.Main.ListFrame.Changed:connect(function ()
    if v:IsA("Frame") then
        if v.Name ~= "PaddingFrame" then
            table.insert(Achievements,v.Name)
            wait(0.1)
            randomAchievement = Achievements[math.random(#Achievements)]
        end 
    end
end)

game:GetService("Workspace").Mobs["1"].Changed:connect(function ()
    for _,v in pairs(game:GetService("Workspace").Mobs["1"]:GetChildren()) do
        if v:IsA("Model") then
            table.insert(Mobs,tostring(v.Name))
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            wait(0.2)
            randomMob = Mobs[math.random(#Mobs)]
        end
    end
end)
--{{ Script }}--
--// Autofarms
AutoFarm_Sec:NewDropdown({Title="Egg to Autoopen",Items=Eggs,Callback=function (v)
    EggToAutoBuy = v
end})
AutoFarm_Sec:NewDropdown({Title="Autofarm waitmode",Items={"HeartBeat","Wait"},Callback=function (v)
    waitMode = v
end})
AutoFarm_Sec:NewToggle({Title="Auto open egg",Default=false,Callback=function (v)
    AutoBuyEgg = v
    while AutoBuyEgg do
        wait()
        openEgg(EggToAutoBuy)
    end
end})
AutoFarm_Sec:NewToggle({Title="Autofarm",Default=false,Callback=function (v)
    AutoKillMob = v
        while AutoKillMob do
            if waitMode == "Wait" then
                wait()
            elseif waitMode == "HeartBeat" then
                game:GetService("RunService").Heartbeat:wait()
            end
            mouse1click()
            game:GetService("Players").LocalPlayer.PlayerScripts.BloxbizSDK["Configuration_PROD"]["TIME_BETWEEN_HEART_BEAT"].Value = 0
            Tp(game:GetService("Workspace").Mobs["1"][randomMob].HumanoidRootPart.CFrame + Vector3.new(1,0,1))
        end
    
end})
AutoFarm_Sec:NewToggle({Title="AutoclaimAchievements",Default=false,Callback=function (v)
    AutoclaimAchievements = v
        while AutoclaimAchievements do
            wait()
            randomAchievement = Achievements[math.random(#Achievements)]
            claimAchivement(randomAchievement)
        end
end})