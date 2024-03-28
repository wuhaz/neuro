-- Infinite Jump Script

local UserInputService = game:GetService("UserInputService")

-- Function to handle jumping
local function onJumpRequest(input, gameProcessed)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
        -- Set the Jump value to true when space bar is pressed
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end

-- Connect the function to the UserInputService
UserInputService.InputBegan:Connect(onJumpRequest)
