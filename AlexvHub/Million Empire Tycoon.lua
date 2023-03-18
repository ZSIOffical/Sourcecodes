local libraryLoader = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local window = libraryLoader:Window("Millionaire Empire Tycoon")
local autoFarmEnabled = false
window:Toggle(
    "Autofarm",
    "autoFarmEnabled",
    false,
    function(toggled)
        autoFarmEnabled = toggled
    end
)
window:Button(
    "Destroy GUI",
    function()
        for i, guiElement in pairs(game.CoreGui:GetChildren()) do
            if guiElement:FindFirstChild("Top") then
                guiElement:Destroy()
            end
        end
        script:Destroy()
    end
)
local playerTycoon
window:Label("Restart script after rebirth")
window:Label("Made by AlexvPlays")
repeat
wait()
for i, tycoon in workspace.Tycoons:GetChildren() do
	if tycoon.Owner.Value == game.Players.LocalPlayer.Name then
		playerTycoon = tycoon
		print("Found player's tycoon!")
	end
end
until playerTycoon

function addMoney(value)
	local args = {
    		[1] = value}
	game:GetService("ReplicatedStorage").RespawnService:FireServer(unpack(args))
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(playerTycoon.StarterParts.Collector.Givers.Giver.Position)
end

while true do
	wait()
	if autoFarmEnabled == true then
			pcall(function()
		local buttons = {}
		local totalCost = 0

		for i, buttonModel in playerTycoon.ButtonsFolder:GetChildren() do

			if not buttonModel:FindFirstChild("GamePass") and buttonModel.Name != " " then 
				table.insert(buttons, buttonModel)
				totalCost += buttonModel.Price.Value

			end

		end

		addMoney(totalCost)

		for i, buttonModel in pairs(buttons) do
			
			wait(0.06)

			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(buttonModel.Head.Position)

			wait(0.06)

		end
		
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(playerTycoon.PurchasesFolder.Rebirth6.Position)

	end)

end

end
