--[[
© 2022 WeAreDevs | The WeAreDevs Infinite Jump script
Created and distributed by https://wearedevs.net/scripts
March 9, 2022

Step 1: Inject this script into any game using a Lua injector like JJSploit
Step 2: When you get the ready notification, spam the space bar to jump as many times as you want

Controls:
Reinject the script to toggle the infinite jump script on or off.
Excute Lua "G.infinjump = true" to explicity turn the infinite jump script on
Excute Lua "G.infinjump = false" to explicity turn the infinite jump script off
]]

--Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="WeAreDevs.net"; Text="The WeAreDevs Infinite Jump exploit is ready!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
