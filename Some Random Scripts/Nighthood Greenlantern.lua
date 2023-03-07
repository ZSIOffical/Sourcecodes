local function getGreenLantern()
	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			if v.Backpack:FindFirstChild("GreenLanternRing") then
				v.Backpack:FindFirstChild("GreenLanternRing").Parent = game.Players.LocalPlayer.Backpack
			end
		end
	end
end
local function beOwnerIg()
	if game.Players.LocalPlayer.Backpack:FindFirstChild("GreenLanternRing") then
		game.Players.LocalPlayer.Backpack:FindFirstChild("GreenLanternRing").Parent = game.Players.LocalPlayer.Character
	end
	if game.Players.LocalPlayer.Character:FindFirstChild("GreenLanternRing") then
		if game.Players.LocalPlayer.Character:FindFirstChild("GreenLanternRing"):FindFirstChild("OwnerTag") then
			game.Players.LocalPlayer.Character:FindFirstChild("GreenLanternRing"):FindFirstChild("OwnerTag"):Destroy()
		end
		local newOwnerTag = Instance.new("ObjectValue",game.Players.LocalPlayer.Character:FindFirstChild("GreenLanternRing"))
		newOwnerTag.Value = game.Players.LocalPlayer
		newOwnerTag.Name = "OwnerTag"
	end
end

getGreenLantern()
wait(0.2)
beOwnerIg()
