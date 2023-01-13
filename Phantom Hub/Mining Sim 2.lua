local remotes = {
    ['QuickSell'] = function()
        game:GetService("ReplicatedStorage").Events.QuickSell:FireServer()
    end,
    ['Teleport'] = function(to)
        local args = { [1] = to }
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end,
    ['MineBlock'] = function(Vector)
        local args = { [1] = Vector3.new(Vector) }
        game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(unpack(args))
    end,
    ['SetToolHandle'] = function()
        game:GetService("ReplicatedStorage").Events.SetToolHolding:FireServer()
    end,
    ['SetToolHolding'] = function(tool)
        local args = { [1] = tool }
        game:GetService("ReplicatedStorage").Events.SetToolHolding:FireServer(unpack(args))
    end,
    ['BuyTool'] = function(world, tool)
        local args = {
            [1] = world, -- e.g SurfaceTools for items, SurfaceBackpacks for backpacks
            [2] = tool -- 2 Is stone pickaxe
        }
        game:GetService("ReplicatedStorage").Events.PurchaseShopItem:FireServer(unpack(args))
    end,
    ['RedeemCode'] = function(code)
        local args = { [1] = code }
        game:GetService("ReplicatedStorage").Functions.RedeemCode:InvokeServer(unpack(args))
    end,
    ['CalimBenefits'] = function()
        game:GetService("ReplicatedStorage").Events.ClaimMS1Benefits:FireServer()

    end,
    ['OpenEgg'] = function(egg)
        local args = { [1] = egg }
        game:GetService("ReplicatedStorage").Events.OpenEgg:FireServer(unpack(args))

    end,
    ['TpToSurface'] = function()
        local args = { [1] = "Surface" }
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
}
local vars = {
    ['SellPlaces'] = {
        ['Ov'] = "The Overworld SurfaceSell",
        ['Cg'] = "Cyber Galaxy SurfaceSell",
        ['Ht'] = "Hidden TreasureSell",
        ['Fr'] = "Frozen DepthsSell",
        ['Gy'] = "Gloomy BasinSell",
        ['Un'] = "The UnderworldSell",
        ['Mn'] = "Molten CoreSell",
        ['CC'] = "Crystal CavernSell",
        ['Cs'] = "Cyber SewersSell",
        ['Ca'] = "Cosmic AbyssSell"
    },
    ['Worlds'] = {
        ['Ov'] = "The Overworld",
        ['Cg'] = "Cyber Galaxy",
        ['Ht'] = "Hidden Treasure",
        ['Fr'] = "Frozen Depths",
        ['Gy'] = "Gloomy Basin",
        ['Un'] = "The Underworld",
        ['Mn'] = "Molten Core",
        ['CC'] = "Crystal Cavern",
        ['Cs'] = "Cyber Sewers",
        ['Ca'] = "Cosmic Abyss"
    },
    ['Items'] = {
        ['Blocks'] = {
            ['Co'] = "copper",
            ['Ca'] = "coal",
            ['Fs'] = "fossils",
            ['Da'] = "diamond",
            ['Se'] = "sapphire",
            ['My'] = "mythril",
            ['Fe'] = "flourite",
            ['Sv'] = "silver",
            ['Bn'] = "bones"

        },
    },
    ['Chests'] = {
        ['GB'] = game:GetService("Workspace").Checkpoints["Gloomy Basin"].Chest.Activation.Tag.Position,
        ['HT'] = game:GetService("Workspace").Checkpoints["Hidden Treasure"].Chest.Activation.Tag.Position,
        ['TU'] = game:GetService("Workspace").Checkpoints["The Underworld"].Chest.Activation.Tag.Position,
        ['CC'] = game:GetService("Workspace").Checkpoints["Crystal Cavern"].Chest.Activation.Tag.Position,
        ['CS'] = game:GetService("Workspace").Checkpoints["Cyber Sewers"].Chest.Activation.Tag.Position,
        ['CE'] = game:GetService("Workspace").Checkpoints["Cyber Core"].Chest.Activation.Tag.Position,
        ['CA'] = game:GetService("Workspace").Checkpoints["Cosmic Abyss"].Chest.Activation.Tag.Position
    },
    ['Eggs'] = {
        ['Overworld'] = {
            --// ignore these
            ['BE'] = "Basic Egg",
            ['SE'] = "Spotted Egg",
            ['FE'] = "Forest Egg",
            ['EE'] = "Exotic Egg",
            ['AE'] = "Arcitic Egg",
            ['IE'] = "Ice Egg",
            ['DE'] = "Dark Egg",
            ['VE'] = "Volcanic Egg",
            ['UE'] = "Underworld Egg",
            ['CE'] = "Crystal Egg"
        },
        ['Galaxy'] = {
            ['SE'] = "Space Egg",
            ['SG'] = "Slime Egg",
            ['NE'] = "Nebula Egg",
            ['CE'] = "Cyborg Egg"
        }

    },
    ['EggToOpen'] = nil
}
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local functions = {
    ['TweenTo'] = function(pos, speed)
        tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(speed, Enum.EasingStyle.Linear)
        tweenService:Create(
            game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart,
            tweenInfo,
            { CFrame = CFrame.new(pos) }
        ):Play()
    end
}
local SurfaceTools = {
    ['Stone Pickaxe'] = 2,
    ['Metal Pickaxe'] = 3,
    ['Shovel'] = 4,
    ['Dynamite'] = 5,
    ['Emerald Pickaxe'] = 6,
    ['Golden Shovel'] = 7,
}
local SurfaceBackpacks = {
    ['Backpack'] = 2,
    ['Large Backpack'] = 3,
    ['Military Pack'] = 4,
    ['Small Barrel'] = 5,
    ['Medium Barrel'] = 6,
    ['Large Barrel'] = 7,
}
local FrozenTools = {
    ['Diamond Pickaxe'] = 1,
    ['C4'] = 2,
    ['Hand Drill'] = 3,
    ['Super Drill'] = 4,
    ['Nuke'] = 5,
    ['JackHammer'] = 6,
}
local FrozenBackpacks = {
    ['Small Vault'] = 1,
    ['Medium Vault'] = 2,
    ['Large Vault'] = 3,

}
local MoltenBackpacks = {
    ['Experimental Canister'] = 1,
    ['Enhanced Canister'] = 2,
    ['Ultra Canister'] = 3,
    ['Endless Bucket'] = 4,
    ['Treasure Backpack'] = 5,
}
local MoltenTools = {
    ['Flame Thrower'] = 1,
    ['Molent Saw'] = 2,
    ['Laser Drill'] = 4,
    ['Golden Scissors'] = 5,
    ['Power Staff'] = 6,
    ['Crystal Katana'] = 7,
}
local SpaceTools = {
    ['Cyborg Pickaxe'] = 1
}
local SpaceBackpacks = {
    ['Cyber Backpack'] = 1,
    ['Celestial Backpack'] = 2
}
local RebirthBackpacks = {
    ['Molten Backpack'] = 1,
    ['Golden Bucket'] = 2,
    ['Quantum Storage'] = 3
}
-------------------------------------------------------------------------------------------------------------

local UILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/destylol/UILib/itachi/source.lua"))()
local h = UILib:Init({
    Title = "Phantom Hub"
})
local h1 = h:Tab("Home")
local Home = h1:Section(
    "Credits"
)
local Dc = h1:Section(
    "Discord Server"
)
local Tab3 = h:Tab(
    "Autofarm/s"
)
local S4 = Tab3:Section(
    "Mining"
)
local Tab4 = h:Tab(
    "Teleports"
)
local S6 = Tab4:Section(
    "Worlds"
)
local S7 = Tab4:Section(
    "NPCS"
)
local Tab4 = h:Tab(
    "Buy & Sell"
)
local Sec = Tab4:Section(
    "Buy"
)

local d = {}
local d2 = {}
local d5 = {}
local d6 = {}
local d7 = {}
local d8 = {}
local d9 = {}
local d10 = {}
--Tools
for i, v in pairs(FrozenTools) do
    table.insert(d2, i)
    table.sort(d2)
end
for i, v in pairs(SurfaceTools) do
    table.insert(d, i)
    table.sort(d)
end
for i, v in pairs(MoltenTools) do
    table.insert(d7, i)
    table.sort(d7)
end
--Backpacks
for i, v in pairs(SurfaceBackpacks) do
    table.insert(d5, i)
    table.sort(d5)
