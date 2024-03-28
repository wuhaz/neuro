-- Infinite Jump Script

local UserInputService = game:GetService("UserInputService")

-- Variable to keep track of whether space bar is being held
local spaceHeld = false

-- Function to handle jumping
local function onJumpRequest(input, gameProcessed)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
        -- Set the Jump value to true when space bar is pressed
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        -- Update spaceHeld variable
        spaceHeld = true
    end
end

-- Function to handle releasing space bar
local function onRelease(input)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
        -- Update spaceHeld variable
        spaceHeld = false
    end
end

-- Connect the functions to the UserInputService
UserInputService.InputBegan:Connect(onJumpRequest)
UserInputService.InputEnded:Connect(onRelease)

-- Continuously jump while space bar is held
game:GetService("RunService").RenderStepped:Connect(function()
    if spaceHeld then
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)
