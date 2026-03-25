spawn(function()
    while task.wait() do
        if _G.Settings.AutoFarm then
            local p = game.Players.LocalPlayer
            local c = p.Character
            local root = c and c:FindFirstChild("HumanoidRootPart")

            if root then
                for _,v in pairs(workspace:GetChildren()) do
                    local hum = v:FindFirstChild("Humanoid")
                    local hrp = v:FindFirstChild("HumanoidRootPart")

                    if hum and hrp and hum.Health > 0 then
                        root.CFrame = hrp.CFrame * CFrame.new(0,3,5)

                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0,0,0,true,game,0)
                        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0,0,0,false,game,0)
                    end
                end
            end
        end
    end
end)
