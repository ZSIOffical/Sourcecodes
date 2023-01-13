local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/4LD/itachi/ui",true))()
local Window      = Library.Project()
local tps         = Window:Tab({Text = "Teleports"})
local tps_sec     = tps:Section({Text = "Teleports"})
local buys        = Window:Tab( {Text = "Buy & Sell"})
local buys_sec    = buys:Section( {Text = "Buy & Sell"})
local auto        = Window:Tab({Text = "Autofarms"})
local auto_sec    = auto:Section({Text = "Autofarms"})
local serv        = Window:Tab({Text = "Server"})
local server      = serv:Section({Text = "Server"})
local localPlayer = Window:Tab({Text = "LocalPlayer"})
local lc          = localPlayer:Section({Text = "LocalPlayer"})
local s           = Window:Tab({Text = "Security"})
local security    = s:Section({Text = "Security"})
local places      = {
    ['NPCS'] = {
        ['Auddy'] = game:GetService("Workspace").Map.NPCs.Auddy.HumanoidRootPart.CFrame,
        ['Syrentia'] = game:GetService("Workspace").Map.NPCs.Syrentia.HumanoidRootPart.CFrame,
        ['Simplrr'] = game:GetService("Workspace").Map.NPCs.Simplrr.HumanoidRootPart.CFrame,
        ['XZ_LF'] = game:GetService("Workspace").Map.NPCs["XZ_LF"].HumanoidRootPart.CFrame,
        ['TrueSwordsMan'] = game:GetService("Workspace").Map.NPCs.TrueSwordsMan.HumanoidRootPart.CFrame,
        ['Luna'] = game:GetService("Workspace").Map.NPCs.Luna.HumanoidRootPart.CFrame,
        ['Hikarishi_XL'] = game:GetService("Workspace").Map.NPCs["Hikarishi_XL"].HumanoidRootPart.CFrame,
        ['Asakura_CT'] = game:GetService("Workspace").Map.NPCs["Asakura_CT"].HumanoidRootPart.CFrame
    }
}
local functions   = {
    ['Punch'] = function()
        game:GetService("ReplicatedStorage").StandlessRemote.Punch:FireServer()
    end,
    ['Buy'] = function(item)
        game:GetService("ReplicatedStorage").BuyItemRemote[item]:FireServer()
    end,
    ['Use'] = function(item)
        game:GetService("ReplicatedStorage").UseItem[item]:FireServer()
    end,
    ['Sell'] = function(item)
        local args = {
            [1] = item
        }

        game:GetService("ReplicatedStorage").GlobalUsedRemotes.SellItem:FireServer(unpack(args))

    end,
    ['Click'] = function(stuff)
        fireclickdetector(stuff)
    end,
    ['TP'] = function(cfr)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cfr
    end
}
_G.Settings       = {
    ['Abc'] = false,
    ['Np'] = false,
    ['boxes_wait'] = 2,
    ['time_w'] = 5,
    ['a'] = false,
    ['amount'] = 16,
    ['amount2'] = 50,
    ['Box_aura'] = 0,

}
local abc         = _G.Settings.Abc
local np          = _G.Settings.Np
local boxes_wait  = _G.Settings.boxes_wait
local time_w      = _G.Settings.time_w
local a           = _G.Settings.a
local amount      = _G.Settings.amount
local amount2     = _G.Settings.amount2
local Box_aura    = _G.Settings.Box_aura
local Http        = game:GetService("HttpService")
local filename    = "MasterHub.json"
local function saveSettings()
    if (writefile) then
        local file = Http:JSONEncode(_G.Settings)
        writefile(filename, file)
    else
        warn("Executor not supported")
    end
end

local function loadSettings()
    if (isfile and readfile and isfile(filename)) then
        local d = Http:JSONDecode(readfile(filename))
        _G.Settings.amount = d.amount
        _G.Settings.Box_aura = d.Box_aura
        _G.Settings.amount2 = d.amount2
        _G.Settings.time_w = d.time_w
        _G.Settings.a = d.a
        _G.Settings.boxes_wait = d.boxes_wait
        if _G.Settings.Abc then
            abc = true
        end
    else
        warn("Executor not supported")
    end
end

loadSettings()
local PlayerTable = {}

