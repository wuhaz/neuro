local Players, RService = game:GetService("Players"), game:GetService("RunService");
local LocalP, Mouse = Players.LocalPlayer, Players.LocalPlayer:GetMouse();
local Rm, Index, NIndex, NCall, Caller = getrawmetatable(game), getrawmetatable(game).__index, getrawmetatable(game).__newindex, getrawmetatable(game).__namecall, checkcaller or is_protosmasher_caller
local NoClip, NoClipKey = false, "(Value)" -- change 'x' to whatever you want
setreadonly(Rm, false)

loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/Universal-Scripts/main/Notification%20Function", true))()
Notify("zxciaz", "Press F9 for Directions", "", 4);
warn("NoClip + Bypass made by zxciaz");
warn("Press "..string.upper(NoClipKey).." to turn off and on NoClip");

Rm.__newindex = newcclosure(function(self, Meme, Value)
    if Caller() then return NIndex(self, Meme, Value) end 
    if tostring(self) == "HumanoidRootPart" or tostring(self) == "Torso" then 
        if Meme == "CFrame" and self:IsDescendantOf(LocalP.Character) then 
            return true -- Credits to ze_lI for this
        end
    end
    return NIndex(self, Meme, Value)
end)
setreadonly(Rm, true)

RService.Stepped:Connect(function()
    if NoClip == true and LocalP and LocalP.Character and LocalP.Character:FindFirstChild("Humanoid") then 
        pcall(function() -- fuck errors
            LocalP.Character.Head.CanCollide = false 
            LocalP.Character.Torso.CanCollide = false
        end)
    end
end)

Mouse.KeyDown:Connect(function(Key)
    if Key == NoClipKey then 
        NoClip = not NoClip
        Notify("zxciaz", "NoClip: "..tostring(NoClip), "", 3)
    end
end)
