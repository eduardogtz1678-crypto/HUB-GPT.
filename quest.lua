spawn(function()
    while true do
        task.wait(2)

        if _G.Settings.AutoQuest then
            for _,v in pairs(workspace:GetDescendants()) do
                if v:IsA("ProximityPrompt") then
                    if v.ActionText and string.find(v.ActionText, "Quest") then
                        fireproximityprompt(v)
                    end
                end
            end
        end
    end
end)
