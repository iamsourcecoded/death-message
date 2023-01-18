_G.message = "this does not make ur hot dog any larger" -- message here
local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.Died:Connect(function()
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.message, "All")
    end)
end


game.Players.LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
