--[[
  Really Old btw
]]
repeat wait() until game:IsLoaded()

local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {Title = "muz.wtf"; Text = "Script Loaded"; Duration = 5; Button1 = "Ok"; })

local Framework = loadstring(game:HttpGet("https://pastebinp.com/raw/KP1dUHFg"))()
local Watermark = Framework:CreateWatermark("muz.wtf | {game} | {fps}")
local WriteLine  = Framework:CreateWindow("Sakura Stands", Vector2.new(600, 510), Enum.KeyCode.RightControl)
local General = WriteLine:CreateTab("Main Tab")
local server = WriteLine:CreateTab("Server")
local web = WriteLine:CreateTab("Webhooks")
local creds = WriteLine:CreateTab("Credits")
local Main = General:CreateSector("Main", "left")
local misc = General:CreateSector("Misc", "right")
local cred = creds:CreateSector("Credits", "left")
local serv = server:CreateSector("Server", "left")
local serv2 = server:CreateSector("Other", "Right")
local web1 = web:CreateSector("Web Hooks", "left")
local tele = General:CreateSector("Teleports", "right")

local AS = General:CreateSector("Skills", "left")

cred:AddLabel("Server | https://discord.gg/fKuzp8YDmT")

cred:AddLabel("Developers | ! muz")

local client = game:GetService("Players").LocalPlayer
local user = client.Name

local TweenService = game:GetService("TweenService")
local noclipE = true
local antifall = true

local function noclip()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
    end
end

local function moveto(obj, speed)
    local info = TweenInfo.new(
        ((client.Character.HumanoidRootPart.Position - obj.Position).Magnitude) / speed,
        Enum.EasingStyle.Linear)
    local tween = TweenService:Create(client.Character.HumanoidRootPart, info, {
        CFrame = obj
    })

    if not client.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        antifall = Instance.new("BodyVelocity", client.Character.HumanoidRootPart)
        antifall.Velocity = Vector3.new(0, 0, 0)
        noclipE = game:GetService("RunService").Stepped:Connect(noclip) 
        tween:Play()
    end

    tween.Completed:Connect(function()
        antifall:Destroy()
        noclipE:Disconnect()
    end)
end

function click()
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(800,800, 0, true, game, 1)
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(800,800, 0, false, game, 1)
end

local Library =
loadstring(
game:HttpGet("https://raw.githubusercontent.com/muzrblx/nanocore/main/NanoLoader/Settings/Library.lua", true)
)()


for _,v in pairs(game:GetService("Workspace").Map.Barriers["Barrier Group"]:GetChildren()) do
    if v:IsA("Part") then
        v:Destroy()
    end
end

local dummies = {
    "Blocking Dummy",
    "Attacking Dummy",
    "Dummy",
    "Reflecting Dummy"
}

Main:AddDropdown("Choose Dummy", dummies, "Select Dummy", false, function(x)
    getgenv().dummywanted = x
end)

Main:AddToggle("Dummy Farm",false, function(p)
    getgenv().df = p
end)

spawn(function()
    while task.wait() do
        if df then
            for i,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v:IsA("Model") and v.Name == getgenv().dummywanted then
                    if v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
                            click()
                        until not df or v.Humanoid.Health <= 0
                    end
                end
            end
        end
    end
end)

Main:AddToggle("Auto Collect Boxes", false, function(m)
    getgenv().acb = m
end)

spawn(function()
    while task.wait() do
        if getgenv().acb then
            for _,v in pairs(game:GetService("Workspace").Item:GetChildren()) do
                if v:IsA("Model") and v.Name == "Box" then
                    if v:FindFirstChild("ClickDetector") and v:FindFirstChild("AC") and v:FindFirstChild("Used") == nil then
                        pcall(function()
                            repeat task.wait()
                                moveto(v.Box.CFrame + Vector3.new(0,5,4), 500)
                                fireclickdetector(v.ClickDetector)
                                fireclickdetector(v.ClickDetector)
                            until not getgenv().acb or v:FindFirstChild("ClickDetector") == nil or v:FindFirstChild("Used")
                            fireclickdetector(v.ClickDetector)
                        end)
                    end
                end
            end
        end
    end
end)

