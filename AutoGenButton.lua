
local G2L = {};

-- StarterGui.AutoGen
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[AutoGen]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.AutoGen.mainbutton
G2L["2"] = Instance.new("TextButton", G2L["1"]);
G2L["2"]["TextWrapped"] = true;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["TextSize"] = 14;
G2L["2"]["TextScaled"] = true;
G2L["2"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 255, 0);
G2L["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2"]["Size"] = UDim2.new(0.09135, 0, 0.10661, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Text"] = [[Auto Complete]];
G2L["2"]["Name"] = [[mainbutton]];
G2L["2"]["Position"] = UDim2.new(0.45432, 0, 0.77079, 0);


-- StarterGui.AutoGen.mainbutton.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 32);


-- StarterGui.AutoGen.mainbutton.script
G2L["4"] = Instance.new("LocalScript", G2L["2"]);
G2L["4"]["Name"] = [[script]];


-- StarterGui.AutoGen.mainbutton.script
local function C_4()
local script = G2L["4"];
	local Cooldown = false
	local CooldownTime = 0
	
	script.Parent.MouseButton1Click:Connect(function()
		if Cooldown == false then
			Cooldown = true
			CooldownTime = 1
			local children = workspace.Map.Ingame.Map:GetChildren()
	
			for i = 1, #children do
				if children[i].Name == "Generator" then
					if children[i]:IsA("Model") then
						local Event = children[i].Remotes.RE
						Event:FireServer()
					end
				end
			end
			
			for i = 1, 10 do
				wait(0.1)
				CooldownTime -= 0.1
				script.Parent.Text = CooldownTime
			end
			script.Parent.Text = "Auto Complete"
			Cooldown = false
		end
	end)
end;
task.spawn(C_4);

return G2L["1"], require;
