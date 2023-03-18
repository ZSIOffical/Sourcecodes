local library = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/0x"))()
local w1 = library:Window("AlexvHub: EAT or DIE") -- Text
local ijt = false
w1:Toggle(
    "Infinite jump",
    "ij",
    false,
    function(toggled)
        ijt = toggled
    end
) local espp = false
local ws = 16
w1:Slider(
    "WalkSpeed",
    "WS",
    16,
    300,
    function(value)
        ws = value
    end
)
w1:Toggle(
    "ESP",
    "esp",
    false,
    function(toggled)
        espp = toggled
    end
)
w1:Button(
    "Destroy VIP wall",
    function()
        for i, v in pairs(game.CoreGui:GetChildren()) do
            workspace.Lobby.VIP:Destroy()
        end
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
    end
)
w1:Label("Made by AlexvPlays") -- Text
game:GetService("UserInputService").JumpRequest:connect(function()
	if ijt == true then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
-- ESP
local random = Random.new()
local letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}

function getRandomLetter()
  return letters[random:NextInteger(1,#letters)]
end

function getRandomString(length, includeCapitals)
  local length = length or 10
  local str = ''
  for i=1,length do
    local randomLetter = getRandomLetter()
    if includeCapitals and random:NextNumber() > .5 then
      randomLetter = string.upper(randomLetter)
    end
    str = str .. randomLetter
  end
  return str
end
local stringrandom = getRandomString(24,true)

function reload()
  scan(workspace)
end
function scan(place:Instance)
  spawn(function()
    for _,part:Instance in place:GetChildren() do
      if (part.Name == "HumanoidRootPart") and part:IsA("Part") then
        if (not part:FindFirstChild(stringrandom)) and espp == true then
          local playerCharacter = part.Parent
          local player = game.Players:GetPlayerFromCharacter(playerCharacter)
          if (player ~= game.Players.LocalPlayer) then
            local billboard = Instance.new("BillboardGui")
            billboard.Size = UDim2.new(2,0,2,0)
            billboard.AlwaysOnTop = true
            billboard.Name = stringrandom
            billboard.Parent = part
            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(1,0,1,0)
            if espp == true then
            frame.BackgroundTransparency = 0.3
            frame.BorderSizePixel = 1
            else
                frame.BackgroundTransparency = 1
                frame.BorderSizePixel = 0
            end
            frame.Parent = billboard
            pcall(function()
              if player then
                frame.BackgroundColor3 = player.TeamColor.Color
              end
            end)
          end
        elseif espp == false and part:FindFirstChild(stringrandom) then
            part:FindFirstChild(stringrandom):Destroy()
        end
      end
      wait()
      if part:IsA("Model") or part:IsA("Folder") then
        scan(part)
      end
    end
  end)
end

while true do
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
  reload()
  wait()
end
