workspace.Map.Ingame.ChildAdded:Connect(function(child)
    if child.Name == "Map" then
        if child:IsA("Model") then
            local MapChildren = child:GetChildren()

            for i = 1, #MapChildren do
                if MapChildren[i]:IsA("Model") then
                    if MapChildren[i].Name = "Generator" then
                        local Highlight = Instance.new("Highlight")
                        Highlight.OutlineColor = Color3.new(1, 0, 0)
                        Highlight.Parent = MapChildren[i]
                        MapChildren[i].Progress.Changed:Connect(function()
                            if MapChildren[i].Progress.Value >= 100 then
                                Highlight.FillColor = Color3.new(0, 1, 0)
                                Highlight.OutlineColor = Color3.new(0, 1, 0)
                            end
                        end
                    end
                end
            end
        end
    end
end
