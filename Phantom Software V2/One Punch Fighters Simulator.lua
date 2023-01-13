local Settings = {
	["Wait Mode"] = "Wait",
	["Autokill"] = {
		NPC = "",
		Area = "",
		State = false,
		["Wait time Between Hits"] = 0
	},
    ["AutoEquip BestPet"] = false,
	["Autofarm Punches"] = {
		State = false
	},
    ["AutoclaimAchievements"] = {
        State = false,
    },
    ["Autorank Up"] = {
        State = false
    },
	["Auto Open Heroes"] = {
		["State"] = false,
		["Selected Area"] = "Area1"
	}
};
local Functions = {
	["Teleport to Island"] = function(Area)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).__GAME.__ISLANDS[Area].chao.Part.CFrame + Vector3.new(0,10,0)
	end,
	["Buy World"] = function(World)
		local args = {
			[1] = {
				[1] = {
					[1] = "\3",
					[2] = "BuyWorld",
					[3] = World
				}
			}
		};
		(game:GetService("ReplicatedStorage")).RemoteEvent:FireServer(unpack(args));
	end,
	["Claim Achievements"] = function(Achivement)
		local args = {
			[1] = {
				[1] = {
					[1] = "\3",
					[2] = "AchievementsGet",
					[3] = Achivement
				}
			}
		};
		(game:GetService("ReplicatedStorage")).RemoteEvent:FireServer(unpack(args));
	end
};
local Variables = {
	Islands = {},
	["Things to not fight against"] = {
		"AWAKEN_BARRIl",
		"METEOR_RAID"
	},
	["Island to autofarm in"] = "",
	Mobs = {},
    ["Pets"] = {},
	["Hero Areas"] = {},
	
    
};
----------------------
for i, v in pairs((game:GetService("Workspace")).__GAME.__ISLANDS:GetChildren()) do
	if v:IsA("Folder") then
		if v.Name ~= "Temp" then
			table.insert(Variables.Islands, v.Name);
			table.sort(Variables.Islands);
		end;
	end;
end;
for i, v in pairs((game:GetService("Workspace")).__GAME.__Mobs:GetChildren()) do
	if v:IsA("Folder") then
		table.insert(Variables.Mobs, v.Name);
		table.sort(Variables.Mobs);
	end;
end;
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Interface.Pets.MainFrame.Lista:GetChildren()) do
    if v:IsA("ImageLabel") then
        if v.Name ~= "PetTemplate" then
            table.insert(Variables.Pets,v.Name)
        end
    end
end
for i,v in pairs(game:GetService("Workspace")["__Zones"]["__Summons"]:GetChildren()) do 
	if v:IsA("Part") then 
		table.insert(Variables["Hero Areas"],tostring(v.Name))
		table.sort(Variables["Hero Areas"])
	end