end
for i, v in pairs(FrozenBackpacks) do
    table.insert(d6, i)
    table.sort(d6)
end
for i, v in pairs(MoltenBackpacks) do
    table.insert(d8, i)
    table.sort(d8)
end
Sec:NewDropdown({
    Title = "Surface Tools",
    Items = d,
    Callback = function(v)
        if v == "Stone Pickaxe" then
            remotes.BuyTool("SurfaceTools", 2)
        elseif v == "Metal Pickaxe" then
            remotes.BuyTool("SurfaceTools", 3)
        elseif v == "Shovel" then
            remotes.BuyTool("SurfaceTools", 4)
        elseif v == "Dynamite" then
            remotes.BuyTool("SurfaceTools", 5)
        elseif v == "Emerald Pickaxe" then
            remotes.BuyTool("SurfaceTools", 6)
        elseif v == "Golden Shovel" then
            remotes.BuyTool("SurfaceTools", 7)
        end
    end
})
Sec:NewDropdown({
    Title = "FrozenDepth Tools",
    Items = d2,
    Callback = function(v)
        if v == "Diamond Pickaxe" then
            remotes.BuyTool("FrozenTools", 1)
        elseif v == "C4" then
            remotes.BuyTool("FrozenTools", 2)
        elseif v == "Hand Drill" then
            remotes.BuyTool("FrozenTools", 3)
        elseif v == "Super Drill" then
            remotes.BuyTool("FrozenTools", 4)
        elseif v == "Nuke" then
            remotes.BuyTool("FrozenTools", 5)
        elseif v == "JackHammer" then
            remotes.BuyTool("FrozenTools", 6)
        end
    end
})
Sec:NewDropdown({
    Title = "Molten Tools",
    Items = d7,
    Callback = function(v)
        if v == "Flame Thrower" then
            remotes.BuyTool("MoltenTools", 1)
        elseif v == "Molent Saw" then
            remotes.BuyTool("MoltenTools", 2)
        elseif v == "Laser Drill" then
            remotes.BuyTool("MoltenTools", 4)
        elseif v == "Golden Scissors" then
            remotes.BuyTool("MoltenTools", 5)
        elseif v == "Power Staff" then
            remotes.BuyTool("MoltenTools", 6)
        elseif v == "Crystal Katana" then
            remotes.BuyTool("MoltenTools", 7)
        end
    end
})
Sec:NewDropdown({
    Title = "Surface Backpacks",
    Items = d5,
    Callback = function(v)
        if v == "Backpack" then
            remotes.BuyTool("SurfaceBackpacks", 2)
        elseif v == "Large Backpack" then
            remotes.BuyTool("SurfaceBackpacks", 3)
        elseif v == "Military Pack" then
            remotes.BuyTool("SurfaceBackpacks", 4)
        elseif v == "Small Barrel" then
            remotes.BuyTool("SurfaceBackpacks", 5)
        elseif v == "Military Pack" then
            remotes.BuyTool("Medium Barres", 6)
        elseif v == "Large Barrel" then
            remotes.BuyTool("SurfaceBackpacks", 7)

        end
    end
})
Sec:NewDropdown({
    Title = "Frozen Backpacks",
    Items = d6,
    Callback = function(v)
        if v == "Small Vault" then
            remotes.BuyTool("FrozenBackpacks", 1)
        elseif v == "Medium Vault" then
            remotes.BuyTool("FrozenBackpacks", 2)
        elseif v == "Large Vault" then
            remotes.BuyTool("FrozenBackpacks", 3)
        end
    end
})
Sec:NewDropdown({
    Title = "Molten Backpacks",
    Items = d8,
    Callback = function(v)
        if v == "Experimental Canister" then
            remotes.BuyTool("FrozenBackpacks", 1)
        elseif v == "Enhanced Canister" then
            remotes.BuyTool("FrozenBackpacks", 2)
        elseif v == "Ultra Canister" then
            remotes.BuyTool("FrozenBackpacks", 3)
        elseif v == "Endless Bucket" then
            remotes.BuyTool("FrozenBackpacks", 4)
        elseif v == "Treasure Backpack" then
            remotes.BuyTool("FrozenBackpacks", 5)
        end
    end
})
Sec:NewButton({
    Title = "Buy Rebirth",
    Callback = function()
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
    end
})
local Sec = Tab4:Section(
    "Buy All"
)
Sec:NewButton({Title="Buy All Atlantis tools",Callback= function()
   remotes.BuyTool("Shell Saber") 
end})
Sec:NewButton({Title="Buy All Atlantis backpacks",Callback= function()
   remotes.BuyTool("Shell Backpack") 
end})
Sec:NewButton({
    Title = "Buy All Surface Tools",
    Callback = function()
        for i, v in pairs(SurfaceTools) do
            remotes.BuyTool("SurfaceTools", v)
        end
    end
})
Sec:NewButton({
    Title = "Buy All Surface Backpacks",
    Callback = function()
        for i, v in pairs(SurfaceBackpacks) do
            remotes.BuyTool("SurfaceBackpacks", v)
        end
    end
})
Sec:NewButton({
    Title = "Buy All Frozen Tools",
    Callback = function()
        for i, v in pairs(FrozenTools) do
            remotes.BuyTool("FrozenTools", v)
        end
    end
})
Sec:NewButton({
    Title = "Buy All Frozen Backpacks",
    Callback = function()
        for i, v in pairs(FrozenBackpacks) do
            remotes.BuyTool("FrozenBackpacks", v)
        end
    end
})
Sec:NewButton({
    Title = "Buy All Moltentools",
    Callback = function()
        for i, v in pairs(MoltenTools) do
            remotes.BuyTool("MoltenTools", v)
        end
    end
})
Sec:NewButton({
    Title = "Buy All Moltenbackpacks",
    Callback = function()
        for i, v in pairs(MoltenBackpacks) do
            remotes.BuyTool("MoltenBackpacks", v)
        end
    end
})
Sec:NewButton({
    Title = "Buy All space/galaxy tools (only 1)",
    Callback = function()
        for i, v in pairs(SpaceTools) do
            remotes.BuyTool("CyberTools", v)
        end
    end
})
Sec:NewButton({
    Title = "Buy All space/galaxy Backpacks",
    Callback = function()
        for i, v in pairs(SpaceBackpacks) do
            remotes.BuyTool("CyberBackpacks", v)
        end
    end
})
Sec:NewButton({
    Title = "Buy All Rebirth Backpacks",
    Callback = function()
        for i, v in pairs(RebirthBackpacks) do
            remotes.BuyTool("RebirthBackpacks", v)
        end
    end
})
local Sec = Tab4:Section(
    "Sell"
)
Sec:NewButton({
    Title = "Overworld",
    Callback = function()
        remotes.Teleport("The Overworld SurfaceSell")
    end
})
Sec:NewButton({
    Title = "Cyber Galaxy",
    Callback = function()
        remotes.Teleport("Cyber Galaxy SurfaceSell")
    end
})
Sec:NewButton({
    Title = "Hidden Treasure",
    Callback = function()
        remotes.Teleport("Hidden TreasureSell")
    end
})
Sec:NewButton({
    Title = "Frozen",
    Callback = function()
        remotes.Teleport("Frozen DepthsSell")
    end
})
Sec:NewButton({
    Title = "Gloomy Basin",
    Callback = function()
        remotes.Teleport("Gloomy BasinSell")
    end
})
Sec:NewButton({
    Title = "The Underworld",
    Callback = function()
        remotes.Teleport("The UnderworldSell")
    end
})
Sec:NewButton({
    Title = "Molten Core",
    Callback = function()
        remotes.Teleport("Molten CoreSell")
    end
})
Sec:NewButton({
    Title = "Crystal Cavern",
    Callback = function()
        remotes.Teleport("Crystal CavernSell")
    end
})
Sec:NewButton({
    Title = "Cyber Sewers",
    Callback = function()
        remotes.Teleport("Cyber SewersSell")
    end
})
Sec:NewButton({
    Title = "Cosmic Abyss",
    Callback = function()
        remotes.Teleport("Cosmic AbyssSell")
    end
})
Sec:NewButton({
    Title = "Atlantis",
    Callback = function()
        remotes.Teleport("Atlantis SurfaceSelll")
    end
})
Sec:NewButton({
    Title = "Rocky Depth",
    Callback = function()
        remotes.Teleport("Rocky DepthsSell")
    end
})
Sec:NewButton({
    Title = "Sea Shell Shallows",
    Callback = function()
        remotes.Teleport("Sea Shell ShallowsSell")
    end
})
Sec:NewButton({
    Title = "City Of Gold",
    Callback = function()
        remotes.Teleport("City of GoldSell")
    end
})



















