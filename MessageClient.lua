local proximityprompt = script.Parent:WaitForChild("ProximityPrompt",10) -- uses a proximity prompt
local SSService = game:WaitForChild("ServerScriptService",10)
local messSvc = require(SSService:WaitForChild("MessageService",10)) -- calls the message Service 
proximityprompt.Triggered:Connect(function(player)
	-- show screen gui 
    -- posible options to use for labelOpts
	-- size, ZIndex, TextSize, TextWrapped, FontFace
	local labelOpts = {TextSize="20",  FontFace=Font.fromName("LuckiestGuy")} -- Setts text size and font to use.
	local playerGui = player:WaitForChild('PlayerGui',10)
	messSvc.displayMessage("The Text To Display in the dialog modal",playerGui,labelOpts,2)
end)
