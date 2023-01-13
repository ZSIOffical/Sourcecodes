local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/elsiahrekeno/Xa1/main/src.lua"))()
local Window = Library.Init({
    SavePosition = true -- true/false saves gui position on new execute
})


local key1 = nil
local key2 = nil
local key3 = nil
local key4 = nil
local key5 = nil
local key6 = nil
local key7 = nil
local key8 = nil
local key9 = nil
local key10 = nil
local playervaluethign = nil
local PlayerTable = {}
local localplayer = game.Players.LocalPlayer
local L_18_ = loadstring(game:HttpGet("https://pastebin.com/raw/0XSRLQga"))()
local Animate = game.Players.LocalPlayer.Character.Animate
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PlayerTable, v.Name)
end
--[[ Tabs ]]
local Tab = Window:Tab("Teleports")
local Section = Tab:Section("Teleports")
local Tab2 = Window:Tab("Movement")
local Section2 = Tab2:Section("Movement")
local tab3 = Window:Tab("LocalPlayer")
local Section3 = tab3:Section("LocalPlayer")
local tab4 = Window:Tab("Combat")
local Section4 = tab4:Section("Combat")
local tab5 = Window:Tab("Cash Stuff")
local Section5 = tab5:Section("Cash Stuff")
local Tab6 = Window:Tab("Others")

local Section6 = Tab6:Section("Others")
local Section7 = Tab6:Section("Fun")
local Section8 = Tab6:Section("Animations")
local Tab9 = Window:Tab("Credtis")
local Section9 = Tab9:Section("Credits")
Section9:NewLabel({
    Title = "SoloDev"
})
Section9:NewLabel({
    Title = "discord.gg/software"
})
--[[ Functions ]]--
function teleportTO(placeCFrame)
    local plyr = game.Players.LocalPlayer;
    if plyr.Character then
        plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
    end
end

function loadAnimation(id)
    if UniversalAnimation.AnimationId == id then
        stopTracks()
        UniversalAnimation.AnimationId = "1"
    else
        UniversalAnimation.AnimationId = id
        local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):
            LoadAnimation(UniversalAnimation)
        animationTrack:Play()
    end
end

--[[ Main ]] --
Section8:NewButton({
    Title = "Zombie",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616158929"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616160636"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616161997"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616156119"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616157476"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Werwolf",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083178339"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083216690"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083218792"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083182000"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083189019"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true	
    end
})
Section8:NewButton({
    Title = "Vampire",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Toy",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Superhero",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Stylish",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true	
    end
})
Section8:NewButton({
    Title = "Robot",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616088211"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616089559"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616095330"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616091570"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616090535"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616086039"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616087089"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true	
    end
})
Section8:NewButton({
    Title = "Pirate",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Ninja",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Mage",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=707742142"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=707855907"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=707897309"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=707861613"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=707853694"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=707826056"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=707829716"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true	
    end
})
Section8:NewButton({
    Title = "Levitation",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Knight",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=657595757"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=657568135"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=657552124"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=657564596"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=658409194"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=658360781"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=657600338"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Elder",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=845397899"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=845400520"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=845403856"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=845386501"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=845398858"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=845392038"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=845396048"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Cartoony",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Bubbly",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
        Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
        Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Astronaut",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=891621366"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=891633237"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=891667138"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=891636393"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=891627522"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=891609353"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=891617961"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})
Section8:NewButton({
    Title = "Pro",
    Callback = function()
        Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
        Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
        Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616168032"
        Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"
        Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
        Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
        Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
        game.Players.LocalPlayer.Character.Humanoid.Jump = true
    end
})














