local world = "Overworld"
local d11 = false
S6:NewButton({
    Title = "Overworld",
    Callback = function()
        local args = { [1] = "The Overworld SurfaceSell" }
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        wait(0.2)
        remotes.TpToSurface()
    end
})
S6:NewButton({
    Title = "Galaxy",
    Callback = function()
        local args = { [1] = "Cyber Sewers" }
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        wait(0.2)
        remotes.TpToSurface()

    end
})
S6:NewButton({
    Title = "Atlantis",
    Callback = function()
        local args = { [1] = "Atlantis SurfaceSell" }
game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))

    end
})
S7:NewButton({
    Title = "Blacksmith",
    Callback = function()
        local args = { [1] = "The Overworld SurfaceSell" }
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
})
S7:NewButton({
    Title = "Seller",
    Callback = function()
        local args = { [1] = "The Overworld SurfaceSell" }
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        wait(2)
        functions.TweenTo(game:GetService("Workspace").NPCs.Seller.Head.Position, 2)
    end
})
S7:NewButton({
    Title = "Astronaut",
    Callback = function()
        local args = { [1] = "Cyber Sewers" }
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        wait(0.2)
        remotes.TpToSurface()
        wait(2)
        functions.TweenTo(game:GetService("Workspace").NPCs.Astronaut.Head.Position, 2)
    end
})
local oref = "copper"
local thing = false
local wait1 = 60
local AreaToSell = nil
local Toautoenchant = nil
local AutoEnchant = false
local toAutoFacotry = "Coins 1"
local Slot = 1
local AutoFacotry = false
S4:NewDropdown({
    Title = "Autosell Area",
    Items = { "Overworld", "Galaxy","Atlantis" },
    Callback = function(v)
        world = v
    end
})
S4:NewDropdown({
    Title = "Autosell Area (places to sell)",
    Items = { "The Overworld SurfaceSell",
        "Cyber Galaxy SurfaceSell",
        "Frozen DepthsSell",
        "Gloomy BasinSell",
        "The UnderworldSell",
        "Molten CoreSell",
        "Crystal CavernSell",
        "Cyber SewersSell",
        "Cosmic AbyssSell",
        "Atlantis SurfaceSell",
        "Rocky DepthsSell",
        "City of GoldSell",
        "Sea Shell ShallowsSell" },
    Callback = function(v)
        AreaToSell = v
    end
})
S4:NewDropdown({
    Title = "Item to autofacotry",
    Items = { "Coins 1", "Coins 2","Coins 3","Coins 4","CyberTokens 1" ,"CyberTokens 2","CyberTokens 3","CyberTokens 4","SeaShell 1","SeaShell 2","SeaShell 3","SeaShell 4"},
    Callback = function(v)
        toAutoFacotry = v
    end
})
S4:NewDropdown({Title="Slot to put the autofeactoryed item in",Items={"1","2","3"},Callback=function (v)
    Slot = v
end})
S4:NewDropdown({
    Title = "Gem Enchantments",
    Items = {
        "Multi Hatch",
        "Lucky",
        "Hatch Speed",
        "Companionship",
        "Pet Storage",
        "Midas Touch",
        "Cheap Rebirths",
        "Permanent Layers",
        "Walkspeed"
    },
    Callback = function(v)
        Toautoenchant = v
    end
})
S4:NewToggle({
    Title = "Automine",
    Default = false,
    Callback = function(state)
        if state then
            thing = true
            local args = {[1] = "Low Detail",[2] = true}
            game:GetService("ReplicatedStorage").Events.SetOption:FireServer(unpack(args))
            game:GetService("RunService"):Set3dRenderingEnabled(false)
            setfpscap(500)
            local args = {[1] = "Hide Pets",[2] = true}
            game:GetService("ReplicatedStorage").Events.SetOption:FireServer(unpack(args))

        else
            thing = false
            local args = {[1] = "Low Detail",[2] = false}
            game:GetService("ReplicatedStorage").Events.SetOption:FireServer(unpack(args))
            game:GetService("RunService"):Set3dRenderingEnabled(true)
            setfpscap(60)
            local args = {[1] = "Hide Pets",[2] = false}
            game:GetService("ReplicatedStorage").Events.SetOption:FireServer(unpack(args))
        end
        while thing do
            wait(0.2)
            local Chunks = require(game:GetService("ReplicatedStorage").SharedModules.ChunkUtil)
            HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
            local min = HumanoidRootPart.CFrame + Vector3.new(-10, -10, -10)
            local max = HumanoidRootPart.CFrame + Vector3.new(10, 10, 10)
            local region = Region3.new(min.Position, max.Position)
            blocks = {}
            function getParts()
                table.clear(blocks)
                for i, v in pairs(game.Workspace.Chunks:GetDescendants()) do
                    if v:IsA("Part") then
                        table.insert(blocks, v)
                    end
                end
            end

            getParts()
            function breakblock(pos)
                game:GetService("ReplicatedStorage").Events.MineBlock:FireServer(pos)
            end

            for _, Part in pairs(game.Workspace:FindPartsInRegion3WithWhiteList(region, blocks, 100)) do
                breakblock(Chunks.worldToCell(Part.Position))
            end
        end
    end
})
local ThrowRodTo = nil
local Mouse = game.Players.LocalPlayer:GetMouse()
local AutoROd = nil
local AutoclaimAchievements = false
S4:NewToggle({
    Title = "Autofactory",
    Default = false,
    Callback = function(s)
        if s == true then
            AutoFacotry = true
        else
            AutoFacotry = false
        end
        while AutoFacotry do
            wait()
            local args = {[1] = tostring(toAutoFacotry), [2] = tonumber(Slot)}
            game:GetService("ReplicatedStorage").Events.StartFactoryCraft:FireServer(unpack(args))
        end
    end
})
S4:NewToggle({
    Title = "Autoclaim Achievements",
    Default = false,
    Callback = function(s)
        if s == true then
            AutoclaimAchievements = true
            
        else
            AutoclaimAchievements = false
        end
        while AutoclaimAchievements do
            wait(1)
            for _,v in pairs(    game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Achievements.Frame.Container.Content.Frame:GetChildren()) do
                if v:IsA("Frame") then
                local args = { [1] = v.Name }
                game:GetService("ReplicatedStorage").Events.ClaimAchievementReward:FireServer(unpack(args))
            end
        end
        end
    end
})
local d = nil
local keys = {
    ["A"] = 0x41,
    ["B"] = 0x42,
    ["C"] = 0x43,
    ["D"] = 0x44,
    ["E"] = 0x45,
    ["F"] = 0x46,
    ["G"] = 0x47,
    ["H"] = 0x48,
    ["I"] = 0x49,
    ["J"] = 0x4A,
    ["K"] = 0x4A,
    ["L"] = 0x4A,
    ["M"] = 0x4A,
    ["N"] = 0x4A,
    ["O"] = 0x4F,
    ["P"] = 0x50,
    ["Q"] = 0x51,
    ["R"] = 0x52,
    ["S"] = 0x53,
    ["T"] = 0x54,
    ["U"] = 0x55,
    ["V"] = 0x56,
    ["W"] = 0x57,
    ["X"] = 0x58,
    ["Y"] = 0x59,
    ["Z"] = 0x5A,
    ["Left mouse NewButton"] = 0x01,
    ["Right mouse NewButton"] = 0x02,
    ["F11"] = 0x7A
}
local d241124412 = nil
local savedpos = nil
local AutoRebirth = false
S4:NewToggle({
    Title ="Autorebirth",
    Default = false,
    Callback = function(ssate)
        if ssate then
            AutoRebirth =true
        else

            AutoRebirth = false
        end
        while AutoRebirth do
            wait()
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
        end
    end
})
S4:NewToggle({
    Title = "Looppress W",
    Default = false,
    Callback = function(state)

        if state then
            keypress(0x57)
        else
            keyrelease(0x57)
        end

    end
})
local autosavepos = false