end
------------------------
local UILib = (loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/UILib/itachi/source.lua")))();
local Library = UILib:Init({
	Title = "Phantom Hub"
});
local AutofarmsTab = Library:Tab("Autofarms");
local AutofarmSection = AutofarmsTab:Section("Autofarms");
local TeleportsTab = Library:Tab("Teleports")
local TeleportsSection = TeleportsTab:Section("Teleports")
local MiscTab = Library:Tab("Misc")
local MiscSeciton = MiscTab:Section("Misc")
local CreditsTab = Library:Tab("Credits")
local Credits= CreditsTab:Section("Credits")
Credits:NewButton({Title="SoloDev#7416",Callback=function() return setclipboard("discord.gg/softworks") end})
game:GetService("Workspace").__GAME.__Mobs.Changed:connect(function()
	for i, v in pairs((game:GetService("Workspace")).__GAME.__Mobs:GetChildren()) do
		if v:IsA("Folder") then
			table.insert(Variables.Mobs, v.Name);
			table.sort(Variables.Mobs);
		end;
	end;
end);
AutofarmSection:NewDropdown({
	Title = "Select Autofarm waitmode",
	Items = {
		"Wait",
		"Hearbeat",
        "TaskWait"
	},
	Callback = function(v)
		Settings["Wait Mode"] = v;
	end
});
AutofarmSection:NewDropdown({
	Title = "Select Autofarm Area for npcs",
	Items = Variables.Mobs,
	Callback = function(v)
		Settings.Autokill.Area = v;
	end
});
AutofarmSection:NewDropdown({
	Title = "Select An Area For Auto Open Heroes",
	Items = Variables["Hero Areas"],
	Callback = function(v)
		Settings["Auto Open Heroes"]["Selected Area"] = v;
	end
});
AutofarmSection:NewSlider({
	Title = "Wait Time Between Tp",
	Min = 0,
	Max = 60,
	Default = 0,
	Callback = function(v)
		Settings.Autokill["Wait time Between Hits"] = v;
	end
});
AutofarmSection:NewToggle({
	Title = "Auto Punch",
	Default = false,
	Callback = function(v)
		Settings["Autofarm Punches"].State = v;
		while Settings["Autofarm Punches"].State do
			if Settings["Wait Mode"] == "Wait" then
				wait();
				mouse1click();
			elseif Settings["Wait Mode"] == "Hearbeat" then
				(game:GetService("RunService")).Heartbeat:wait();
				mouse1click();
            elseif Settings["Wait Mode"] == "TaskWait" then
                task.wait()
                mouse1click();
			end;
		end;
	end
});
AutofarmSection:NewToggle({
	Title = "Auto Teleport To NPCS",
	Default = false,
	Callback = function(v)
		Settings.Autokill.State = v;
		while Settings.Autokill.State do
			for i, d in pairs((game:GetService("Workspace")).__GAME.__Mobs[Settings.Autokill.Area]:GetChildren()) do
				if d:IsA("Model") then
					if d.Name ~= "AWAKEN_BARRIl" or "METEOR_RAID" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (game:GetService("Workspace")).__GAME.__Mobs[Settings.Autokill.Area][d.Name].NpcModel.HumanoidRootPart.CFrame;
						wait(Settings.Autokill["Wait time Between Hits"]);
					end;
				end;
			end;
		end;
	end
});
AutofarmSection:NewToggle({
    Title = "Autoclaim Achievements",
    Default = false,
    Callback = function (v)
        Settings.AutoclaimAchievements.State = v
        while Settings["AutoclaimAchievements"].State do
            for i,d in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Interface.Achievements.Lista:GetChildren()) do
                if Settings["AutoclaimAchievements"].State then
                    if d:IsA("Frame") then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Interface.Achievements.Lista[d.Name].Frame.Clained.Visible == false then
                            Functions["Claim Achievements"](d.Name)
                            wait(0.5)
                        end
                    end
                end
            end
        end
    end
});
AutofarmSection:NewToggle({
    Title="Auto Rankup",
    Default = false,
    Callback = function (d)
        Settings["Autorank Up"].State = d
        while Settings["Autorank Up"].State do
            local args = {
                [1] = {
                    [1] = {
                        [1] = "\3",
                        [2] = "RankUp"
                    }}}
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            wait(0.5)
        end
    end
})
AutofarmSection:NewToggle({
	Title = "Auto Open Heroes",
	Default = false,
	Callback = function (v)
		Settings["Auto Open Heroes"].State = v
		if v then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["__Zones"]["__Summons"][Settings["Auto Open Heroes"]["Selected Area"]].CFrame + Vector3.new(0,0,15)
		end
		while Settings["Auto Open Heroes"].State do
			local args = {[1] = {[1] = {
            [1] = "\7",
            [2] = "Summon",
            [3] = {
                ["Quanty"] = 1,
                ["World"] = Settings["Auto Open Heroes"]["Selected Area"]
            }}}}
			game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
			wait(2)
		end
	end
})
AutofarmSection:NewToggle({
	Title ="Auto unlock next area",
	Default = false,
	Callback = function (d)
		local t = d
		while t do
			local Areas = {"Area2","Area3","Area4","Area5","Area6","Area8","Area9","Area10","Area11","Area12","Area15","Area16","Area17","Area18","Area19","Area20","Area21","Area22","Area23","Area24","Area25","Area26","Area27","Area28","Area29","Area30"}
			for i,v in pairs(Areas) do
				if t then
					Functions["Buy World"](tostring(v))
					wait(0.3)
				end
			end
		end
	end
})
--------------------------
local SelectedIsland = ""
TeleportsSection:NewDropdown({Title = "Teleport to Island",Items=Variables.Islands,Callback=function (v)
    Functions["Teleport to Island"](v)
end})
local players = {}
for i,v in pairs(game.Players:GetPlayers()) do
    table.insert(players,v.Name)
end
game.Players.Changed:connect(function ()
    for i,v in pairs(game.Players:GetPlayers()) do
        table.insert(players,v.Name)
    end    
end)
TeleportsSection:NewDropdown({Title = "Teleport to Player",Items=players,Callback=function (v)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v].Character.HumanoidRootPart.CFrame
end})
---------------------------
MiscSeciton:NewSlider({
	Title = "Change WalkSpeed",
	Min = 0,
	Max = 500,
	Default = 16,
	Callback = function(v)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end
});
MiscSeciton:NewButton({
    Title="Remove Punching animation",
    Callback = function ()
        local d = {game:GetService("ReplicatedStorage").Game["__Animations"].PlayerPunch2, game:GetService("ReplicatedStorage").Game["__Animations"].PlayerPunch1, game:GetService("ReplicatedStorage").Game["__Animations"].HeroesPunch2, game:GetService("ReplicatedStorage").Game["__Animations"].HeroesPunch1}
        for i,v in pairs(d) do
            v:Destroy()
        end
    end
})