Main:AddLabel("Farming Misc")



local old; -- make a variable that you can remember / callback to 
old = hookmetamethod(game, '__namecall', function(self, ...) -- The metamethods that are commonly used are (__namecall, __index, __newindex)
    local method = getnamecallmethod() -- namecallmethod, Ex: :Kick(), :Play(), :Stop()
    
    if method == 'Kick' then 
        return 'nope'
    end
    
    return old(self, ...) -- Return our old variable to prevent crashing
end)

misc:AddButton("Reset Char", function()
    client.Character.HumanoidRootPart:Destroy()
    client.Character.Humanoid:Destroy()
end)

local items = {
    "Haunted Sword",
    "Rokakaka",
    "Arrow",
    "Mysterious Camera",
    "Stone Mask",
    "Stop Sign",
    "Hamon Manual",
    "Spin Manual"
}

Main:AddDropdown("Auto Sell Item", items, "Select Item", false, function(t)
    getgenv().itemchosen = t
end)

Main:AddToggle("Auto Sell",false, function(z)
    getgenv().autosell = z
end)

Main:AddToggle("Auto Sell All Items", false, function(ok)
    getgenv().asa = ok
end)

Main:AddLabel("Auto Sell | Farming")

spawn(function()
    while task.wait() do
        if asa then
            for i,v in pairs(client.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    pcall(function()
                        repeat task.wait()
                            client.Character.Humanoid:EquipTool(v)
                            local args = {[1] = v.Name}
                            game:GetService("ReplicatedStorage").GlobalUsedRemotes.SellItem:FireServer(unpack(args))
                        until not asa
                    end)
                end
            end
        end
    end
end)

spawn(function()
    while task.wait() do
        if autosell then
            for i,v in pairs(client.Backpack:GetChildren()) do
                if v:IsA("Tool") and v.Name == getgenv().itemchosen then
                    pcall(function()
                        repeat task.wait()
                            client.Character.Humanoid:EquipTool(v.Name)
                            local args = {[1] = getgenv().itemchosen}
                            game:GetService("ReplicatedStorage").GlobalUsedRemotes.SellItem:FireServer(unpack(args))
                        until not autosell
                    end)
                end
            end
        end
    end
end)

local npccframes = {
    ["Asakura_CT"] = CFrame.new(-193.987778, -32.0086823, 1464.33118, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Hikarishi_XL"] = CFrame.new(-508.401672, -32.9644623, 1504.68298, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    ["Luna"] = CFrame.new(-619.713318, -32.5265427, 1921.901, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["True Swords Man"] = CFrame.new(57.5094452, -32.5372467, 1576.53186, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["XZ_LF"] = CFrame.new(-695.704956, -31.3541031, 1651.71326, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    ["Simplrr"] = CFrame.new(-397.28891, -30.792038, 1825.06287, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Syrentia"] = CFrame.new(-203.474274, -31.6497803, 1440.16992, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    ["Auddy"] = CFrame.new(-377.414642, -32.2280426, 1827.39624, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

local npc = {}
for i, v in pairs(npccframes) do
    table.insert(npc, i)
end

tele:AddDropdown("NPC Teleport Seleciton", npc, "Select NPC", false, function(y)
    getgenv().selectednpc = y
end)

tele:AddButton("Teleport to NPC", function()
    moveto(npccframes[getgenv().selectednpc] + Vector3.new(0,0,3), 600)
end)

serv:AddButton("Rejoin Server", function()
    local TeleportService = game:GetService("TeleportService")
    TeleportService:Teleport(game.GameId, game.Players.LocalPlayer)
end)

serv:AddButton("Server Hop", function()
    local TeleportService = game:GetService("TeleportService")
    TeleportService:Teleport(game.GameId, game.Players.LocalPlayer)
end)

local old;
old = hookmetamethod(game, '__index', function(i,v) 
    if tostring(i) == 'Humanoid' and tostring(v) == 'WalkSpeed' then 
        return 16 
    end
    
    if tostring(i) == 'Humanoid' and tostring(v) == 'JumpPower' then 
        return 50 
    end
    
    
    return old(i,v)
end)


misc:AddSlider("JumpPower", 50,50,100,500, function(num)
    client.Character.Humanoid.JumpPower = num
end)

misc:AddSlider("WalkSpeed", 16,16,500,1000, function(num)
    spawn(function()
        while task.wait() do
            if client.Character.Humanoid.WalkSpeed ~= num then
                repeat task.wait()
                    client.Character.Humanoid.WalkSpeed = num
                until client.Character.Humanoid.WalkSpeed == num
            end
        end
    end)
end)

AS:AddToggle(
    "Auto Skill E",
    false,
    function(e)
        getgenv().autoskille = e
    end
)

AS:AddToggle(
    "Auto Skill R",
    flase,
    function(e)
        getgenv().autoskillr = e
    end
)

AS:AddToggle(
    "Auto Skill F",
    false,
    function(e)
        getgenv().autoskillf = e
    end
)

AS:AddToggle(
    "Auto Skill T",
    false,
    function(e)
        getgenv().autoskillt = e
    end
)

AS:AddToggle(
    "Auto Skill Y",
    false,
    function(e)
        getgenv().autoskilly = e
    end
)

AS:AddToggle(
    "Auto Skill B",
    false,
    function(e)
        getgenv().autoskillb = b
    end
)

AS:AddToggle(
    "Auto Skill N",
    false,
    function(e)
        getgenv().autoskilln = e
    end
)

AS:AddToggle(
    "Auto Skill G",
    false,
    function(e)
        getgenv().autoskillg = e
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if autoskille then
                        repeat
                            pcall(
                                function()
                                    keypress(0x45)
                                    wait(1)
                                    keyrelease(0x45)
                                end
                            )
                        until not autoskille
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if autoskillb then
                        repeat
                            pcall(
                                function()
                                    keypress(0x45)
                                    wait(1)
                                    keyrelease(0x45)
                                end
                            )
                        until not autoskillb
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if autoskilln then
                        repeat
                            pcall(
                                function()
                                    keypress(0x45)
                                    wait(1)
                                    keyrelease(0x45)
                                end
                            )
                        until not autoskilln
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if autoskillg then
                        repeat
                            pcall(
                                function()
                                    keypress(0x45)
                                    wait(1)
                                    keyrelease(0x45)
                                end
                            )
                        until not autoskillg
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if autoskillf then
                        repeat
                            pcall(
                                function()
                                    keypress(0x46)
                                    wait(1)
                                    keyrelease(0x46)
                                end
                            )
                        until not autoskillf
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if autoskillr then
                        repeat
                            pcall(
                                function()
                                    keypress(0x52)
                                    wait(1)
                                    keyrelease(0x52)
                                end
                            )
                        until not autoskillr
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if autoskillt then
                        repeat
                            pcall(
                                function()
                                    keypress(0x54)
                                    wait(1)
                                    keyrelease(0x54)
                                end
                            )
                        until not autoskillt
                    end
                end
            end
        )
    end
)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if autoskilly then
                        repeat
                            pcall(
                                function()
                                    keypress(0x59)
                                    wait(1)
                                    keyrelease(0x59)
                                end
                            )
                        until not autoskilly
                    end
                end
            end
        )
    end
)

local function DiscordInviter(DiscordCode)

    pcall(function()
        local JSONEncode, JSONDecode, GenerateGUID = game.HttpService.JSONEncode, game.HttpService.JSONDecode,
            game.HttpService.GenerateGUID
        local Request = syn and syn.request or request
        Request({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = JSONEncode(game.HttpService, {
                cmd = "INVITE_BROWSER",
                args = {
                    code = DiscordCode
                },
                nonce = GenerateGUID(game.HttpService, false)
            })
        })
    end)
end


cred:AddButton("Press to join discord", function()
    pcall(function()
        DiscordInviter("fKuzp8YDmT")
    end)
end)

Main:AddToggle("Silver Chariot Farm",false, function(ez)
    getgenv().charfarm = ez
end)

spawn(function()
    while task.wait() do
        if charfarm then
            for _,v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v:IsA("Model") and v.Name == "Chariot Requiem" and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                    repeat task.wait()
                        moveto(v.HumanoidRootPart.CFrame + Vector3.new(0,0,3), 200)
                        click()
                    until not charfarm or v:FindFirstChild("HumanoidRootPart") == nil or v.Humanoid.Health < 0
                end
            end
        end
    end
end)

serv:AddButton("Anti Ban", function()
    local MT = getrawmetatable(game)
    local NC = MT.namecall
    setreadonly(MT, false)

    MT.namecall = newcclosure(function(self, ...)
    local A = {...}
    local GNCM = getnamecallmethod() or get_namecall_method()
    if GNCM == "Fire" and self.Name == "BanRemote" then
        return wait(9e9)
    end
    return NC(self, unpack(A))
    end)
    setreadonly(MT, true)
end)

spawn(function()
    while task.wait() do
        if antieffects then
            for _,v in pairs(game:GetService("Workspace").Effects:GetChildren()) do
                if v:IsA("Model") then
                    repeat task.wait()
                        v:Destroy()
                    until not antieffects or game:GetService("Workspace").Effects:FindFirstChild(v) == nil
                end
            end
        end
    end
end)

serv2:AddButton("Remove Rain Parts", function()
    for _,v in pairs(client:GetChildren()) do
        if v:IsA("Part") and string.find(v.Name, "Rain") then
            v:Destroy()
        end
    end
end)


serv2:AddButton("Remove BG Music", function()
    for i,v in pairs(game:GetService("Workspace").BGMusic:GetChildren()) do
        if v:IsA("Sound") then
            v:Destroy()
        end
    end
end)

serv2:AddButton("Remove Wind Parts", function()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v:IsA("Part") and v.Name == "Wind" then
            v:Destroy()
        end
    end
end)


local itemstobuy = {
    "Arrow",
    "Rokakaka",
    "StopSign",
    "HamonManual",
    "SpinManual",
    "StoneMask",
    "MysteriousCamera"
}

serv2:AddDropdown("Select Item To Buy", itemstobuy, "Select Item", false, function(x)
    getgenv().wanted_item = x
end)

serv2:AddButton("Buy Item", function(x)
    game.ReplicatedStorage.BuyItemRemote[getgenv().wanted_item]:FireServer()
end)

web1:AddTextbox("Webhook Here", false, function(x)
    getgenv().webhook = x
end)

web1:AddToggle("Webhook Toggle", false, function(y)
    getgenv().use_webhook = y
end)

web1:AddTextbox("Discord User-ID", false, function(x)
    getgenv().userid = x
end)

web1:AddButton("Test Webhook", function()
    if getgenv().use_webhook then
    msg = {
            ["content"] = "<@!"..getgenv().userid..">",
            ["embeds"] = {{
                    ["color"] = 000000,
                    ["description"] = "testing webhook (enabled)",
                    ["author"] = {
                        ["name"] = "muz.wtf | webhook"
                    }
            }}
        }

        local response =
        syn.request({
            Url = getgenv().webhook,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"

            },
            Body = game:GetService("HttpService"):JSONEncode(msg)
        })
    else
        msg = {
            ["content"] = "<@!"..getgenv().userid..">",
            ["embeds"] = {{
                    ["color"] = 000000,
                    ["description"] = "testing webhook (disabled)",
                    ["author"] = {
                        ["name"] = "muz.wtf | webhook"
                    }
            }}
        }

        local response =
        syn.request({
            Url = getgenv().webhook,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"

            },
            Body = game:GetService("HttpService"):JSONEncode(msg)
        })
    end
end)