S4:NewToggle({
    Title = "Auto gem enchant",
    Default = false,
    Callback = function (v)
        AutoEnchant = v
        while AutoEnchant do
            wait()
            local args = {[1] = Toautoenchant}
            game:GetService("ReplicatedStorage").Events.BuyGemEnchantment:FireServer(unpack(args))
        end
    end
})
local StopAutosave = false

S4:NewToggle({
    Title = "Autosave position",
    Default = false,
    Callback = function (v)
        autosavepos = v
        while autosavepos do
            wait()
            if StopAutosave == true then
                return
            elseif StopAutosave == false then
                wait()
                savedpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            end
        end
    end
})
local Autosell = false
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

local VirtualInputManager = game:GetService("VirtualInputManager")
local X, Y = 0, 0
X, Y = Mouse.X, Mouse.Y + 10
S4:NewToggle({
    Title = "Autosell",
    Default = false, 
    Callback = function(state)
        Autosell = state
        while Autosell do
            wait()
            mouse1click()
        end
        
            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ChildAdded:connect(function(v)
                if v.Name == "Prompt" then
                StopAutosave = true
                if Autosell then
                    if world == "Overworld" then
                    wait()
                    remotes.Teleport(AreaToSell)
                    wait(1)
                    functions.TweenTo(savedpos, 10)
                    keypress(0x57)
                    wait(10)
                    keyrelease(0x57)
                elseif world == "Galaxy" then
                    wait()
                    remotes.Teleport(AreaToSell)
                    wait(1)
                    functions.TweenTo(savedpos, 10)
                    keypress(0x57)
                    wait(10)
                    keyrelease(0x57)
                elseif world == "Atlantis" then
                    wait()
                    remotes.Teleport(AreaToSell)
                    wait(1)
                    functions.TweenTo(savedpos, 10)
                    keypress(0x57)
                    wait(10)
                    keyrelease(0x57)
                end
                end
    
                wait(1)
                game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("Prompt"):Destroy()
                end
            end)
            game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.ChildRemoved:connect(function()
                StopAutosave = false
            end)
    end
})
local S3 = Tab3:Section(
    "Eggs"
)
S3:NewDropdown({
    Title = "Select Overworld Egg",
    Items = {
        "Basic Egg",
        "Spotted Egg",
        "Forest Egg",
        "Exotic Egg",
        "Arcitic Egg",
        "Ice Egg",
        "Dark Egg",
        "Volcanic Egg",
        "Crystal Egg",
        "Dark Egg",
        "Underworld Egg", },
    Callback = function(v)
        vars.EggToOpen = v
    end
})
local Egg = nil
local SummerEgg = nil

