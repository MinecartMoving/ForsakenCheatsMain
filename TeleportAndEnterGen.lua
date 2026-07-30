local children = workspace.Map.Ingame.Map:GetChildren()

local function Enter(gen)
    local args = {
	"Enter"
}
gen:WaitForChild("Remotes"):WaitForChild("RF"):InvokeServer(unpack(args))

end


for i = 1, #children do
    if children[i].Name == "Generator" then
        if children[i]:IsA("Model") then
            if children[i].Progress.Value ~= 100 then
                Enter(children[i])
            end
        end
    end
end
