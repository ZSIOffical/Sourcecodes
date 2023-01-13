getgenv().Settings = {
    ['Owner'] = "CharlesRivas45", -- owner's name
    ['Fps'] = 60,
    ['advertMsg'] = "",
    ['Prefix'] = ".",
    ['GodMode'] = false,
    ['Webhook'] = "https://discord.com/api/webhooks/989283669137063996/pk3TwR6Lt1GHS1jSbdd59HQL1WNcxPeImgJG2zrDq6W2ZV8zT3dTXMNHxlEXI11D1Zjl", -- webhook url or remove the string and type false in it
}
--[[› Cmds ‹]]--
--» version 1 «--
--› drop/adrop/undrop amount = loop drops an amount of cash that you said (example: drop 100) + adrop is the same, but it will only drop on the alts
--› say message = says the specified message on your alts
--› sit/unsit = lets the alts sit
--› freeze/unfreeze = freezes the alts
--› wallet show/hide = equips the wallet
--› fps amount = sets your fps cap to the specified number
--› advert on/off = auto says the advert message
--› vibeto id = lets you and your alts dance to an emote, ids are here: https://pastebin.com/p8jyBgiv
--› setup best/ufo/basketball/crave/train/admin = sets you up at the specified position
--› airlock/unlock = airlocks your alts
-->>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<--
--» version 1.1 «--
--› setadvert msg = sets the advert to the specified msg
--› setwebhook msg = sets the webhook to the specified msg
--› kickalt altname = kicks the specified alt
--› kickalts = kicks all your alts
--› crash = loads swagmode crash
--{{//* Obfuscate this part *\\}}--
if game.PlaceId ~= 2788229376 then
    return
end
local plr = game.Players.LocalPlayer
local owner = getgenv().Settings.Owner
local ownerplr = game.Players[owner]
local prefix = getgenv().Settings.Prefix
local god = getgenv().Settings.GodMode
local webhook = getgenv().Settings.Webhook
function sendWebhook(title,desc)
    if webhook == false then
        print("Set webhook to: false")
    else
        local aq = webhook
    local ar = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["title"] = title,
                ["description"] = desc,
                ["color"] = tonumber(0x7269da),
                ["image"] = {
                    ["url"] = "https://cdn.discordapp.com/attachments/954477340367405066/989269119079690270/b320549062d87ddf6c557c40d0fd98c4_1.png"
                }
            }
        }
    }
    local as = game:GetService("HttpService"):JSONEncode(ar)
    local at = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request
    local au = {Url = aq, Body = as, Method = "POST", Headers = at}
    request(au)
    end
end
local drop = false
local ad = false
if god == true then
    if game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("Attacking") then
        game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("Attacking"):Destroy()
    end
end
function addCmd(name,callback)
    ownerplr.Chatted:connect(function (msg)
        if msg == prefix..name then
            pcall(callback)
        end
    end)
