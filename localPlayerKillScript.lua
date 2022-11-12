--  this script shuold reside in the StarterPlayer/StarterPlayerScripts 
-- it will scan the workplace first and then all parts, and recursively scan the children of parts 
-- to find parts named KillBrick
-- it will add a part.Touched:Connect event to each part and set the players health to 0 when triggered.
local PlayerService = game:GetService("Players")
local player = PlayerService.LocalPlayer

player.CharacterAdded:Connect(function()
	local function scan(p) 
		for _,part in pairs(p:GetChildren()) do 
			if part.Name == "KillBrick" then 
				part.Touched:Connect(function() 
					player.Character.Humanoid.Health = 0
				end)
			end 
			if #part:GetChildren() > 0 then 
                scan(part) 
            end 
		end 
	end 
	scan(game:GetService("Workspace"))
end)