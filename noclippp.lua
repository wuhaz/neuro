-- Disable Collisions Script
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")

-- Function to disable collisions
local function disableCollisions()
    for _, part in ipairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
        end
    end
end

-- Run the function when character is added
character.ChildAdded:Connect(function(child)
    if child:IsA("Humanoid") then
        humanoid = child
        rootPart = humanoid.RootPart
        disableCollisions()
    end
end)

-- Run the function immediately
if humanoid then
    disableCollisions()
end
