task.spawn(function()
    while task.wait() do
        for _,v in pairs(game.Players:GetPlayers()) do
            if v.Character:FindFirstChild("AdminBan") or v.Backpack:FindFirstChild("AdminBan") then
                game.Players.LocalPlayer:Kick("[Admin Detect]  An Admin was detected that goes by the name "..v.Name..". Shutting  down in 3 seconds")
                task.wait(3)
                game:Shutdown()
            end
        end
    end
end)