for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PlayerTable, v.Name)
end
local German = {
    --› Buttons,etc
    ['Antiadmin join'] = "Antiadmin beitreten",
    ['Antiban'] = 'Antiban',
    ['Block all Admins, etc'] = 'Alle Admins sperren, etc.',
    ['Kill'] = "töten",
    ['Enter a player name to kill'] = 'Geben Sie einen Spielernamen zum Töten ein',
    ['Walkspeed'] = 'Gehgeschwindigkeit',
    ['Jumppower'] = 'Sprungkraft',
    ['Click-tp tool'] = 'Klick-TP-Werkzeug',
    ['Join smallest server'] = 'Kleinstem Server beitreten',
    ['Server hop'] = 'Server-Sprung',
    ['Private Servers'] = 'Private Server',
    ['TP to boxes'] = 'Zu den Kisten teleportieren',
    ['Box Aura'] = 'Kisten Aura',
    ['Auto sell'] = 'Automatisches verkaufen',
    ['Spin Arcade'] = "Arkade drehen",
    ['Time between box tp'] = 'Zeit zwischen den Boxen tp',
    ['Time between Box Aura'] = 'Zeit zwischen Box Aura',
    ['Time between AutoSell'] = "Zeit zwischen Automatisches verkaufen",
    ['Sell'] = 'Verkaufen',
    ['Buy'] = 'kaufen',
    ['Teleport to player'] = 'Zum Spieler teleportieren',
    ['Teleport to NPC"'] = 'Zum NPC teleportieren',
    --› Sections/Tabs
    ['Teleports'] = 'Teleports',
    ['Buy & Sell'] = 'kaufen & verkaufen',
    ['Autofarms'] = 'Automatische Farmen',
    ['Server'] = 'Server',
    ['LocalPlayer'] = "Lokaler Spieler",
    ['Security'] = 'Sicherheit'
}

local __players2 = {
    "TrapShops", -- 1
    "Scrubzy_Dubzy", -- 2
    "Asakura_CT", --3
    "ESCORPION2356783", --4
    "Auuddy", --5
    "ii_ArunXz", --6
    "xQuantlem", --7
    "H_ikaa", --8
    "Blacko_Coffee", -- 10
    "Drago_TA", -- 11
    "Kiritokung100n", -- 12
    "SimpIrr", -- 13
    "RedA1ice", -- 14
    "Syrentia", -- 15
    "Auuddy", --16
}

