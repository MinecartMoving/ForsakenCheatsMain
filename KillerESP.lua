workspace.Players.Killers.ChildAdded:Connect(function(Child)

local Highlight = Instance.new("Highlight")
Highlight.Name = "KillerHighlight"
Highlight.OutlineColor = Color3.new(1, 0, 0)
Highlight.Parent = Child

local BillboardGUI = Instance.new("BillboardGui")
BillboardGUI.Size = Udim2.new(1, 0, 3, 0)
BillboardGUI.Parent = Child:FindFirstChild("HumanoidRootPart")
local TextLabel = Instance.new("TextLabel")
TextLabel.Text = Child.Name
TextLabel.Size = Udim2.new(1, 0, 1, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Parent = BillboardGUI

end)
