local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/UI-Library/main/Source/MyUILib(Unamed).lua"))()
local Window = Library:Create("Client | Blox Fruits") -- any name
local Tab1 = Window:Tab("Scripts","rbxassetid://10888331510")
Tab1:InfoLabel("All Scripts Are Undetected.")
Tab1:Button("REDZ HUB", function() -- button
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
end)
Tab1:Button("LUNAR X", function() -- button
	loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenLam2504/anhyeuem/main/bloxshitfarm.lua"))()
end)
Tab1:Button("HOHO HUB (KEY)", function() -- button
	_G.HohoVersion = "v3"
loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))() 
end)
Tab1:Button("MTRIET HUB", function() -- button
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Coemssuw8a/Dragonic-HUB/main/Protected_4928151334798917.lua.txt",true))()
end)
Tab1:Button("RELZ HUB", function() -- button
	loadstring(game:HttpGet("https://raw.githubusercontent.com/farghii/relzhub/main/execute.hack", true))()
end)
Tab1:Button("BLACKTRAP (KEY)", function() -- button
	loadstring(game:HttpGetAsync("https://lua-library.btteam.net/script-auth.txt"))()
end)
Tab1:Button("XERO HUB", function() -- button
	getgenv().Team = "Pirates" -- Pirates/Marines loadstring(game:HttpGet("https://raw.githubusercontent.com/verudous/Xero-Hub/main/main.lua"))()
end)
Tab1:Button("Hiru Hub", function() -- butto
loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/Update_new/main/HiruHub.lua"))()
end)

local Tab2 = Window:Tab("Settings","rbxassetid://12296135476")
Tab2:Button("Rejoin", function() -- button
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
end)
Tab2:Button("Discord", function() -- button
	setclipboard("https://discord.gg/ZHTqjN3mS6")
end)
Tab2:Button("Destroy UI", function()
	Library:DestroyUI()
end)