security:Button({
    Text = "Antiadmin join",
    Callback = function()
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name == __players2[1] or __players2[2] or __players2[3] or __players2[4] or __players2[5] or
                __players2[6] or __players2[7] or __players2[7] or __players2[8] or __players2[9] or __players2[10] or
                __players2[11] or __players2[12] or __players2[13] or __players2[14] or __players2[15] or __players2[16] then
                local x = {}
                for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/"
                    .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
                    if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                        x[#x + 1] = v.id
                    end
                end
                if #x > 0 then
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
                end
            end
        end
    end
})
security:Button({
    Text = "Antiban",
    Callback = function()
        local MT = getrawmetatable(game)
        local NC = MT.namecall
        setreadonly(MT, false)

        MT.namecall = newcclosure(function(self, ...)
            local A = { ... }
            local GNCM = getnamecallmethod() or get_namecall_method()
            if GNCM == "Fire" and self.Name == "BanRemote" then
                return wait(9e9)
            end
            return NC(self, unpack(A))
        end)
        setreadonly(MT, true)
    end
})
security:Button({
    Text = "Block all Admins, etc",
    Callback = function()
        local args = {
            [1] = __players2[1] and __players2[2] and __players2[3] and __players2[4] and __players2[5] and __players2[6
                ] and __players2[7] and __players2[8] and __players2[9] and __players2[10] and __players2[11] and
                __players2[12] and __players2[13] and __players2[14] and __players2[15] and __players2[16]
        }

        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.MutePlayerRequest:InvokeServer(unpack(args))

    end
})

--// lc section
local to_kill = nil
lc:Textbox({
    Text = "Enter a player name to kill",
    PlaceholderText = "Enter a player name to kill",
    Callback = function(v)
        to_kill = v
    end
})
lc:Toggle({
    Text = "Kill",
    Callback = function(state)
        if state then
            a = true

        elseif state == false then
            a = false
        end
        while a == true do
            game:GetService("ReplicatedStorage").STWRemote.Punch:FireServer()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[to_kill].Character.
                HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
            keypress(0x45)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[to_kill].Character.
                HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
            keyrelease(0x45)
            keypress(0x52)
            wait(0.1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[to_kill].Character.
                HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
            keyrelease(0x52)
            keypress(0x46)
            wait(0.2)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[to_kill].Character.
                HumanoidRootPart.CFrame * CFrame.new(0, 0, 2)
            keyrelease(0x46)
        end
        for i, v in pairs(game:GetService 'Players'.LocalPlayer.Character:GetChildren()) do
            if v:isA("Tool") then
                local c = Instance.new("SelectionBox", v.Handle)
                c.Adornee = v.Handle
                v.Handle.Size = Vector3.new(50, 50, 50)
                v.Handle.Transparency = 1.000
            end
        end
        if a == false then
            keyrelease(0x45)
            keyrelease(0x46)
            keyrelease(0x52)
        end
    end,
    Default = false
})
lc:Toggle({
    Text = "Walkspeed",
    Callback = function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
            game.Players.LocalPlayer.Character.Humz.WalkSpeed = amount

        elseif state == false then
            game.Players.LocalPlayer.Character.Humz.WalkSpeed = 16
            game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
        end
    end,
    Default = false
})
lc:Toggle({
    Text = "Jumppower",
    Callback = function(state)
        if state then
            game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
            game.Players.LocalPlayer.Character.Humz.JumpPower = amount2
        elseif state == false then
            game.Players.LocalPlayer.Character.Humz.JumpPower = 50
            game.Players.LocalPlayer.Character.Humz.Name = "Humanoid"
        end
    end,
    Default = false
})
lc:Slider({
    Text = "Walkspeed",
    Min = 16,
    Max = 500,
    Default = 16,
    Callback = function(v)
        amount = v
        saveSettings()
    end
})
lc:Slider({
    Text = "Jumppower",
    Min = 50,
    Max = 500,
    Default = 50,
    Callback = function(v)
        amount2 = v
        saveSettings()
    end
})
lc:Button({
    Text = "Click-tp tool",
    Callback = function()
        game.StarterGui:SetCoreGuiEnabled(2, true)
        mouse = game.Players.LocalPlayer:GetMouse()
        tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Teleport tool"
        tool.Activated:connect(function()
            local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
            pos = CFrame.new(pos.X, pos.Y, pos.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end)
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
})


--// server section
server:Button({
    Text = "Join smallest server",
    Callback = function()
        local Http = game:GetService("HttpService")
        local TPS = game:GetService("TeleportService")
        local Api = "https://games.roblox.com/v1/games/"

        local _place = game.PlaceId
        local _servers = Api .. _place .. "/servers/Public?sortOrder=Asc&limit=100"
        function ListServers(cursor)
            local Raw = game:HttpGet(_servers .. ((cursor and "&cursor=" .. cursor) or ""))
            return Http:JSONDecode(Raw)
        end

        local Server, Next;
        repeat
            local Servers = ListServers(Next)
            Server = Servers.data[1]
            Next = Servers.nextPageCursor
        until Server

        TPS:TeleportToPlaceInstance(_place, Server.id, game.Players.LocalPlayer)
    end
})
server:Button({
    Text = "Server hop",
    Callback = function()
        local x = {}
        for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/"
            .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
            if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                x[#x + 1] = v.id
            end
        end
        if #x > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
        end
    end
})
server:Dropdown({
    Text = "Private Servers",
    Items = {
        "https://www.roblox.com/games/8534845015/1-Million-Visits-Stand-Sakura-Stand?privateServerLinkCode=73888934247718734824792299558581",
        "https://www.roblox.com/games/8534845015/1-Million-Visits-Stand-Sakura-Stand?privateServerLinkCode=12946371952533531549435451330963",
        "https://www.roblox.com/games/8534845015/1-Million-Visits-Stand-Sakura-Stand?privateServerLinkCode=88517381617542501359017194151125",
        "https://www.roblox.com/games/8534845015/1-Million-Visits-Stand-Sakura-Stand?privateServerLinkCode=88517381617542501359017194151125"
    },
    Callback = function(item)
        setclipboard(item)
    end
})

--// autofarm Section
auto_sec:Toggle({
    Text = "TP to boxes",
    Callback = function(state)
        if state then
            abc = true
            saveSettings()
        else
            abc = false;
            saveSettings()
        end
    end,
    Default = false
})
auto_sec:Button({
    Text = "Box Aura",
    Callback = function()
        while true do
            wait(Box_aura)
            for i, v in pairs(game:GetService("Workspace").Item:GetDescendants()) do
                if v:IsA("ClickDetector") then
                    fireclickdetector(v)
                end
            end
        end
    end
})
auto_sec:Button({
    Text = "Auto sell",
    Callback = function()
        Items = {
            "Haunted Sword",
            "Rokakaka",
            "Arrow",
            "Mysterious Camera",
            "Stone Mask",
            "Stop Sign",
            "Hamon Manual",
            "Spin Manual",
        }
        while wait(time_w) do
            functions.Sell(Items[1])
            functions.Sell(Items[2])
            functions.Sell(Items[3])
            functions.Sell(Items[4])
            functions.Sell(Items[5])
            functions.Sell(Items[6])
            functions.Sell(Items[7])
            functions.Sell(Items[8])
        end
    end
})
auto_sec:Button({
    Text = "Spin Arcade",
    Callback = function()
        local args = {
            [1] = false,
            [2] = false
        }
        game:GetService("ReplicatedStorage").GlobalUsedRemotes.ArcadePurchase:FireServer(unpack(args))
    end
})
auto_sec:Slider({
    Text = "Time between box tp",
    Min = 0.1,
    Max = 10,
    Default = 2,
    Callback = function(value)
        boxes_wait = value
        saveSettings()
    end
})
auto_sec:Slider({
    Text = "Time between Box Aura",
    Min = 0.1,
    Max = 10,
    Default = 0,
    Callback = function(value)
        Box_aura = value
        saveSettings()
    end
})
auto_sec:Slider({
    Text = "Time between AutoSell",
    Min = 0.1,
    Max = 10,
    Default = 0,
    Callback = function(value)
        time_w = value
        saveSettings()
    end
})


--// buy & Sell section
buys_sec:Dropdown({
    Text = "Sell",
    Items = {
        "Vampire",
        "Rokakaka",
        "Arrow",
        "Hamon",
        "Stone Mask",
        "StopSign",
        "Camera",
        "Spin" },
    Callback = function(toSell)
        functions.Sell(toSell)
    end
})
buys_sec:Dropdown({
    Text = "Buy",
    Items = {
        "Vampire",
        "Rokakaka",
        "Arrow",
        "Hamon",
        "Stone Mask",
        "StopSign",
        "Camera",
        "Spin"
    },
    Callback = function(toBuy)
        functions.Buy(toBuy)
    end
})


--// tp section
tps_sec:Dropdown({
    Text    = "Teleport to player",
    Items    = PlayerTable,
    Callback = function(v)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v].Character.HumanoidRootPart.CFrame *
            CFrame.new(0, 0, 1)
    end
})
tps_sec:Dropdown({
    Text    = "Teleport to NPC",
    Items    = {
        "Auddy", "Syrentia", "Simplrr", "XZ_LF", "TrueSwordsMan", "Luna", "Hikarishi_XL", "Asakura_CT"
    },
    Callback = function(v)
        functions.TP(places.NPCS[v])
    end
})





























local vis = game:service('VirtualUser')
game:service('Players').LocalPlayer.Idled:connect(function()
    vis:CaptureController()
    vis:ClickButton2(Vector2.new())
end)

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

--// tp to boxes
spawn(function()
    while wait(boxes_wait) do
        if abc then
            for _, v in pairs(game:GetService("Workspace").Item:GetChildren()) do
                if v:IsA("Model") and v.Name == "Box" then
                    if v:FindFirstChild("ClickDetector") and v:FindFirstChild("AC") and v:FindFirstChild("Used") == nil then
                        pcall(function()
                            repeat task.wait()
                                moveto(v.Box.CFrame + Vector3.new(0, 5, 4), 500)
                            until not abc or v:FindFirstChild("ClickDetector") == nil or v:FindFirstChild("Used")
                        end)
                    end
                end
            end
        end
    end
end)
