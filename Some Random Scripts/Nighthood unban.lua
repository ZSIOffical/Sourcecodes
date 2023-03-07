local Tracks = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid"):GetPlayingAnimationTracks()
local Cuff = game:GetService("Players").LocalPlayer.Character.BodyEffects:FindFirstChild("Cuff")
local JailTimer = game:GetService("Players").LocalPlayer.DataFolder.Information:FindFirstChild("Jail")
local Cuff1 = game:GetService("Players").LocalPlayer.Character.LeftLowerArm:FindFirstChild("CUFF") 
local Cuff2 = game:GetService("Players").LocalPlayer.Character.RightLowerArm:FindFirstChild("CUFF")
hook = hookmetamethod(game,"__namecall",newcclosure(function(Self,...)
    local Args = {...}
    if Self.name == "MainEvent" and getnamecallmethod() == "FireServer" and string.find(string.lower(Args[1]),"check") then
        return
    end
    return hook(Self,...)
end))
for _,v in pairs(Tracks) do
    v:Stop()
end
pcall(function()
    Cuff:Destroy()
    Cuff1:Destroy()
    Cuff2:Destroy()
    JailTimer:Destroy()
end)
