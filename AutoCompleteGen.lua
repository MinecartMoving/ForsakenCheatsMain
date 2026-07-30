local children = workspace.Map.Ingame.Map:GetChildren()

for i = 1, #children do
    if children[i].Name == "Generator" then
        if children[i]:IsA("Model") then
            local Event = children[i].Remotes.RE
            Event:FireServer()
        end
    end
end
