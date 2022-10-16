-- this script lists the ways of getting the player object reference
-- if you are getting the player from a part that touches the parent part do this

local myPart = script.parent
myPart.Touched:Connect(function(playerPart)
    local player = playerPart.Parent
    local humanoid = player:WaitForChild("Humanoid",10) -- this will get the humanoid of the player
    
end)

-- if you are getting the player from the proximity prompt