S3:NewDropdown({
    Title = "Select Galaxy Egg",
    Items = {
        "Space Egg",
        "Slime Egg",
        "Nebula Egg",
        "Cyborg Egg" },
    Callback = function(v)
        Egg = v
    end
})
S3:NewDropdown({
    Title = "Select Atlantis Egg",
    Items = {
        "Royalty Egg",
        "Snorkel Egg",
        "Coral Egg",
        "Atlantis Egg",
        "Dark Coral Egg"},
    Callback = function(v)
        SummerEgg = v
    end
})
local Hatch = false
local Hatch2 = false
local Hatch3 = false
S3:NewToggle({
    Title = "Loop Open Galaxy Egg",
    Default = false,
    Callback = function(value)
        Hatch2 = value
        
        if Hatch2 then
            local args = { [1] = "Cyber Sewers" }
            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
            remotes.TpToSurface()
            functions.TweenTo(game:GetService("Workspace").Eggs[Egg].EggName.Position + Vector3.new(0,10,0), 15)
            keypress(0x57)
            wait(15)
            keyrelease(0x57)

            while Hatch2 do
            wait()
                wait(1)
                remotes.OpenEgg(Egg)
            end
        end

    end
})
S3:NewToggle({
    Title = "Loop Open Overworld Egg",
    Default = false,
    Callback = function(value)
        Hatch = value
        if Hatch then
            local args = { [1] = "The Overworld SurfaceSell" }
            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
            remotes.TpToSurface()
            wait(1)
            functions.TweenTo(game:GetService("Workspace").Eggs[vars.EggToOpen].EggName.Position + Vector3.new(0,10,0), 15)
            keypress(0x57)
            wait(15)
            keyrelease(0x57)
            while Hatch do
                wait()
                remotes.OpenEgg(vars.EggToOpen)
            end

        end
    end
})
local hatch3 = false
S3:NewToggle({
    Title = "Loop Open Atlantis Egg",
    Default = false,
    Callback = function(value)
        hatch3 = value
        if hatch3 then
            local args = { [1] = "Atlantis SurfaceSell" }
            game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
            remotes.TpToSurface()
            wait(1)
            functions.TweenTo(game:GetService("Workspace").Eggs[SummerEgg].EggName.Position + Vector3.new(0,10,0), 15)
            keypress(0x57)
            wait(15)
            keyrelease(0x57)
            while hatch3 do
                wait()
                remotes.OpenEgg(SummerEgg)
            end

        end
    end
})
local S5 = Tab3:Section(
    "Chests"
)
local tp_to = nil
local tp_to2 = nil
local tp_to3 =nil
S5:NewDropdown({
    Title = "Overworld Chests",
    Items = {
        "Hidden Treasure",
        "Gloomy Basin",
        "The Underworld",
        "Crystal Cavern"
    },
    Callback = function(v)
        tp_to = v
    end
})
S5:NewDropdown({
    Title = "Galaxy Chests",
    Items = {
        "Cyber Sewers",
    },
    Callback = function(v)
        tp_to2 = v
    end
})
S5:NewDropdown({
    Title = "Atlantis Chests",
    Items = {
        "Rocky Depths",
        "City Of Gold"
    },
    Callback = function(v)
        tp_to3 = v
    end
})
S5:NewButton({
    Title = "Tp to Overworld chest",
    Callback = function()
        local args = { [1] = "The Overworld SurfaceSell" }
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
        wait(1)
        keypress(0x57)
        functions.TweenTo(game:GetService("Workspace").Checkpoints[tp_to].Chest.Activation.Tag.Position, 20)
        wait(20)
        keyrelease(0x57)
    end
})
S5:NewButton({
    Title = "Tp to Galaxy Chest",
    Callback = function()
        local args = { [1] = tp_to2 }
        game:GetService("ReplicatedStorage").Events.Teleport:FireServer(unpack(args))
    end
})
S5:NewButton({
    Title = "Tp to Atlantis Chest",
    Callback = function()
        if tp_to3 == "Rocky Depths" then
            remotes.Teleport("Rocky DepthsSell")
            wait(1)
            keypress(0x57)
            functions.TweenTo(game:GetService("Workspace").Checkpoints["Rocky Depths"].Chest.Main.Gold.Position, 5)
            wait(5)
            keyrelease(0x57)
        elseif tp_to3 == "City Of Gold" then
            remotes.Teleport("City of GoldSell")
            wait(1)
            keypress(0x57)
            functions.TweenTo(game:GetService("Workspace").Checkpoints["City of Gold"].Chest.Main.Gold.Position, 5)
            wait(5)
            keyrelease(0x57)
        end
    end
})
--// home
Home:NewLabel({
    Title = "Credit: SoloDev#7416 & VertigoCool#6520"
})

Home:NewKeybind({
    Title = "Toggle UI",
    Key = Enum.KeyCode.RightControl,
    Callback = function()
        UILib.ToggleUI()
    end,
})