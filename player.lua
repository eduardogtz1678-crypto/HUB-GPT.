spawn(function()
    while task.wait() do
        if _G.Settings.AutoDodge then
            local char = game.Players.LocalPlayer.Character
            local hum = char and char:FindFirstChild("Humanoid")
            local root = char and char:FindFirstChild("HumanoidRootPart")

            if hum and root and hum.Health/hum.MaxHealth < 0.3 then
                root.CFrame = root.CFrame * CFrame.new(0,0,20)
            end
        end
    end
end)
