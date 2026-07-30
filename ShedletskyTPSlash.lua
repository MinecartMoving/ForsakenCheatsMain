local OriginalCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

local Event = game:GetService("ReplicatedStorage").Modules.Network.Network.RemoteEvent
Event:FireServer(
    "UseActorAbility",
    {
        (function(bytes) --[[Type: buffer]]
            local b = buffer.create(#bytes)
            for i = 1, #bytes do
                buffer.writeu8(b, i - 1, bytes[i])
            end
            return b
        end)({ 3, 5, 0, 0, 0, 83, 108, 97, 115, 104 })
    }
)

for i = 1, 50 do
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Players.Killers.HumanoidRootPart.CFrame
    wait(0.01)
end