--// fun
Section7:NewButton({
    Title = "Fe Titan [75% muscles]",
    Callback = function()
        local function rm()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v.Name == "OriginalPosition" then
                    v:Destroy()
                elseif v.Name == "OriginalSize" then
                    v:Destroy()
                elseif v.Name == "AvatarPartScaleType" then
                    v:Destroy()
                end
            end
        end

        local Humanoid = game.Players.LocalPlayer.Character.Humanoid
        rm()
        wait(0.5)
        Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
        wait(1)

        rm()
        wait(0.5)
        Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
        wait(1)

        rm()
        wait(0.5)
        Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
        wait(1)

        rm()
        wait(0.5)
        Humanoid:FindFirstChild("HeadScale"):Destroy()
        wait(1)
    end
})
Section7:NewButton({
    Title = "Shazam!",
    Callback = function()
        game:GetService("Players").LocalPlayer.Chatted:Connect(function(arg)
            if arg == "Shazam!" then
                repeat
                    wait();
                until game:GetService('Players').LocalPlayer.Character:FindFirstChild('FULLY_LOADED_CHAR')
                ;local ReplicatedStorage = game:GetService('ReplicatedStorage');
                local Lightning = Instance.new('Part');
                local Player = game:GetService('Players').LocalPlayer;
                local Position = Player.Character.HumanoidRootPart.CFrame;
                local l = Instance.new("Part")
                l.Parent = workspace
                l.BrickColor = BrickColor.new("Daisy orange")
                l.Material = "Neon"
                l.Anchored = true
                l.CanCollide = false
                l.Size = Vector3.new(10, 2047, 10.924);
                l.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                l.Orientation = Vector3.new(32, 0, 0)
                local Sound = Instance.new('Sound', workspace);
                Sound.PlaybackSpeed = 1;
                Sound.Volume = 6.9;
                Sound.SoundId = 'rbxassetid://3787180659';
                Sound.PlayOnRemove = true;
                Sound:Destroy();
                for i = 1, 10 do
                    wait()
                    l.Transparency = l.Transparency + 0.1
                end
                if Player.Character:FindFirstChildOfClass('ShirtGraphic') then
                    Player.Character:FindFirstChildOfClass('ShirtGraphic'):Destroy()
                end
                if Player.Character:FindFirstChildOfClass('Shirt') then
                    Player.Character:FindFirstChildOfClass('Shirt').ShirtTemplate = 'rbxassetid://5453348825';
                else
                    local Shirt = Instance.new('Shirt');
                    Shirt.Parent = Player.Character;
                    Shirt.ShirtTemplate = 'rbxassetid://5453348825';
                end
                if Player.Character:FindFirstChild('Pants') then
                    Player.Character:FindFirstChildOfClass('Pants').PantsTemplate = 'rbxassetid://5453350139';
                else
                    local Pants = Instance.new('Pants');
                    Pants.Parent = Player.Character;
                    Pants.PantsTemplate = 'rbxassetid://5453350139';
                end
                ;plr = game.Players.LocalPlayer
                acc = plr.Character
                face = acc.Head.face
                face.Texture = "rbxassetid://6738024349"
                wait(.5)
                repeat wait()
                until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:findFirstChild("Head") and
                    game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
                local mouse = game.Players.LocalPlayer:GetMouse()
                repeat wait() until mouse
                local plr = game.Players.LocalPlayer
                local torso = plr.Character.Head
                local flying = false
                local deb = true
                local ctrl = { f = 0, b = 0, l = 0, r = 0 }
                local lastctrl = { f = 0, b = 0, l = 0, r = 0 }
                local maxspeed = 5000
                local speed = 5000
                local hover = Instance.new("Animation",
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
                hover.Name = "Hover"
                hover.AnimationId = "rbxassetid://3541114300"
                local fly = Instance.new("Animation",
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"))
                fly.Name = "Fly"
                fly.AnimationId = "rbxassetid://3541044388"

                function Fly()
                    local bg = Instance.new("BodyGyro", torso)
                    bg.P = 9e4
                    bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                    bg.cframe = torso.CFrame
                    local bv = Instance.new("BodyVelocity", torso)
                    bv.velocity = Vector3.new(0, 0.1, 0)
                    bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
                    repeat wait()
                        plr.Character.Humanoid.PlatformStand = true
                        if ctrl.l + ctrl.r ~= 100000 or ctrl.f + ctrl.b ~= 10000 then
                            speed = speed + .0 + (speed / maxspeed)
                            if speed > maxspeed then
                                speed = maxspeed
                            end
                        elseif not (ctrl.l + ctrl.r ~= 5 or ctrl.f + ctrl.b ~= 5) and speed ~= 5 then
                            speed = speed - 5
                            if speed > 5 then
                                speed = -2
                            end
                        end
                        if (ctrl.l + ctrl.r) ~= 5 or (ctrl.f + ctrl.b) ~= 5 then
                            bv.velocity = (
                                (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f + ctrl.b)) +
                                    (
                                    (
                                        game.Workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * .2, 0).p) -
                                        game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
                            lastctrl = { f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r }
                        elseif (ctrl.l + ctrl.r) == 5 and (ctrl.f + ctrl.b) == 5 and speed ~= 5 then
                            bv.velocity = (
                                (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f + lastctrl.b)) +
                                    (
                                    (
                                        game.Workspace.CurrentCamera.CoordinateFrame *
                                            CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * .2, 0).p) -
                                        game.Workspace.CurrentCamera.CoordinateFrame.p)) * speed
                        else
                            bv.velocity = Vector3.new(0, 0.1, 0)
                        end
                        bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame *
                            CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
                    until not flying
                    for _, v in next,
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPlayingAnimationTracks() do
                        if (v.Animation.AnimationId:match("rbxassetid")) then
                            v:Stop()
                        end
                    end
                    ctrl = { f = 0, b = 0, l = 0, r = 0 }
                    lastctrl = { f = 0, b = 0, l = 0, r = 0 }
                    speed = 5
                    bg:Destroy()
                    bv:Destroy()
                    plr.Character.Humanoid.PlatformStand = false
                end

                mouse.KeyDown:connect(function(key)
                    if key:lower() == "c" then
                        if flying then flying = false
                        else
                            flying = true
                            for _, v in next,
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):
                                GetPlayingAnimationTracks() do
                                if not (v.Animation.AnimationId:match(hover.AnimationId)) then
                                    v:Stop()
                                end
                            end
                            plr.Character.Humanoid:LoadAnimation(hover):Play()
                            Fly()
                        end
                    elseif key:lower() == "w" then
                        ctrl.f = 20
                        wait()
                        if flying == true then
                            for _, v in next,
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):
                                GetPlayingAnimationTracks() do
                                if not (v.Animation.AnimationId:match(fly.AnimationId)) then
                                    v:Stop()
                                end
                            end
                            plr.Character.Humanoid:LoadAnimation(fly):Play()
                        end
                    elseif key:lower() == "s" then
                        ctrl.b = -20
                    elseif key:lower() == "a" then
                        ctrl.l = -20
                    elseif key:lower() == "d" then
                        ctrl.r = 20
                    end
                end)
                mouse.KeyUp:connect(function(key)
                    if key:lower() == "w" then
                        ctrl.f = 0
                        wait()
                        if flying == true then
                            for _, v in next,
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):
                                GetPlayingAnimationTracks() do
                                if not (v.Animation.AnimationId:match(hover.AnimationId)) then
                                    v:Stop()
                                end
                            end
                            plr.Character.Humanoid:LoadAnimation(hover):Play()
                        end
                    elseif key:lower() == "s" then
                        ctrl.b = 0
                        wait()
                        if flying == true then
                            for _, v in next,
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):
                                GetPlayingAnimationTracks() do
                                if not (v.Animation.AnimationId:match(hover.AnimationId)) then
                                    v:Stop()
                                end
                            end
                            plr.Character.Humanoid:LoadAnimation(hover):Play()
                        end
                    elseif key:lower() == "a" then
                        ctrl.l = 0
                        wait()
                        if flying == true then
                            for _, v in next,
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):
                                GetPlayingAnimationTracks() do
                                if not (v.Animation.AnimationId:match(hover.AnimationId)) then
                                    v:Stop()
                                end
                            end
                            plr.Character.Humanoid:LoadAnimation(hover):Play()
                        end
                    elseif key:lower() == "d" then
                        ctrl.r = 0
                        wait()
                        if flying then
                            for _, v in next,
                                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):
                                GetPlayingAnimationTracks() do
                                if not (v.Animation.AnimationId:match(hover.AnimationId)) then
                                    v:Stop()
                                end
                            end
                            plr.Character.Humanoid:LoadAnimation(hover):Play()
                        end
                    end
                end)
                Fly()
                wait(.5)
                superhuman = false
                plr = game.Players.LocalPlayer
                mouse = plr:GetMouse()
                mouse.KeyDown:connect(function(key)
                    if key == "z" and superhuman == false then
                        superhuman = true
                        game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
                        game.Players.LocalPlayer.Character.Humz.WalkSpeed = 100
                        game.Players.LocalPlayer.Character.Humz.JumpPower = 200
                    elseif key == "z" and superhuman == true then
                        superhuman = false
                        game.Players.LocalPlayer.Character.Humz.WalkSpeed = 16
                        game.Players.LocalPlayer.Character.Humz.JumpPower = 50
                        game.Players.LocalPlayer.Character.Humz.Name = "Humanoid"
                    end

                end)
                wait(.5)
                local Animate = game.Players.LocalPlayer.Character.Animate
                Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616111295"
                Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616113536"
                Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616122287"
                Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616117076"
                Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616115533"
                Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616104706"
                Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616108001"
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
            end
        end)
    end
})
Section7:NewButton({
    Title = "TIme erase [keybinds in discord]",
    Callback = function()
        local MyStand = "DxskTilIDawn"
        local SuperJumpEnabled = false

        getgenv().Toggled = false
        local UIS = game:GetService("UserInputService")
        UIS.InputBegan:connect(function(input, gameProcessed)
            if input.UserInputType == Enum.UserInputType.Keyboard then
                if input.KeyCode == Enum.KeyCode.H then
                    if UIS:GetFocusedTextBox() == nil then
                        if getgenv().Toggled == false then
                            getgenv().Toggled = true
                        else
                            getgenv().Toggled = true
                        end
                        ; end
                    ; end
                ; end
            ; end)

        local LocalPlayer = game:GetService("Players").LocalPlayer
        local Cookies = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.
            ClientAnimations.Roll)
        local OriginalKeyUpValue = 0
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://2788290270"
        local Hover = Instance.new("Animation", game.Workspace)
        Hover.Name = "Hover"
        Hover.AnimationId = "rbxassetid://698251653"
        local LeftPunch = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        LeftPunch.Name = "LeftPunch"
        LeftPunch.AnimationId = "rbxassetid://2788308661"
        local LeftAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.
            ClientAnimations.LeftPunch)
        local CoreUI = Instance.new("ScreenGui")
        local Humanoid = game.Players.LocalPlayer.Character.Humanoid
        CoreUI.Parent = game.CoreGui
        local SaveLocation = nil
        local RigWalk = nil
        local RigIdle = nil
        local InTimeErase = false

        local Pointing = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        Pointing.AnimationId = "rbxassetid://507770453"

        local UNMASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        UNMASKKK.Name = "Unmask"
        UNMASKKK.AnimationId = "rbxassetid://3380629232"

        local MASKKK = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        MASKKK.Name = "Mask"
        MASKKK.AnimationId = "rbxassetid://3380627692"

        local Poter = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
        Poter.Looped = true
        Poter.Priority = Enum.AnimationPriority.Action

        local WalkAnimation = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        WalkAnimation.AnimationId = "rbxassetid://2510198475"

        local Idle = Instance.new("Animation", game.ReplicatedStorage.ClientAnimations)
        Idle.AnimationId = "rbxassetid://507766388"

        local OldChar = LocalPlayer.Character
        local MaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.
            ClientAnimations.Mask)
        local UnmaskAnim = LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.
            ClientAnimations.Unmask)

        function FoV()
            local fov = coroutine.wrap(function()
                local Camera = workspace.Camera
                for i = 1, 20 do
                    game.TweenService:Create(Camera, TweenInfo.new(0.5), { FieldOfView = 8 * i }):Play()
                    wait(0.01)
                end
                for i = 1, 20 do
                    game.TweenService:Create(Camera, TweenInfo.new(0.5), { FieldOfView = 160 - i * 4.5 }):Play()
                    wait(0.01)
                end
            end)
            fov()
        end

        local WalkSpeed = false

        local function rm()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v.Name == "OriginalPosition" then
                    v:Destroy()
                elseif v.Name == "OriginalSize" then
                    v:Destroy()
                elseif v.Name == "AvatarPartScaleType" then
                    v:Destroy()
                end
            end
        end

        function Lighting()
            if game.Lighting:FindFirstChild("ERASE") == nil then
                local sound5 = Instance.new("Sound", CoreUI)
                sound5.Volume = 0.1
                sound5.Name = "ERASE"
                sound5.Looped = true
                sound5.SoundId = "rbxassetid://3167092959"
                sound5:Play()

                game.Lighting.Sky.Parent = workspace
                game:GetObjects("rbxassetid://6546113226")[1].Parent = game.Lighting

            else
                workspace.Sky.Parent = game.Lighting
                CoreUI:FindFirstChild("ERASE"):Destroy()
                game.Lighting:FindFirstChild("ERASE"):Destroy()
            end
        end

        function TimeEraseUI()
            local sound5 = Instance.new("Sound", CoreUI)
            sound5.Volume = 0.1
            sound5.SoundId = "rbxassetid://6546128175"
            sound5:Play()

            local Image = Instance.new("ImageLabel", CoreUI)
            Image.Image = "http://www.roblox.com/asset/?id=6546043746"
            Image.BackgroundTransparency = 1
            Image.AnchorPoint = Vector2.new(0.5, 0.5)
            Image.Size = UDim2.fromScale(1, 1)
            Image.Position = UDim2.fromScale(-0.5, 0.5)
            delay(0, function()
                for i = 0, 1, 0.1 do
                    Image.Position = UDim2.fromScale(-Image.Position.X.Scale + i, 0.5)
                    Image.ImageTransparency = Image.ImageTransparency + i
                    wait(.01)
                end
                Image:Destroy()
                sound5:Destroy()
            end)
        end

        function ModelCharacter()
            if workspace:FindFirstChild(LocalPlayer.Name .. "StringKOD") == nil then
                local MODEL = Instance.new("Model", workspace)
                MODEL.Name = LocalPlayer.Name .. "StringKOD"

                OldChar.Humanoid:UnequipTools()

                for i, v in pairs(OldChar:GetChildren()) do
                    if (v:IsA("BasePart") or v:IsA("MeshPart")) and v.Parent:FindFirstChildOfClass("Humanoid") and
                        v.Name ~= "HumanoidRootPart" then
                        local Part = v:Clone()
                        Part.Parent = MODEL
                        Part.Name = v.Name
                        Part.Material = Enum.Material.ForceField
                        Part.CFrame = v.CFrame
                        Part.Transparency = 0.5
                        Part.BrickColor = BrickColor.Red()
                        Part.CanCollide = false
                        Part.Anchored = true
                        for i, v in pairs(Part:GetChildren()) do
                            if v.ClassName ~= "SpecialMesh" then
                                v:Destroy()
                            end
                        end
                    end
                end
                local NewCharacter = game:GetObjects("rbxassetid://6547055500")[1]
                NewCharacter.Parent = MODEL
                NewCharacter.Name = "Idaro"

                workspace.Camera.CameraSubject = NewCharacter.Humanoid
                SaveLocation = OldChar.HumanoidRootPart.CFrame
                InTimeErase = true
                NewCharacter.HumanoidRootPart.CFrame = SaveLocation

                RigIdle = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(Idle)
                RigIdle.Looped = true
                RigIdle.Priority = Enum.AnimationPriority.Action
                RigWalk = NewCharacter:WaitForChild("Humanoid"):LoadAnimation(WalkAnimation)
                RigWalk.Looped = true
                RigWalk.Priority = Enum.AnimationPriority.Action
                WalkSpeed = true
                RigIdle:Play()
            else
                InTimeErase = false
                WalkSpeed = false
                workspace.Camera.CameraSubject = OldChar.Humanoid
                OldChar.HumanoidRootPart.CFrame = workspace:FindFirstChild(LocalPlayer.Name .. "StringKOD").Idaro.
                    HumanoidRootPart.CFrame
                workspace:FindFirstChild(LocalPlayer.Name .. "StringKOD"):Destroy()
            end
        end

        function Slide()
            local XD = OldChar.Humanoid:LoadAnimation(Anim)
            XD:Play()
            XD.TimePosition = 0.15
            XD.Looped = false
            XD:AdjustSpeed(1.1)
        end

        function AddVelocity(Vel, Char)
            Char.HumanoidRootPart.Velocity = Char.HumanoidRootPart.Velocity + Vel
        end

        local IsJump = false

        function Jumping()
            if IsJump == false then
                return false
            else
                return true
            end
        end

        local Mouse = LocalPlayer:GetMouse()

        local MoveDirection = Vector3.new(0, 0, 0)
        local WSpped = 0
        local LeftSpeed = 0
        local UpSpeed = 0

        function IdleRigXD()
            if RigIdle and RigWalk.IsPlaying and WSpped == 0 and LeftSpeed == 0 and UpSpeed == 0 then
                RigIdle:Play()
                RigWalk:Stop()
            end
        end

        function WalkRigXD()
            if RigWalk and RigIdle.IsPlaying then
                RigIdle:Stop()
                RigWalk:Play()
            end
        end

        Mouse.KeyDown:Connect(function(KeyDownXD)
            if workspace:FindFirstChild(LocalPlayer.Name .. "StringKOD") then
                if KeyDownXD == "w" then
                    WSpped = -1
                    WalkRigXD()
                elseif KeyDownXD == "a" then
                    LeftSpeed = -1
                    WalkRigXD()
                elseif KeyDownXD == "d" then
                    LeftSpeed = 1
                    WalkRigXD()
                elseif KeyDownXD == "s" then
                    WSpped = 1
                    WalkRigXD()
                end
            end
        end)

        Mouse.KeyUp:Connect(function(KeyDownXD)
            if KeyDownXD == "w" then
                WSpped = 0
                IdleRigXD()
            elseif KeyDownXD == "a" then
                LeftSpeed = 0
                IdleRigXD()
            elseif KeyDownXD == "d" then
                LeftSpeed = -0
                IdleRigXD()
            elseif KeyDownXD == "s" then
                WSpped = 0
                IdleRigXD()
            end
        end)

        local CD = false
        local uis = game:GetService("UserInputService")

        uis.InputBegan:Connect(function(i, XD)
            if i.KeyCode == Enum.KeyCode.H and XD == false then
                if SuperJumpEnabled == false then
                    SuperJumpEnabled = true
                elseif SuperJumpEnabled == true then
                    SuperJumpEnabled = false
                end
            end
        end)

        uis.InputBegan:Connect(function(i, XD)
            if i.KeyCode == Enum.KeyCode.Space and XD == false then
                if workspace:FindFirstChild(LocalPlayer.Name .. "StringKOD") == nil then
                    if Jumping() == true and not Poter.IsPlaying then
                        AddVelocity(OldChar.HumanoidRootPart.CFrame.LookVector * 150, OldChar)
                        IsJump = false
                        Cookies:Stop()
                        CD = true
                        Slide()
                        repeat wait() until workspace:FindPartOnRayWithWhitelist(Ray.new(OldChar.HumanoidRootPart.
                            Position, Vector3.new(0, -4 * OldChar.HumanoidRootPart.Size.y, 0)), { workspace.MAP })
                        CD = false
                    end
                else
                    workspace:FindFirstChild(LocalPlayer.Name .. "StringKOD"):FindFirstChild("Idaro").Humanoid:
                        ChangeState(3)
                end
            end
        end)

        function StopAudio()
            OldChar.LowerTorso.BOOMBOXSOUND:Stop()
        end

        function stop(ID, Key)
            local cor = coroutine.wrap(function()
                wait(OldChar.LowerTorso.BOOMBOXSOUND.TimeLength - 0)
                if OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://" .. ID and OriginalKeyUpValue == Key then
                    StopAudio()
                end
            end)
            cor()
        end

        function play(ID, STOP, LMAO)
            if LocalPlayer.Backpack:FindFirstChild("[Boombox]") then
                local Tool = nil
                if OldChar:FindFirstChildOfClass("Tool") and LMAO == true then
                    Tool = OldChar:FindFirstChildOfClass("Tool")
                    OldChar:FindFirstChildOfClass("Tool").Parent = LocalPlayer.Backpack
                end
                LocalPlayer.Backpack["[Boombox]"].Parent = OldChar
                game.ReplicatedStorage.MainEvent:FireServer("Boombox", ID)
                OldChar["[Boombox]"].RequiresHandle = false
                if OldChar["[Boombox]"]:FindFirstChild("Handle") then
                    OldChar["[Boombox]"].Handle:Destroy()
                end
                OldChar["[Boombox]"].Parent = LocalPlayer.Backpack
                LocalPlayer.PlayerGui.MainScreenGui.BoomboxFrame.Visible = false
                if Tool ~= true then
                    if Tool then
                        Tool.Parent = OldChar
                    end
                end
                if STOP == true then
                    OldChar.LowerTorso:WaitForChild("BOOMBOXSOUND")
                    local cor = coroutine.wrap(function()
                        repeat wait() until OldChar.LowerTorso.BOOMBOXSOUND.SoundId == "rbxassetid://" .. ID and
                            OldChar.LowerTorso.BOOMBOXSOUND.TimeLength > 0
                        OriginalKeyUpValue = OriginalKeyUpValue + 1
                        stop(ID, OriginalKeyUpValue)
                    end)
                    cor()
                end
            end
        end

        local bro = false
        local TimeErase, CanCel = "Time erase!", "Time erase!"
        local TimeStop, TimeResume = "Time stop!", "Time stop!"
        local XD = false
        LocalPlayer.Chatted:Connect(function(MSG)
            if MSG == "Rage!" then
                if Humanoid:FindFirstChild("HeadScale") then
                    rm()
                    wait(0.6)

                    Humanoid:FindFirstChild("HeadScale"):Destroy()
                    wait(0.6)
                end


                if Humanoid:FindFirstChild("BodyWidthScale") then
                    rm()
                    wait(0.6)
                    Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
                    wait(0.6)
                end



                if Humanoid:FindFirstChild("BodyDepthScale") then
                    rm()
                    wait(0.6)
                    Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
                    wait(0.6)
                end



                if Humanoid:FindFirstChild("BodyTypeScale") then
                    rm()
                    wait(0.6)
                    Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
                    wait(0.6)
                end
            elseif MSG == CanCel and XD == true and not Poter.IsPlaying then
                XDDDD(XD)
            elseif MSG == TimeStop then
                play(6947054675, true, true)
                wait(0.3)
                OldChar.LowerTorso.BOOMBOXSOUND.SoundId = "http://www.roblox.com/asset/?id=wd"
                wait(0.1)
                play(7084712646, true, true)
            end
        end)
        local UIS = game:GetService("UserInputService")
        UIS.InputBegan:Connect(function(obj)
            if obj.KeyCode == Enum.KeyCode.E and XD == false and not Poter.IsPlaying then
                XDDDD(XD)
            end
            function XDDDD(XDR)
                if XDR == false then
                    XD = true
                    play(6546133414, true, true)
                    wait()
                    TimeEraseUI()
                    FoV()
                    Lighting()
                    ModelCharacter()
                else
                    XD = false
                    InTimeErase = false
                    wait(0.1)
                    play(6543435253, true, true)
                    TimeEraseUI()
                    ModelCharacter()
                    Lighting()
                    FoV()
                end
            end

            function Jump(...)
                (...).Jumping:Connect(function()
                    if SuperJumpEnabled == true then
                        if CD == false and not Poter.IsPlaying then
                            CD = true
                            delay(1, function()
                                CD = false
                            end)
                            Cookies:Play(0, 1, 1.4)
                            AddVelocity(OldChar.HumanoidRootPart.CFrame.UpVector * 120, OldChar)
                            delay(0, function()
                                IsJump = true
                                wait(1)
                                if IsJump == true then
                                    IsJump = false
                                end
                            end)
                        end
                    end
                end)
            end

            Jump(OldChar.Humanoid)

            LocalPlayer.CharacterAdded:Connect(function(Character)
                wait(1)
                if Character.Name == LocalPlayer.Name then
                    Jump(Character.Humanoid)
                    Poter = Character:WaitForChild("Humanoid"):LoadAnimation(Pointing)
                    Poter.Looped = true
                    Poter.Priority = Enum.AnimationPriority.Action

                    Cookies = Character:WaitForChild("Humanoid"):LoadAnimation(game.ReplicatedStorage.ClientAnimations.
                        Roll)
                    OldChar = Character
                end
            end)

            game["Run Service"].Heartbeat:Connect(function()
                if InTimeErase then
                    for i, v in pairs(OldChar:GetChildren()) do
                        if v:IsA("BasePart") then
                            v.CFrame = CFrame.new(math.random(200, 500), math.random(200, 500), math.random(200, 500))
                            v.Velocity = Vector3.new(0, 0, 0)
                        end
                    end

                    if OldChar:FindFirstChild("Combat") and XD == true then
                        XD = false
                        XDDDD(true)
                    end

                    if WalkSpeed == true then
                        MoveDirection = Vector3.new(LeftSpeed, UpSpeed, WSpped)
                        workspace:FindFirstChild(LocalPlayer.Name .. "StringKOD"):FindFirstChild("Idaro").Humanoid:Move(MoveDirection
                            , true)
                    end
                else
                    if OldChar:FindFirstChild("[Flashlight]") then
                        if workspace.Players:FindFirstChild(MyStand) then
                            if not Poter.IsPlaying then
                                Poter:Play()
                                Poter:AdjustSpeed(0)
                                Poter.TimePosition = 1.2
                            end
                            local lol = workspace.Players:FindFirstChild(MyStand).HumanoidRootPart.CFrame *
                                CFrame.new(0, 0.5, 1.25)
                            OldChar.HumanoidRootPart.CFrame = lol
                        end
                    else
                        if Poter.IsPlaying then
                            Poter:Stop()
                        end
                    end
                end
            end)

        end)
        local UIS = game:GetService("UserInputService")
        UIS.InputBegan:Connect(function(obj)
            if obj.KeyCode == Enum.KeyCode.Q then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').HipHeight = 10

            elseif obj.KeyCode == Enum.KeyCode.F then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').HipHeight = 1.8
            elseif obj.KeyCode == Enum.KeyCode.V then
                local Animate = game.Players.LocalPlayer.Character.Animate
                Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
                Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
                Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
                Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
                Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
                Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
                Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
            end
        end)

        superhuman = false
        plr = game.Players.LocalPlayer
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == "z" and superhuman == false then
                superhuman = true
                game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
                game.Players.LocalPlayer.Character.Humz.WalkSpeed = 100
                game.Players.LocalPlayer.Character.Humz.JumpPower = 200
            elseif key == "z" and superhuman == true then
                superhuman = false
                game.Players.LocalPlayer.Character.Humz.WalkSpeed = 16
                game.Players.LocalPlayer.Character.Humz.JumpPower = 50
                game.Players.LocalPlayer.Character.Humz.Name = "Humanoid"
            end

        end)
    end
})
Section7:NewButton({
    Title = "Minecraft Creeper",
    Callback = function()
        pcall(function()
            game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
            game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
            game.Players.LocalPlayer.Character.Head.Neck:Destroy()
            game.Players.LocalPlayer.Character.UpperTorso.NeckAttachment:Destroy()
            game.Players.LocalPlayer.Character.Humanoid.HealthDisplayDistance = math.huge
            game.Players.LocalPlayer.Character.Humanoid.NameDisplayDistance = math.huge
            game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0, 0, 0)
            game.Players.LocalPlayer.Character.Head.Massless = true
            game.Players.LocalPlayer.Character.Head.CanCollide = false

            while true do
                pcall(function()
                    game.Players.LocalPlayer.Character.Head.NeckRigAttachment.CFrame = CFrame.new(0, 100000.4736328125, 0)
                    game.Players.LocalPlayer.Character.UpperTorso.NeckRigAttachment.CFrame = CFrame.new(0,
                        100000.4736328125, 0)
                    game.Players.LocalPlayer.Character.Head.CFrame = CFrame.new(0, 100000.4736328125, 0)
                end)
                wait()
            end
        end)
    end
})
Section7:NewToggle({
    Title = "Open/Close admin door [CS]",
    Callback = function(state)
        if state then
            local part = game:GetService("Workspace").MAP["EVIL_SPECIAL"]

            if part.CFrame == CFrame.new(-428.255005, 17.100769, -886, 1, 0, 0, 0, 1, 0, 0, 0, 1) then

                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, 1, 0)
            end
        elseif state == false then
            local part = game:GetService("Workspace").MAP["EVIL_SPECIAL"]

            if part.CFrame == CFrame.new(-428.255005, 43.100769, -886, 1, 0, 0, 0, 1, 0, 0, 0, 1) then

                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
                wait(0.1)
                part.CFrame = part.CFrame + Vector3.new(0, -1, 0)
            end
        end
    end,
    Default = false
})





