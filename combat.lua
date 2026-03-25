spawn(function()
    while true do
        task.wait()

        if _G.Settings.AutoFarm then
            local player = game.Players.LocalPlayer
            local char = player.Character

            if char and char:FindFirstChild("HumanoidRootPart") then
                local root = char.HumanoidRootPart

                for _,v in pairs(workspace:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") 
                    and v:FindFirstChild("HumanoidRootPart") 
                    and v.Humanoid.Health > 0 
                    and v ~= char then

                        root.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,3,5)
                        break
                    end
                end
            end
        end
    end
end)
