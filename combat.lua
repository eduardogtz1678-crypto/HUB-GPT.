spawn(function()
    while true do
        task.wait()

        if _G.Settings.AutoFarm then
            local player = game.Players.LocalPlayer
            local char = player.Character

            if not char or not char:FindFirstChild("HumanoidRootPart") then continue end
            local root = char.HumanoidRootPart

            -- pega nome da missão
            local questName = ""
            pcall(function()
                questName = player.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
            end)

            for _,v in pairs(workspace:GetDescendants()) do
                if v:FindFirstChild("Humanoid") 
                and v:FindFirstChild("HumanoidRootPart") 
                and v.Humanoid.Health > 0 then

                    -- verifica se é o inimigo da missão
                    if questName ~= "" and string.find(v.Name, questName) then
                        root.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,3,5)
                        break
                    end
                end
            end
        end
    end
end)