--// others
Section6:NewButton({
    Title = "Close game",
    Callback = function()
        game:Shutdown()
    end
})
Section6:NewButton({
    Title = "rejoin",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer

        local Rejoin = coroutine.create(function()
            local Success, ErrorMessage = pcall(function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end)

            if ErrorMessage and not Success then
                warn(ErrorMessage)
            end
        end)

        coroutine.resume(Rejoin)
    end
})
Section6:NewButton({
    Title = "Inf. zoom",
    Callback = function()
        localplayer.CameraMaxZoomDistance = 99999999999
    end
})


--// autofarms etc
getgenv().autoDrop = false;
Section5:NewToggle({
    Title = "Autodrop 7k",
    Callback = function(state)
        if state then
            getgenv().autoDrop = true;
        elseif state == false then
            getgenv().autoDrop = false;
        end
        while getgenv().autoDrop == true do
            wait()
            local args = {
                [1] = "DropMoney",
                [2] = "10000"
            }
            game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
        end
    end,
    Default = false
})
Section5:NewButton({
    Title = "Cash esp",
    Callback = function()
        local ESPholder = Instance.new("Folder", game.CoreGui)
        function cham(object)
            if object.Name == "MoneyDrop" then
                local a = Instance.new("BoxHandleAdornment", ESPholder)
                a.Adornee = object
                a.AlwaysOnTop = true
                a.ZIndex = 10
                a.Size = object.Size
                a.Transparency = 0.3
                a.Color = object.BrickColor
                local bill = object:WaitForChild("BillboardGui")
                bill.AlwaysOnTop = true
                bill.Size = UDim2.new(2, 10, 1, 5)
                spawn(function()
                    while true do
                        if object.Parent.ChildRemoving:wait() == object then
                            a:Destroy()
                            break
                        end
                    end
                end)
            end
        end

        for i, v in next, game.Workspace.Ignored.Drop:GetChildren() do
            cham(v)
        end
        game.Workspace.Ignored.Drop.ChildAdded:connect(cham)
    end
})
Section5:NewButton({
    Title = "Cashaura",
    Callback = function()
        repeat
            wait()
        until game:IsLoaded()
        local gm = getrawmetatable(game)
        setreadonly(gm, false)
        local namecall = gm.__namecall
        gm.__namecall = newcclosure(
            function(self, ...)
                local args = { ... }
                if not checkcaller() and getnamecallmethod() == "FireServer" and tostring(self) == "MainEvent" then
                    if tostring(getcallingscript()) ~= "Framework" then
                        return
                    end
                end
                if not checkcaller() and getnamecallmethod() == "Kick" then
                    return
                end
                return namecall(self, unpack(args))
            end
        )

        local LocalPlayer = game:GetService("Players").LocalPlayer

        function gettarget()
            local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
            local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
            local maxdistance = math.huge
            local target
            for i, v in pairs(game:GetService("Workspace").Cashiers:GetChildren()) do
                if v:FindFirstChild("Head") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    local distance = (HumanoidRootPart.Position - v.Head.Position).magnitude
                    if distance < maxdistance then
                        target = v
                        maxdistance = distance
                    end
                end
            end
            return target
        end

        shared.MoneyFarm = true -- Just execute shared.MoneyFarm = false to stop farming

        while shared.MoneyFarm do
            wait()
            local Target = gettarget()
            repeat
                wait()
                pcall(
                    function()
                        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
                        local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                        local Combat = LocalPlayer.Backpack:FindFirstChild("Combat") or
                            Character:FindFirstChild("Combat")
                        if not Combat then
                            print("not combat")
                            return
                        end
                    end
                )
            until not Target or Target.Humanoid.Health > 0
            for i, v in pairs(game:GetService("Workspace").Ignored.Drop:GetDescendants()) do
                if v:IsA("ClickDetector") and v.Parent and v.Parent.Name:find("Money") then
                    local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
                    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
                    if (v.Parent.Position - HumanoidRootPart.Position).magnitude <= 18 then
                        repeat
                            wait()
                            fireclickdetector(v)
                        until not v or not v.Parent.Parent
                    end
                end
            end
            wait(1)
        end
    end
})






































