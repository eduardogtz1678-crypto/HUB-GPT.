spawn(function()
    while true do
        task.wait()

        if _G.Settings.FruitTP then
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("Tool") and v:FindFirstChild("Handle") then
                    if string.find(v.Name:lower(), "fruit") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                    end
                end
            end
        end
    end
end)
