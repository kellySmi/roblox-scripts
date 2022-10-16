local thisPad = script.Parent
local otherPad = thisPad.Parent.Tpad2 -- a part named Tpad2 that we will travel to

thisPad.Touched:Connect(function(part)
	local player = part.Parent
	local humanoid = player:WaitForChild("Humanoid",10)
	-- humanoid:MoveTo(otherPad.Position) -- makes player walk to other pad
	
	-- player:MoveTo(otherPad.Position) -- moves player to other pad (teleports), see documentation for differerence
	-- player:SetPrimaryPartCFrame(CFrame.new(otherPad.Position)) -- also moves player to other pad (teleports)
	-- humanoid.RootPart.CFrame = CFrame.new(otherPad.Position) -- and also moves player to other pad (teleports)
	
end)