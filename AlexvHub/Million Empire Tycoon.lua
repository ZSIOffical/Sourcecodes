-- Made by AlexvPlays
local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local w1 = library:Window("Millionaire Empire Tycoon") -- Text
local atfrm = false
w1:Toggle(
    "Autofarm",
    "atfrm",
    false,
    function(toggled)
        atfrm = toggled
    end
)
w1:Button(
    "Destroy GUI",
    function()
        for i, v in pairs(game.CoreGui:GetChildren()) do
            if v:FindFirstChild("Top") then
                v:Destroy()
            end
        end
        script:Destroy()
    end
)local plrtycoon
w1:Label("Restart script after rebirth")w1:Label("Made by AlexvPlays")repeat
wait()for i,tcn in workspace.Tycoons:GetChildren() do
	if tcn.Owner.Value == game.Players.LocalPlayer.Name then
		plrtycoon = tcn
		print("Found player's tycoon!")end
end
until plrtycoon
function money(value)
	local args = {
    		[1] = value}
	game:GetService("ReplicatedStorage").RespawnService:FireServer(unpack(args))
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(plrtycoon.StarterParts.Collector.Givers.Giver.Position)
end
while true do
	wait()
	if atfrm == true then
			pcall(function()
		local buttons = {}
		local mnnd = 0
		for i,btnmodel in plrtycoon:WaitForChild("ButtonsFolder"):GetChildren() do
			if not btnmodel:FindFirstChild("GamePass") and btnmodel.Name != " " then print("yes")
				table.insert(buttons, btnmodel)
				mnnd += btnmodel.Price.Value
			else print("no")
			end
		end
		money(mnnd)
		mnnd = 0
		for i,btnmdl in buttons do
			wait(0.06)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(btnmdl.Head.Position)
			wait(0.06)
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(plrtycoon.PurchasesFolder.Rebirth6.Position)
		end)
	end
end
