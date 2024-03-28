-- Gui to Lua
-- Version: 3.6

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

-- Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BackgroundTransparency = 0.200
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0161409341, 0, 0.386337131, 0)
TextButton.Size = UDim2.new(0, 157, 0, 41)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Toggle UI"
TextButton.TextColor3 = Color3.fromRGB(240, 240, 240)
TextButton.TextSize = 25.000

UICorner.Parent = TextButton

-- Scripts:

local function DSIKT_fake_script() -- TextButton.LocalScript 
    local script = Instance.new('LocalScript', TextButton)

    local button = -- your button UI element, get it appropriately
    
        -- Function to execute the script
        local function executeScript()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/Axoim-Mobile-Version/main/mobileandpcversion.lua"))()
        end
    
    -- Event handler for button click
    button.MouseButton1Click:Connect(function()
        executeScript()
    end)
    
end
coroutine.wrap(DSIKT_fake_script)()
local function WALV_fake_script() -- TextButton.LocalScript 
    local script = Instance.new('LocalScript', TextButton)

    local TweenService = game:GetService("TweenService")
    local UserInputService = game:GetService("UserInputService")
    
    -- Replace this with your button
    local button = script.Parent
    
    local dragging = false
    local dragStartPos = nil
    local originalPos = button.Position
    
    local function updateButtonPosition(input)
        if dragging then
            local delta = input.Position - dragStartPos
            local newPos = UDim2.new(
                originalPos.X.Scale,
                originalPos.X.Offset + delta.X,
                originalPos.Y.Scale,
                originalPos.Y.Offset + delta.Y
            )
    
            -- Smooth interpolation using TweenService with quadratic easing
            local tweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false)
            local tween = TweenService:Create(button, tweenInfo, { Position = newPos })
            tween:Play()
        end
    end
    
    button.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch or
            input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStartPos = input.Position
            originalPos = button.Position
    
            -- Set capture input so that the button doesn't lose focus
            UserInputService.MouseIconEnabled = false
            input:CaptureMouse()
    
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    dragStartPos = nil
    
                    -- Release capture input
                    UserInputService.MouseIconEnabled = true
                    input:ReleaseMouseCapture()
                end
            end)
        end
    end)
    
    UserInputService.InputChanged:Connect(updateButtonPosition)
    
end
coroutine.wrap(WALV_fake_script)()
