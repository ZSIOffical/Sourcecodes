local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local player = game.Players.LocalPlayer
    local InfiniteJumpEnabled = false
    local guys = game.workspace.Giants:GetChildren()
    local autoGetEaten = false
    OrionLib:MakeNotification({
        Name = "Hey",
        Content = "Script made by AlexvPlays",
        Image = "rbxassetid://4483345998",
        Time = 2
    })
    local Window = OrionLib:MakeWindow({Name = "Get Eaten! script", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})
    local Tab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    Tab:AddLabel("You must unlock the slide to get points from it!")
    for _,guy in guys do
        Tab:AddButton({
            Name = "Complete "..guy.Name,
            Callback = function()
                   for _,thing in workspace.Slides:FindFirstChild(guy.Name):GetChildren() do
                    if thing:IsA("Part") then
                        player.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(thing.Position) + Vector3.new(0, 0.8, 0)
                    end
                end
                player.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(workspace.Giants[guy.Name]:FindFirstChild("Head").Position)
                wait(1)
                player.Character.Humanoid:TakeDamage(100)
              end    
        })
    end
    local Tab = Window:MakeTab({
        Name = "Local player",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    Tab:AddSlider({
        Name = "Speed",
        Min = 1,
        Max = 120,
        Default = 16,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "walkspeed",
        Callback = function(Value)
            player.Character.Humanoid.WalkSpeed = Value
        end    
    })
    Tab:AddSlider({
        Name = "Jump power",
        Min = 1,
        Max = 180,
        Default = 30,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "jumppower",
        Callback = function(Value)
            player.Character.Humanoid.JumpPower = Value
        end    
    })
    Tab:AddButton({Name = "Infinite jump!",
        Callback = function()
              InfiniteJumpEnabled = true
          end    
    })game:GetService("UserInputService").JumpRequest:connect(function()
        if InfiniteJumpEnabled then
            game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            wait()
        end
    end)local Tab = Window:MakeTab({
        Name = "Options",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })Tab:AddButton({
        Name = "Destroy GUI",
        Callback = function()
              OrionLib:Destroy()
          end    
    })Tab:AddParagraph("Made by Alexv. Find me on:","Youtube: AlexvPlays\nRoblox: AL3xvPlays\nDiscord: 7alexv7#9554")OrionLib:Init()