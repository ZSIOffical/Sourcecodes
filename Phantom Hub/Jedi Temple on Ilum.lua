if (hookfunction) then
    hookfunction(hookfunction, function()
        return
    end)
    for _,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Door" then
            v:Destroy()
        end
    end
    wait(0.2)
    function equip(wepon, type1)
        local args = {
            [1] = wepon,
            [2] = type1,
            [3] = {
                [1] = 0
            }
        }

        game:GetService("ReplicatedStorage").Remotes.GiveLoadouts:InvokeServer(unpack(args))
    end

    function equip_Wepon(wepon)
        game.Players.LocalPlayer.Backpack:FindFirstChild(wepon).Parent = game.Players.LocalPlayer.Character
    end

    function killall()
        equip_Wepon("DC-15S")
        wait(0.1)
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local args = {
                    [1] = game:GetService("Players")[v.Name],
                    [2] = 10000000000000000000000000000000000000000000
                }
                game:GetService("ReplicatedStorage").GunModule.RemoteEvent:FireServer(unpack(args))
            end
        end
        wait(0.5)
        game.Players.LocalPlayer.Character["DC-15S"].Parent = game.Players.LocalPlayer.Backpack
    end

    function kill(player)
        equip_Wepon("DC-15S")
        wait(0.1)

        local args = {
            [1] = game:GetService("Players")[player],
            [2] = 10000000000000000000000000000000000000000000
        }
        game:GetService("ReplicatedStorage").GunModule.RemoteEvent:FireServer(unpack(args))
        wait(0.5)
        game.Players.LocalPlayer.Character["DC-15S"].Parent = game.Players.LocalPlayer.Backpack

    end

    function changeBlock(plr, amount)
        local args = {
            [1] = game:GetService("Players")[plr],
            [2] = "Block",
            [3] = amount -- 100000 = max
        }
        game:GetService("Players").legojoe1611.Character.Cake.RemoteEvent:FireServer(unpack(args))
    end

    function changeBlockForEveryone(amount)
        for _, v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local args = {
                    [1] = game:GetService("Players")[v.Name],
                    [2] = "Block",
                    [3] = amount -- 100000 = max
                }
                game:GetService("Players").legojoe1611.Character.Cake.RemoteEvent:FireServer(unpack(args))
            end
        end
    end

    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/4LD/itachi/ui", true))()
    local Project = Library.Project()
    local h = Project:Tab({
        Text = "Player"
    })
    local Home = h:Section({
        Text = "Other Players"
    })
    local Home3 = h:Section({
        Text = "Player"
    })
    local Home4 = h:Section({
        Text = "Avatar"
    })
    local h1 = Project:Tab({
        Text = "Teleports"
    })
    local Home1 = h1:Section({
        Text = "Teleports"
    })
    local table1 = {}
    for i, v in pairs(game:GetService("Workspace").crystals:GetChildren()) do
        if v:IsA("MeshPart") then
            table.insert(table1, tostring(v))
        end
    end
    local playertokill = nil
    local playertogiveinfinitehp = nil
    local d = nil
    local players = {}
    for _, v in pairs(game.Players:GetPlayers()) do
        table.insert(players, tostring(v))
    end
    Home1:Dropdown({
        Text = "Select Crystal",
        Items = table1,
        Callback = function(v)
            d = game:GetService("Workspace").crystals[v].Position
        end

    })
    local plrValue = nil
    Home1:Dropdown({
        Text = "Select Player",
        Items = players,
        Callback = function(v)
            plrValue = game.Players[v].Character.Head.Position
        end

    })
    Home1:Button({
        Text = "Teleport to Crystal",
        Callback = function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(3, Enum.EasingStyle.Linear)
            tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo,
                { CFrame = CFrame.new(d) }):Play()

        end
    })
    Home1:Button({
        Text = "Teleport to Player",
        Callback = function()
            tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(3, Enum.EasingStyle.Linear)
            tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo,
                { CFrame = CFrame.new(plrValue) }):Play()

        end
    })
    Home:Textbox({
        Text = "Enter a player to kill",
        PlaceholderText = "Enter a player name to kill",
        Callback = function(v)
            playertokill = v
        end
    })
    local playertousepoweron = nil
    Home:Textbox({
        Text = "Enter a player to use the power on",
        PlaceholderText = "Enter a player to use the power on",
        Callback = function(v)
            playertousepoweron = v
        end
    })
    local f = nil
    Home:Dropdown({
        Text = "Choose power",
        Items = { "Telekinesis", "Push", "Sorry, I don't got anymore cause im not buying them" },
        Callback = function(v)
            f = v
        end
    })
    Home4:Toggle({
        Text = "Hood",
        Default = nil,
        Callback = function(state)
            if state then
                local args = {
                    [1] = "Hood",
                    [2] = "On"
                }

                game:GetService("ReplicatedStorage").Remotes.ToggleCape:FireServer(unpack(args))
            else
                local args = {
                    [1] = "Hood",
                    [2] = "Off"
                }

                game:GetService("ReplicatedStorage").Remotes.ToggleCape:FireServer(unpack(args))
            end
        end
    })
    Home4:Toggle({
        Text = "Cape",
        Default = nil,
        Callback = function(state)
            if state then
                local args = {
                    [1] = "Cape",
                    [2] = "On"
                }

                game:GetService("ReplicatedStorage").Remotes.ToggleCape:FireServer(unpack(args))
            else
                local args = {
                    [1] = "Cape",
                    [2] = "Off"
                }

                game:GetService("ReplicatedStorage").Remotes.ToggleCape:FireServer(unpack(args))
            end
        end
    })
    Home3:Slider({
        Text = "Change Walkspeed",
        Min = 0,
        Max = 250,
        Default = 16,
        Callback = function(v)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
        end
    })
    Home3:Slider({
        Text = "Change Jumppower",
        Min = 0,
        Max = 250,
        Default = 50,
        Callback = function(v)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
        end
    })
    Home4:Button({
        Text = "Remove hats",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.RemoveHats:FireServer()
        end
    })
    Home4:Button({
        Text = "Reset Outfit",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.OutfitReset:FireServer()
        end
    })
    Home3:Button({
        Text = "Give yourself TG",
        Callback = function()
            for i, v in pairs(game.Workspace:GetChildren()) do
                if v.DataCost == 11659 then
                    fireclickdetector(v.Model["Tool-Giver"].Part.ClickDetector)
                end
            end
        end
    })
    Home3:Button({
        Text = "Give yourself the wepon to kill every player",
        Callback = function()
            equip("Recruit", "Blaster")
            wait(0.1)
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
        end
    })
    Home:Button({
        Text = "Use power on player",
        Callback = function()
            if f == "Push" then
                local args = {
                    [1] = "Push",
                    [2] = {
                        [1] = game:GetService("Players")[playertousepoweron]
                    },
                    [3] = 50,
                    [4] = false
                }
                game:GetService("ReplicatedStorage").Remotes.ForcePower:FireServer(unpack(args))
            else
                local args = {
                    [1] = f,
                    [2] = {
                        [1] = game:GetService("Players")[playertousepoweron]
                    },
                    [3] = 65
                }

                game:GetService("ReplicatedStorage").Remotes.ForcePower:FireServer(unpack(args))
            end
        end
    })
    Home:Button({
        Text = "Kill Player",
        Callback = function()
            kill(playertokill)
        end
    })

    Home:Button({
        Text = "Kill everyone",
        Callback = function()
            killall()
        end
    })
    Home:Button({
        Text = "Give everyone inf hp",
        Callback = function ()
            equip_Wepon("DC-15S")
            for i,v in pairs(game.Players:GetPlayers()) do
                local args = {
                [1] = game:GetService("Players")[v.Name],
                [2] = -100000000000000000
            }
            
            game:GetService("ReplicatedStorage").GunModule.RemoteEvent:FireServer(unpack(args))
            end
            wait(0.5)
            game.Players.LocalPlayer.Character["DC-15S"].Parent = game.Players.LocalPlayer.Backpack
        end
    })
    local h4 = Project:Tab({
        Text = "Credits"
    })
    local Home4 = h4:Section({
        Text = "Credits"
    })
    Home4:Button({
        Text = "SoloDev#7416",
        Callback = function()
            setclipboard("discord.gg/software")
        end
    })
    Home4:Button({
        Text = "discord.gg/software",
        Callback = function()
            setclipboard("discord.gg/software")
        end
    })
else
    warn("Executor not supported")
end