--// combat
Section4:NewTextbox({
    Title = "Aimock",
    PlaceholderText = "Bind it", -- default is ""
    Callback = function(v)
        key7 = v
    end
})
Section4:NewTextbox({
    Title = "Silentaim",
    PlaceholderText = "Bind it", -- default is ""
    Callback = function(v)
        key8 = Enum.KeyCode[v]
    end
})
Section4:NewTextbox({
    Title = "Killaura",
    PlaceholderText = "Bind it", -- default is ""
    Callback = function(v)
        key9 = Enum.KeyCode[v]
    end
})
Section4:NewTextbox({
    Title = "Free Fist",
    PlaceholderText = "Bind it", -- default is ""
    Callback = function(v)
        key10 = Enum.KeyCode[v]
    end
})
Section4:NewToggle({
    Title = "ESP",
    Callback = function(L_201_arg0)
        L_18_:Toggle(L_201_arg0)
    end,
    Default = false
})
Section4:NewToggle({
    Title = "Tracers",
    Callback = function(L_202_arg0)
        L_18_.Tracers = L_202_arg0
    end,
    Default = false
})
Section4:NewToggle({
    Title = "Names",
    Callback = function(L_203_arg0)
        L_18_.Names = L_203_arg0
    end,
    Default = false
})
Section4:NewToggle({
    Title = "Boxes",
    Callback = function(L_204_arg0)
        L_18_.Boxes = L_204_arg0
    end,
    Default = false
})
Section4:NewButton({
    Title = "Aimlock",
    Callback = function()
        getgenv().AimPart = "HumanoidRootPart"
        getgenv().AimlockKey = key7
        getgenv().AimRadius = 30
        getgenv().ThirdPerson = true
        getgenv().FirstPerson = true
        getgenv().TeamCheck = false
        getgenv().PredictMovement = true
        getgenv().PredictionVelocity = 9
        local L_27_, L_28_, L_29_, L_30_ =
        game:GetService "Players",
            game:GetService "UserInputService",
            game:GetService "RunService",
            game:GetService "StarterGui"
        local L_31_, L_32_, L_33_, L_34_, L_35_, L_36_, L_37_ =
        L_27_.LocalPlayer,
            L_27_.LocalPlayer:GetMouse(),
            workspace.CurrentCamera,
            CFrame.new,
            Ray.new,
            Vector3.new,
            Vector2.new
        local L_38_, L_39_, L_40_ = true, false, false
        local L_41_
        getgenv().CiazwareUniversalAimbotLoaded = true
        getgenv().WorldToViewportPoint = function(L_42_arg0)
            return L_33_:WorldToViewportPoint(L_42_arg0)
        end
        getgenv().WorldToScreenPoint = function(L_43_arg0)
            return L_33_.WorldToScreenPoint(L_33_, L_43_arg0)
        end
        getgenv().GetObscuringObjects = function(L_44_arg0)
            if L_44_arg0 and L_44_arg0:FindFirstChild(getgenv().AimPart) and L_31_ and
                L_31_.Character:FindFirstChild("Head") then
                local L_45_ = workspace:FindPartOnRay(L_35_(L_44_arg0[getgenv().AimPart].Position,
                    L_31_.Character.Head.Position))
                if L_45_ then
                    return L_45_:IsDescendantOf(L_44_arg0)
                end
            end
        end
        getgenv().GetNearestTarget = function()
            local L_46_ = {}
            local L_47_ = {}
            local L_48_ = {}
            for L_50_forvar0, L_51_forvar1 in pairs(L_27_:GetPlayers()) do
                if L_51_forvar1 ~= L_31_ then
                    table.insert(L_46_, L_51_forvar1)
                end
            end
            for L_52_forvar0, L_53_forvar1 in pairs(L_46_) do
                if L_53_forvar1.Character ~= nil then
                    local L_54_ = L_53_forvar1.Character:FindFirstChild("Head")
                    if getgenv().TeamCheck == true and L_53_forvar1.Team ~= L_31_.Team then
                        local L_55_ =
                        (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p)
                            .magnitude
                        local L_56_ =
                        Ray.new(
                            game.Workspace.CurrentCamera.CFrame.p,
                            (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_55_
                        )
                        local L_57_, L_58_ = game.Workspace:FindPartOnRay(L_56_, game.Workspace)
                        local L_59_ = math.floor((L_58_ - L_54_.Position).magnitude)
                        L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
                        L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_55_
                        L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
                        L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_59_
                        table.insert(L_48_, L_59_)
                    elseif getgenv().TeamCheck == false and L_53_forvar1.Team == L_31_.Team then
                        local L_60_ =
                        (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p)
                            .magnitude
                        local L_61_ =
                        Ray.new(
                            game.Workspace.CurrentCamera.CFrame.p,
                            (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_60_
                        )
                        local L_62_, L_63_ = game.Workspace:FindPartOnRay(L_61_, game.Workspace)
                        local L_64_ = math.floor((L_63_ - L_54_.Position).magnitude)
                        L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
                        L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_60_
                        L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
                        L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_64_
                        table.insert(L_48_, L_64_)
                    end
                end
            end
            if unpack(L_48_) == nil then
                return nil
            end
            local L_49_ = math.floor(math.min(unpack(L_48_)))
            if L_49_ > getgenv().AimRadius then
                return nil
            end
            for L_65_forvar0, L_66_forvar1 in pairs(L_47_) do
                if L_66_forvar1.diff == L_49_ then
                    return L_66_forvar1.plr
                end
            end
            return nil
        end
        L_32_.KeyDown:Connect(
            function(L_67_arg0)
                if L_67_arg0 == AimlockKey and L_41_ == nil then
                    pcall(
                        function()
                            if L_39_ ~= true then
                                L_39_ = true
                            end
                            local L_68_
                            L_68_ = GetNearestTarget()
                            if L_68_ ~= nil then
                                L_41_ = L_68_
                            end
                        end
                    )
                elseif L_67_arg0 == AimlockKey and L_41_ ~= nil then
                    if L_41_ ~= nil then
                        L_41_ = nil
                    end
                    if L_39_ ~= false then
                        L_39_ = false
                    end
                end
            end
        )
        L_29_.RenderStepped:Connect(
            function()
                if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then
                    if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 or
                        (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1
                    then
                        L_40_ = true
                    else
                        L_40_ = false
                    end
                elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then
                    if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 then
                        L_40_ = true
                    else
                        L_40_ = false
                    end
                elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then
                    if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1 then
                        L_40_ = true
                    else
                        L_40_ = false
                    end
                end
                if L_38_ == true and L_39_ == true then
                    if L_41_ and L_41_.Character and L_41_.Character:FindFirstChild(getgenv().AimPart) then
                        if getgenv().FirstPerson == true then
                            if L_40_ == true then
                                if getgenv().PredictMovement == true then
                                    L_33_.CFrame = L_34_(
                                        L_33_.CFrame.p,
                                        L_41_.Character[getgenv().AimPart].Position +
                                        L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                    )
                                elseif getgenv().PredictMovement == false then
                                    L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
                                end
                            end
                        elseif getgenv().ThirdPerson == true then
                            if L_40_ == true then
                                if getgenv().PredictMovement == true then
                                    L_33_.CFrame = L_34_(
                                        L_33_.CFrame.p,
                                        L_41_.Character[getgenv().AimPart].Position +
                                        L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                    )
                                elseif getgenv().PredictMovement == false then
                                    L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
                                end
                            end
                        end
                    end
                end
            end
        )
    end
})
Section4:NewButton({
    Title = "Silent Aim",
    Callback = function()
        local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/tayodevelup/imsoniac/main/silent2"))()
        Aiming.TeamCheck(false)

        local Workspace = game:GetService("Workspace")
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local UserInputService = game:GetService("UserInputService")

        local LocalPlayer = Players.LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        local CurrentCamera = Workspace.CurrentCamera

        local DaHoodSettings = {
            SilentAim = true,
            AimLock = false,
            Prediction = 0.157,
            AimLockKeybind = key8
        }
        getgenv().DaHoodSettings = DaHoodSettings

        function Aiming.Check()
            if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
                return false
            end

            local Character = Aiming.Character(Aiming.Selected)
            local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
            local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

            if (KOd or Grabbed) then
                return false
            end

            return true
        end

        local __index
        __index = hookmetamethod(game, "__index", function(t, k)
            if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
                local SelectedPart = Aiming.SelectedPart

                if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
                    local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

                    return (k == "Hit" and Hit or SelectedPart)
                end
            end

            return __index(t, k)
        end)

        RunService:BindToRenderStep("AimLock", 0, function()
            if (DaHoodSettings.AimLock and Aiming.Check() and UserInputService:IsKeyDown(DaHoodSettings.AimLockKeybind)) then
                local SelectedPart = Aiming.SelectedPart

                local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

                CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
            end
        end)
    end
})
Section4:NewButton({
    Title = "No recoil",
    Callback = function()
        for i, v in pairs(game:GetService('Workspace'):GetChildren()) do
            if v:IsA('Camera') then
                v:Destroy()
            end
        end
        local LocalPlayer = game:GetService('Players').LocalPlayer;
        local newcam = Instance.new('Camera', game.Workspace)
        game.Workspace.Camera.CameraSubject = LocalPlayer.Character.Humanoid;
        newcam.Name = 'Camera'
        newcam.CameraType = 'Custom'
        newcam.CameraSubject = game:GetService('Workspace').Players:FindFirstChild(player.Name):FindFirstChild('Humanoid')
        newcam.HeadLocked = true
        newcam.HeadScale = 1
    end
})
Section4:NewButton({
    Title = "Killaura",
    Callback = function()

        local Settings = {
            ["MaxStudDistance"] = 20;
            ["LoopBind"] = key9;
        };

        local Players        = game:GetService("Players");
        local localPlayer    = Players.LocalPlayer;
        local localCharacter = localPlayer.Character;
        local toggle         = false;

        local RunService       = game:GetService("RunService");
        local UserInputService = game:GetService("UserInputService");


        function cosbyFind(str)
            if (not str) then
                return
            end
            ;for _, v in next, Players:GetPlayers() do
                if (v.Name:lower():find(str:lower()) == 1) then
                    return v.Name;
                end
                ; end
            ; end

        function checkDistance(plr)
            local Distance = localPlayer:DistanceFromCharacter(game:GetService("Players")[plr].Character:FindFirstChild("HumanoidRootPart")
                .Position);
            if (Distance < Settings.MaxStudDistance) then
                return true;
            else
                return false;
            end
            ; end

        function DetatchWrists()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightHand"):FindFirstChild("RightWrist"):
                Remove();
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftHand"):FindFirstChild("LeftWrist"):
                Remove();
        end

        function ReAttachWrists()
            local rightwrist = Instance.new("Motor6D");
            rightwrist.Name = "RightWrist";
            rightwrist.Parent = game:GetService("Players").LocalPlayer.Character.RightHand;
            rightwrist.C0 = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
            rightwrist.C1 = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
            rightwrist.Part0 = game:GetService("Players").LocalPlayer.Character.RightLowerArm;
            rightwrist.Part1 = game:GetService("Players").LocalPlayer.Character.RightHand;

            local leftwrist = Instance.new("Motor6D");
            leftwrist.Name = "LeftWrist";
            leftwrist.Parent = game:GetService("Players").LocalPlayer.Character.LeftHand;
            leftwrist.C0 = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
            leftwrist.C1 = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
            leftwrist.Part0 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm;
            leftwrist.Part1 = game:GetService("Players").LocalPlayer.Character.LeftHand;
        end

        function TargetPlayer(plr, shit)
            local targ = Players[plr];
            if (targ.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == false) then
                repeat
                    wait();
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("LeftHand").CFrame = targ.Character:
                        FindFirstChild("UpperTorso").CFrame;
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild("RightHand").CFrame = targ.Character
                        :FindFirstChild("UpperTorso").CFrame;
                until targ.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == true or toggle == false
            end
        end

        ;RunService.RenderStepped:Connect(function()
            if (toggle == true) then
                for _, v in next, Players:GetPlayers() do
                    local dist = checkDistance(v.Name);
                    if (dist == true) then
                        if (v.Name == localPlayer.Name) then
                        else
                            pcall(TargetPlayer(v.Name, toggle));
                        end
                    end
                end
            end
        end);

        UserInputService.InputBegan:Connect(function(key, e)
            if (e) then
                return
            end
            ;if (key.KeyCode == Settings.LoopBind) then
                if (toggle == false) then
                    toggle = true;
                    print("Enabled.")
                    pcall(DetatchWrists());
                elseif (toggle == true) then
                    toggle = false;
                    print("Disabled.")
                    pcall(ReAttachWrists());
                end
            end
        end);
    end
})
Section4:NewButton({
    Title = "Free Fist",
    Callback = function()
        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("Seat") then
                v.Disabled = true
            end
        end
        -- // Variables
        local localPlayer    = game:GetService("Players").LocalPlayer;
        local localCharacter = localPlayer.Character
        local Mouse          = localPlayer:GetMouse();
        local FistControl    = false
        local LeftFist       = localCharacter.LeftHand;
        local RightFist      = localCharacter.RightHand;

        -- // Services
        local uis = game:GetService("UserInputService");

        -- // Coroutine Loop + Functions
        local loopFunction = function()
            LeftFist.CFrame  = CFrame.new(Mouse.Hit.p);
            RightFist.CFrame = CFrame.new(Mouse.Hit.p);
        end;

        local Loop

        local Start = function()
            Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
        end;

        local Pause = function()
            Loop:Disconnect()
        end;

        -- // Hotkeys
        uis.InputBegan:connect(function(Key)
            if (Key.KeyCode == key10) then
                if (FistControl == false) then
                    FistControl = true;
                    Start();
                    pcall(function()
                        localCharacter.RightHand.RightWrist:Remove();
                        localCharacter.LeftHand.LeftWrist:Remove();
                    end);
                elseif (FistControl == true) then
                    FistControl = false;
                    Pause();
                    local rightwrist  = Instance.new("Motor6D");
                    rightwrist.Name   = "RightWrist";
                    rightwrist.Parent = localCharacter.RightHand;
                    rightwrist.C0     = CFrame.new(1.18422506e-07, -0.5009287, -6.81715525e-18, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    rightwrist.C1     = CFrame.new(3.55267503e-07, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    rightwrist.Part0  = localCharacter.RightLowerArm;
                    rightwrist.Part1  = localCharacter.RightHand;

                    local leftwrist  = Instance.new("Motor6D");
                    leftwrist.Name   = "LeftWrist";
                    leftwrist.Parent = localCharacter.LeftHand;
                    leftwrist.C0     = CFrame.new(0.000475466368, -0.5009287, 7.59417072e-20, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    leftwrist.C1     = CFrame.new(0.000475821638, 0.125045404, 5.92112528e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1);
                    leftwrist.Part0  = localCharacter.LeftLowerArm;
                    leftwrist.Part1  = localCharacter.LeftHand;
                end
                ; end
            ; end);
    end
})
Section4:NewButton({
    Title = "Meele Reach",
    Callback = function()
        for i, v in pairs(game:GetService 'Players'.LocalPlayer.Character:GetChildren()) do
            if v:isA("Tool") then
                local a = Instance.new("SelectionBox", v.Handle)
                a.Adornee = v.Handle
                v.Handle.Size = Vector3.new(50, 50, 50)
                v.Handle.Transparency = 1.000
            end
        end
    end
})


--// avatar
Section3:NewTextbox({
    Title = "Autostomp",
    PlaceholderText = "Bind it",
    Callback = function(v)
        key5 = v
    end
})
Section3:NewTextbox({
    Title = "Trashtalk",
    PlaceholderText = "Bind it",
    Callback = function(v)
        key6 = Enum.KeyCode[v]
    end
})
Section3:NewToggle({
    Title = "Better Graphics",
    Callback = function(state)
        if state then
            game:GetService("Lighting").ColorCorrection.Saturation = 2
        elseif state == false then
            game:GetService("Lighting").ColorCorrection.Saturation = 1
        end
    end,
    Default = false
})
Section3:NewToggle({
    Title = "Mute/unmute all radios",
    Callback = function(state)
        if state then
            loadstring(game:HttpGet('https://pastebin.com/raw/fXaWvXka'))()
        elseif state == false then
            loadstring(game:HttpGet('https://pastebin.com/raw/mqxsm610'))()
        end
    end,
    Default = false
})
Section3:NewButton({
    Title = "Autostomp",
    Callback = function()
        autostomp = false
        game:GetService("RunService").Stepped:connect(function()
            if autostomp then
                game.ReplicatedStorage.MainEvent:FireServer("Stomp")
            end
        end)
        plr = game.Players.LocalPlayer
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == key5 then
                autostomp = not autostomp
                game.ReplicatedStorage.MainEvent:FireServer("Stomp")
            end

        end)
    end
})
Section3:NewButton({
    Title = "Trashtalk",
    Callback = function()
        local plr = game.Players.LocalPlayer
        repeat wait() until plr.Character
        local char = plr.Character

        local garbage = {
            "ur bad";
            "rat";
            "ez";
            "my grandma has more skill than you";
            "gun user";
            "bunny hopper";
            "trash";
            "LOL";
            "LMAO";
            "imagine being you right now";
            "xd";
            "stinky head";
            "you lose";
            "why do you even try";
            "I didn't think being this bad was possible";
            "leave";
            "no skill";
            "ahahahahahahaha";
            "bad";
            "you're nothing";
            "lol";
            "so trash";
            "so bad";
            "ur salty";
            "salty";
            "look he's mad";
            "cry more";
            "keep crying";
            "cry baby";
            "hahaha I won";
            "no one likes u";
            "darn";
            "thank you for your time";
            "you were so close!";
            "better luck next time!";
            "rodent";
            "XD";
            "/e dab";
            "./e dab";
            "time to take out the trash";
            "did you get worse?";
            "I'm surprised you haven't quit yet";
        }
        function TrashTalk(inputObject, gameProcessedEvent)
            if inputObject.KeyCode == key6 and gameProcessedEvent == false then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                    garbage[math.random(1, #garbage)],
                    "All"
                )
            end
        end

        game:GetService("UserInputService").InputBegan:connect(TrashTalk)
    end
})
Section3:NewButton({
    Title = "Antistomp",
    Callback = function()
        while true do
            pcall(function()
                local localplayer = game.Players.LocalPlayer
                if localplayer.Character.Humanoid.Health <= 50 then
                    game.Players.LocalPlayer.Character.Head:Destroy()
                    game.Players.LocalPlayer.Character.RightHand:Destroy()
                    game.Players.LocalPlayer.Character.LeftHand:Destroy()
                    game.Players.LocalPlayer.Character.LowerTorso:Destroy()
                    game.Players.LocalPlayer.Character.UpperTorso:Destroy()
                    game.Players.LocalPlayer.Character.LeftLowerLeg:Destroy()
                    game.Players.LocalPlayer.Character.RightLowerLeg:Destroy()
                    game.Players.LocalPlayer.Character.RightFoot:Destroy()
                    game.Players.LocalPlayer.Character.LeftFoot:Destroy()
                    game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
                    game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
                    game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
                    game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
                    game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
                    game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
                end
            end)
            wait()
        end
    end
})
Section3:NewButton({
    Title = "Animation Gamepass",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/UGNNNznm'))()
    end
})
Section3:NewButton({
    Title = "Korblox [CS]",
    Callback = function()
        local ply = game.Players.LocalPlayer
        local chr = ply.Character
        chr.RightLowerLeg.MeshId = "902942093"
        chr.RightLowerLeg.Transparency = "1"
        chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
        chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        chr.RightFoot.MeshId = "902942089"
        chr.RightFoot.Transparency = "1"
    end
})
Section3:NewButton({
    Title = "Headless [CS]",
    Callback = function()
        game.Players.LocalPlayer.Character.Head.Transparency = 1

        for i, v in pairs(game.Players.LocalPlayer.Character.Head:GetChildren()) do

            if (v:IsA("Decal")) then
                v:Destroy()
            end
        end
    end
})
Section3:NewButton({
    Title = "Get knife and lockpick",
    Callback = function()
        for i, v in pairs(game:GetService("Workspace").Ignored:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(playerHead, v.Parent, 0)
                wait(0.1)
                firetouchinterest(playerHead, v.Parent, 1)
            end
        end
    end
})
Section3:NewButton({
    Title = "Super Super Happy Face [CS]",
    Callback = function()
        local L_409_ = game.Players.LocalPlayer.Character
        local L_410_ = L_409_:WaitForChild("Head")
        local L_411_ = L_410_:WaitForChild("face")
        L_411_.Texture = "rbxassetid://494290547"
    end
})
Section3:NewButton({
    Title = "Godmode [reset to disable]",
    Callback = function()
        function Godmode()
            if game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("Attacking") then
                game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("Attacking"):Destroy()
            end
        end

        Godmode()
    end
})
Section3:NewButton({
    Title = "Godblock/Godbullet",
    Callback = function()
        local localPlayer = game:GetService('Players').LocalPlayer;
        local localCharacter = localPlayer.Character;
        localCharacter:FindFirstChildOfClass('Humanoid').Health = 0;
        local newCharacter = localPlayer.CharacterAdded:Wait();
        local spoofFolder = Instance.new('Folder');
        spoofFolder.Name = 'FULLY_LOADED_CHAR';
        spoofFolder.Parent = newCharacter;
        newCharacter:WaitForChild('RagdollConstraints'):Destroy();
        local spoofValue = Instance.new('BoolValue', newCharacter);
        spoofValue.Name = 'RagdollConstraints';
        wait()
        local ps = game:GetService("Players")
        local lp = ps.LocalPlayer
        local char = lp.Character

        char.BodyEffects.Armor:Destroy()
        char.BodyEffects.Defense:Destroy()

        local Clone1 = Instance.new("IntValue")
        Clone1.Name = "Armor"
        Clone1.Parent = char.BodyEffects

        local Clone2 = Instance.new("NumberValue")
        Clone2.Name = "Defense"
        Clone2.Parent = char.BodyEffects
        wait()
    end
})

--// movement
Section2:NewTextbox({
    Title = "Realistic Speed Glitch",
    PlaceholderText = "Bind it",
    Callback = function(v)
        key1 = v
    end
})
Section2:NewTextbox({
    Title = "Fake Speedglitch",
    PlaceholderText = "Bind it",
    Callback = function(v)
        key2 = v
    end
})
Section2:NewTextbox({
    Title = "Superhuman",
    PlaceholderText = "Bind it",
    Callback = function(v)
        key3 = v
    end
})
Section2:NewTextbox({
    Title = "Fly",
    PlaceholderText = "Bind it",
    Callback = function(v)
        key4 = v
    end
})
Section2:NewButton({
    Title = "No jumpcooldown",
    Callback = function()
        if not game.IsLoaded(game) then
            game.Loaded.Wait(game.Loaded);
        end
        local IsA = game.IsA;
        local newindex = nil
        newindex = hookmetamethod(game, "__newindex", function(self, Index, Value)
            if not checkcaller() and IsA(self, "Humanoid") and Index == "JumpPower" then
                return
            end

            return newindex(self, Index, Value);
        end)
    end
})
Section2:NewButton({
    Title = "Click to tp",
    Callback = function()
        game.StarterGui:SetCoreGuiEnabled(2, true)
        mouse = game.Players.LocalPlayer:GetMouse()
        tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "I D K"
        tool.Activated:connect(function()
            local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
            pos = CFrame.new(pos.X, pos.Y, pos.Z)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        end)
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
})
Section2:NewButton({
    Title = "Bike Fly",
    Callback = function()
        local speed = 20
        local old
        local Plr = game.Players.LocalPlayer
        local wheels = {}
        local control = { q = false, e = false, w = false, a = false, s = false, d = false }
        local Mouse = Plr:GetMouse()

        Mouse.KeyDown:connect(function(KEY)
            local key = KEY:lower()
            if control[key] ~= nil then
                control[key] = true
            end
        end)

        Mouse.KeyUp:connect(function(KEY)
            local key = KEY:lower()
            if control[key] ~= nil then
                control[key] = false
            end
        end)

        while game.RunService.Stepped:wait() do
            local seat = (Plr.Character or Plr.CharacterAdded:wait()):WaitForChild("Humanoid").SeatPart
            if Plr.PlayerGui:FindFirstChild("MainScreenGui") and Plr.PlayerGui.MainScreenGui:FindFirstChild("Bar") and
                Plr.PlayerGui.MainScreenGui.Bar:FindFirstChild("Speed") then
                Plr.PlayerGui.MainScreenGui.Bar.Speed.bar.Size = UDim2.new(speed / 100 * 0.95, 0, 0.83, 0)
            else
                local c = Plr.PlayerGui.MainScreenGui.Bar.HP
                local g = c:Clone()
                g.Name = "Speed"
                g.Position = UDim2.new(0.5, 0, 1, -120)
                g.bar.BackgroundColor3 = Color3.fromRGB(255, 155, 0)
                g.Picture.Image.Image = "rbxassetid://181035717"
                g.TextLabel.Text = "Speed"
                g.Parent = c.Parent
            end
            if seat ~= nil and seat:IsDescendantOf(game.Workspace.Vehicles) then
                if seat ~= old then
                    if old then
                        old.Vel:Destroy()
                        old.Gyro:Destroy()
                    end
                    old = seat
                    for i = 1, 2 do
                        if wheels[i] then
                            wheels[i][2].Parent = wheels[i][1]
                        end
                        local wheel = seat.Parent.Wheel
                        wheels[i] = { seat.Parent, wheel }
                        wheel:remove()
                    end
                    local gyro = Instance.new("BodyGyro", seat)
                    gyro.Name = "Gyro"
                    local pos = Instance.new("BodyVelocity", seat)
                    pos.Name = "Vel"
                    gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
                    pos.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                else
                    seat.Gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                    local vel = CFrame.new(0, 0, 0)
                    if control.w then
                        vel = vel * CFrame.new(0, 0, -speed)
                    end
                    if control.s then
                        vel = vel * CFrame.new(0, 0, speed)
                    end
                    if control.a then
                        vel = vel * CFrame.new(-speed, 0, 0)
                    end
                    if control.d then
                        vel = vel * CFrame.new(speed, 0, 0)
                    end
                    seat.Vel.Velocity = (seat.CFrame * vel).p - seat.CFrame.p
                end
            end
            if control.e and speed < 200 then
                speed = speed + 1
            end
            if control.q and speed > 0 then
                speed = speed - 1
            end
        end
    end
})
Section2:NewButton({
    Title = "SuperHuman",
    Callback = function()

        superhuman = false
        plr = game.Players.LocalPlayer
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == key3 and superhuman == false then
                superhuman = true
                game.Players.LocalPlayer.Character.Humanoid.Name = "Humz"
                game.Players.LocalPlayer.Character.Humz.WalkSpeed = 100
                game.Players.LocalPlayer.Character.Humz.JumpPower = 200
            elseif key == key3 and superhuman == true then
                superhuman = false
                game.Players.LocalPlayer.Character.Humz.WalkSpeed = 16
                game.Players.LocalPlayer.Character.Humz.JumpPower = 50
                game.Players.LocalPlayer.Character.Humz.Name = "Humanoid"
            end

        end)
    end
})
Section2:NewButton({
    Title = "Fake Macro",
    Callback = function()
        plr = game:GetService('Players').LocalPlayer
        down = true

        function onButton1Down(mouse)
            down = true
            while down do
                if not down then break end
                local char = plr.Character
                char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * 190
                wait()
            end
        end

        function onButton1Up(mouse)
            down = false
        end

        function onSelected(mouse)
            mouse.KeyDown:connect(function(b) if b:lower() == key2 then onButton1Down(mouse) end end)
            mouse.KeyUp:connect(function(b) if b:lower() == key2 then onButton1Up(mouse) end end)
        end

        onSelected(game.Players.LocalPlayer:GetMouse())
    end
})
Section2:NewButton({
    Title = "Realistic Speed Glitch",
    Callback = function()
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()
        local SpeedGlitch = false
        local Wallet = Player.Backpack:FindFirstChild("Wallet")

        local UniversalAnimation = Instance.new("Animation")

        function stopTracks()
            for _, v in next,
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):
                GetPlayingAnimationTracks() do
                if (v.Animation.AnimationId:match("rbxassetid")) then
                    v:Stop()
                end
            end
        end

        function loadAnimation(id)
            if UniversalAnimation.AnimationId == id then
                stopTracks()
                UniversalAnimation.AnimationId = "1"
            else
                UniversalAnimation.AnimationId = id
                local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
                    :LoadAnimation(UniversalAnimation)
                animationTrack:Play()
            end
        end

        Mouse.KeyDown:Connect(function(Key)
            if Key == key1 then
                SpeedGlitch = not SpeedGlitch
                if SpeedGlitch == true then
                    stopTracks()
                    loadAnimation("rbxassetid://3189777795")
                    wait(1.5)
                    Wallet.Parent = Player.Character
                    wait(0.15)
                    Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                    wait(0.05)
                    repeat game:GetService("RunService").Heartbeat:wait()
                        keypress(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keypress(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x49)
                        game:GetService("RunService").Heartbeat:wait()
                        keyrelease(0x4F)
                        game:GetService("RunService").Heartbeat:wait()
                    until SpeedGlitch == false
                end
            end
        end)
    end
})
Section2:NewButton({
    Title = "ctrl + click - to tp",
    Callback = function()
        local UIS = game:GetService("UserInputService")

        local Player = game.Players.LocalPlayer
        local Mouse = Player:GetMouse()
        function GetCharacter()
            return game.Players.LocalPlayer.Character
        end

        function Teleport(pos)
            local Char = GetCharacter()
            if Char then
                Char:MoveTo(pos)
            end
        end

        UIS.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
                Teleport(Mouse.Hit.p)
            end
        end)
    end
})
Section2:NewButton({
    Title = "Fly",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local mouse = plr:GetMouse()

        localplayer = plr

        if workspace:FindFirstChild("Core") then
            workspace.Core:Destroy()
        end

        local Core = Instance.new("Part")
        Core.Name = "Core"
        Core.Size = Vector3.new(0.05, 0.05, 0.05)

        spawn(function()
            Core.Parent = workspace
            local Weld = Instance.new("Weld", Core)
            Weld.Part0 = Core
            Weld.Part1 = localplayer.Character.LowerTorso
            Weld.C0 = CFrame.new(0, 0, 0)
        end)

        workspace:WaitForChild("Core")

        local torso = workspace.Core
        flying = true
        local speed = 40
        local keys = { a = false, d = false, w = false, s = false }
        local e1
        local e2
        local function start()
            local pos = Instance.new("BodyPosition", torso)
            local gyro = Instance.new("BodyGyro", torso)
            pos.Name = "EPIXPOS"
            pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            pos.position = torso.Position
            gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
            gyro.cframe = torso.CFrame
            repeat
                wait()
                localplayer.Character.Humanoid.PlatformStand = true
                local new = gyro.cframe - gyro.cframe.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                    speed = 40
                end
                if keys.w then
                    new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed = speed + 0
                end
                if keys.s then
                    new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                    speed = speed + 0
                end
                if keys.d then
                    new = new * CFrame.new(speed, 0, 0)
                    speed = speed + 0
                end
                if keys.a then
                    new = new * CFrame.new(-speed, 0, 0)
                    speed = speed + 0
                end
                if speed > 10 then
                    speed = 40
                end
                pos.position = new.p
                if keys.w then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad(speed * 0), 0, 0)
                elseif keys.s then
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(math.rad(speed * 0), 0, 0)
                else
                    gyro.cframe = workspace.CurrentCamera.CoordinateFrame
                end
            until flying == false
            if gyro then gyro:Destroy() end
            if pos then pos:Destroy() end
            flying = false
            localplayer.Character.Humanoid.PlatformStand = false
            speed = 40
        end

        e1 = mouse.KeyDown:connect(function(key)
            if not torso or not torso.Parent then flying = false e1:disconnect() e2:disconnect() return end
            if key == "w" then
                keys.w = true
            elseif key == "s" then
                keys.s = true
            elseif key == "a" then
                keys.a = true
            elseif key == "d" then
                keys.d = true
            elseif key == key4 then
                if flying == true then
                    flying = false
                else
                    flying = true
                    start()
                end
            end
        end)
        e2 = mouse.KeyUp:connect(function(key)
            if key == "w" then
                keys.w = false
            elseif key == "s" then
                keys.s = false
            elseif key == "a" then
                keys.a = false
            elseif key == "d" then
                keys.d = false
            end
        end)
        start()
    end
})
Section2:NewButton({
    Title = "Walk on walls [z]",
    Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/wWEJNxVN'))()
    end
})


--// Teleports
Section:NewDropdown({
    Title    = "Teleport to player",
    Items    = PlayerTable,
    Callback = function(v)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v].Character.HumanoidRootPart.CFrame *
            CFrame.new(0, 0, 1)
    end
})
Section:NewButton({
    Title = "Save Position",
    Callback = function()
        _G.savedhumanoidpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    end
})
Section:NewButton({
    Title = "LoadPosition",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_G.savedhumanoidpos)
    end
})
Section:NewButton({
    Title = "Admin Base",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-798.8412475585938, -39.64921188354492,
            -889.1390380859375)
    end
})
Section:NewButton({
    Title = "Bank",
    Callback = function()
        teleportTO(game:GetService("Workspace").MAP.Map.bank.Part.CFrame)
    end
})
Section:NewButton({
    Title = "Gun Store 1",
    Callback = function()
        teleportTO(game:GetService("Workspace").MAP.Map.gunshop["sliding door"].Part.CFrame)
    end
})
Section:NewButton({
    Title = "Police Spawn",
    Callback = function()
        teleportTO(game:GetService("Workspace").Ignored.PoliceSpawn.CFrame)
    end
})
Section:NewButton({
    Title = "Gun Store2",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-576.0821533203125, 8.314781188964844,
            -739.17822265625)
    end
})
Section:NewButton({
    Title = "Da Furniture",
    Callback = function()
        teleportTO(game:GetService("Workspace").MAP.Map["Da Furniture"].Model.Part.CFrame)
    end
})
Section:NewButton({
    Title = "Phone Store",
    Callback = function()
        teleportTO(game:GetService("Workspace").Ignored.Shop["[Old Phone] - $100"].Head.CFrame)
    end
})