end
local logo = [[
    ** Master hub docs ** 
]]
local docs = [[ 
    Master Hub has inbuld custom functions that you can use!
    All the custom functions: 
        addCmd:
            ```lua
            addCmd("name",function()
                -- your callback
            end)
            ```
        sendWebhook: 
            ```lua
            sendWebhook("Your title","desc")
            ```
    Usage:
    ```lua
    getgenv().Settings = {
        ['Owner'] = "", -- owner's name
        ['Fps'] = 60,
        ['advertMsg'] = "",
        ['Prefix'] = ".",
        ['GodMode'] = false,
        ['Webhook'] = "", -- webhook url or remove the string and type false in it
    }
    local script = loadstring(game:HttpGet("url from the script"))()
    script.addCmd("name",function()
        -- your callback
    end)   
    script.sendWebhook("your title","your desc.")
    ```
]]
ownerplr.Chatted:connect(function(msg)
    local spt = msg:split(' ')
    if msg == prefix .. "advert on" then
        if plr.Name == owner then
        sendWebhook("On","Turned advert on")
        end
        ad = true
        while wait(14) and ad == true do
            local args = {
                [1] = getgenv.Settings.advertMsg,
                [2] = "All"
            }
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end
    elseif spt[1] == prefix.."setadvert" and spt[2] then
        getgenv.Settings.advertMsg = spt[2]
    elseif spt[1] == prefix.."kickalt" and spt[2] then
        if plr.Name ~= owner then
            game.Players[spt[2]]:kick("Master Hub Alt-control")
        end  
    elseif msg == prefix.."kickalts" then
        if plr.Name ~= owner then
            game.Players.LocalPlayer:kick("Master Hub Alt-control")
        end
    elseif spt[1] == prefix.."setwebhook" and spt[2] then
        webhook = spt[2]

    elseif msg == prefix.."docs" then
        if plr.Name == owner then
        sendWebhook(logo,docs)
        end
    elseif msg == prefix.."advert off" then
        if plr.Name == owner then
        sendWebhook("Off","Turned advert off")
        end
        ad = false
    elseif msg == prefix.."crash" then
        loadstring(
                game:HttpGet("https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher")
            )()
    elseif spt[1]== prefix.."say" and spt[2] then
        if plr.Name ~= owner then
            local args = {
                [1] = spt[2],
                [2] = "All"
            }
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
            sendWebhook("Said","All your alts said: "..tostring(spt[2]))
        end
    elseif spt[1] == prefix.."fps" and spt[2] then
        setfpscap(spt[2])
        if plr.Name == owner then
        sendWebhook("Set","Set fps cap to: "..spt[2])
        end
    elseif spt[1] == prefix.."drop" and spt[2] then
        if plr.Name == owner then
        sendWebhook("On","Turned autodrop on")
        end
        drop = true
        while drop == true do
        game.ReplicatedStorage.MainEvent:FireServer('DropMoney',tostring(spt[2]))
        wait()
        end
    elseif msg == prefix.."undrop" then
        if plr.Name == owner then
        sendWebhook("Off","Turned autodrop off")
        end
        drop = false
    elseif spt[1] == prefix.."adrop" and spt[2] then
        if plr.Name ~= owner then
            drop = true
            while drop == true do
                game.ReplicatedStorage.MainEvent:FireServer('DropMoney',tostring(spt[2]))
                wait()
            end
        end
    elseif msg == prefix.."wallet show" then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Wallet") then
			game.Players.LocalPlayer.Backpack:FindFirstChild("Wallet").Parent = game.Players.LocalPlayer.Character
		end
    elseif msg == prefix.."wallet hide" then
        if game.Players.LocalPlayer.Character:FindFirstChild("Wallet") then
			game.Players.LocalPlayer.Character:FindFirstChild("Wallet").Parent = game.Players.LocalPlayer.Backpack
		end
    elseif msg == prefix.."sit" then
        sendWebhook("Set","Set sit to true")
        if plr.Name ~= owner then
            game:GetService('Players').LocalPlayer.Character.Humanoid.Sit = true
        end
    elseif msg == prefix.."unsit" then
        sendWebhook("Set","Set sit to false")
        game:GetService('Players').LocalPlayer.Character.Humanoid.Sit = false
    elseif msg == prefix.."freeze" then
        sendWebhook("Set","Set freeze to true")
        if plr.Name ~= owner then
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        end
    elseif msg == prefix.."unfreeze" then
        sendWebhook("Set","Set freeze to false")
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    elseif msg == prefix.."airlock" then
        sendWebhook("Set","Set airlock to true")
        if plr.Name ~= owner then
            plr.Character.Humanoid.Jump = true
            wait(0.2)
            plr.Character.HumanoidRootPart.Anchored = true
        end
    elseif msg == prefix.."unlock" then
            sendWebhook("Set","Set airlock to false")
            plr.Character.HumanoidRootPart.Anchored = false
    elseif spt[1] == prefix.."vibeto" and spt[2] then
        sendWebhook("Set","You are now vibing to: "..tostring(spt[2]))
        local af = Instance.new("Animation")
        af.AnimationId = "http://www.roblox.com/asset/?id="..spt[2]
        local ag = plr.Character.Humanoid:LoadAnimation(af)
        ag:Play()
    elseif  spt[1] == prefix.."unvibeto" and spt[2] then
        local af = Instance.new("Animation")
        af.AnimationId = "http://www.roblox.com/asset/?id="..spt[2]
        local ag = plr.Character.Humanoid:LoadAnimation(af)
        ag:Stop()
    elseif spt[1] == prefix.."setup" and spt[2] then
        if spt[2] == "best" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.717058181762695, 11.757529258728027, 176.7450408935547)
        elseif spt[2] == "ufo" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(72.38233947753906, 139.00750732421875, -690.9385986328125)
        elseif spt[2] == "basketball" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-932.0391235351562, 22.10734748840332, -481.3229064941406)
        elseif spt[2] == "crave" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(176.4660186767578, 32.31648635864258, 64.10244750976562)
        elseif spt[2] == "train" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(638.9389038085938, 48.00751876831055, -68.96846008300781)
        elseif spt[2] == "admin" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(
                -871.156921,
                -38.4011917,
                -594.291992,
                -0.356538802,
                9.49233083e-08,
                -0.934280515,
                9.14578848e-08,
                1,
                6.66984121e-08,
                0.934280515,
                -6.16667464e-08,
                -0.356538802
            )
        end
        sendWebhook("Trying","Trying to tp you to: "..tostring(spt[2]))
    _G.savedhumanoidpos = nil
    elseif msg == "savepos" then
        _G.savedhumanoidpos = ownerplr.Character.HumanoidRootPart.Position
        wait(0.2)
        sendWebhook("Saved","Saved Pos. at: ".._G.savedhumanoidpos)
    elseif msg == "loadpos" then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_G.savedhumanoidpos)
        wait(0.2)
        sendWebhook("Teleport","Teleport you & your alts to ".._G.savedhumanoidpos)
    elseif msg == "bring" then
        plr.Character.HumanoidRootPart.CFrame = ownerplr.Character.HumanoidRootPart.CFrame
        wait(0.1)
        sendWebhook("Teleport","Brought all you're alts to your position")
    elseif msg == "countcash" then
        local ad = 0
        for a9, aa in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
            if aa.Name == "MoneyDrop" then
                local ae = string.split(aa.BillboardGui.TextLabel.Text, "$")[2]
                if string.match(ae, ",") then
                    ad = ad + ae:gsub("%,", "")
                else
                    ad = ad + ae
                end
            end
        end
        function fornum(ad)
            ad = tostring(ad)
            return ad:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
        end
        game.StarterGui:SetCore("SendNotification", {Title = "Counted cash is:", Text = "$" .. fornum(ad)})
    end 
end)
if plr.Name == owner then
	print("Owner")
else
	game:GetService("RunService"):Set3dRenderingEnabled(false)
	setfpscap(getgenv().Settings.Fps)
end
-- anti afk
while true do
    local VirtualUser = game:GetService('VirtualUser')
    game:GetService('Players').LocalPlayer.Idled:connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
        end)
    wait()
    end