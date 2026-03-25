spawn(function()
    while true do
        task.wait(2)

        if _G.Settings.ESP then
            for _,v in pairs(workspace:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and not v:FindFirstChild("Highlight") then
                    local esp = Instance.new("Highlight")
                    esp.Parent = v
                    esp.FillColor = Color3.fromRGB(255,0,0)
                    esp.OutlineColor = Color3.new(1,1,1)
                end
            end
        end
    end
end)
