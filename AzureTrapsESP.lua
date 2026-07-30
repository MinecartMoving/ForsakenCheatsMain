workspace.Map.Ingame.ChildAdded:Connect(function(Child)

  if Child.Name == "GroundBulbModel" then
    local Highlight = Instance.new("Highlight")
    Highlight.FillColor = Color3.fromRGB(58, 32, 80)
    Highlight.OutlineColor = Color3.fromRGB(187, 98, 255)
    Highlight.Parent = Child
  end

end)
