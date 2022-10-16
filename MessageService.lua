-- This script requires a ScreenGUI object in the StarterGUIs 
-- this screen gui should be called MessageModal and contain a Frame which contains a TextLabel
-- the Visibility of the Frame should be set to false
-- the Frame has a position of x={0.299,0},y={0.069,0} and a size of x={0,418} y={0,137} and a background transparency of 0.7
-- the TextLabel has a position of x={0.012,0},y={0,0} and a size of x={0,408} y={0,135} and a background transparency of 1

local MessageService = {}
function MessageService.displayMessage(messageText,playerGui,labelOpts,waitTime)
	local messageSGUi = playerGui:WaitForChild("MessageModal")
	local messFrame = messageSGUi:WaitForChild("Frame")
	local messLabel = messFrame:WaitForChild("TextLabel")
	
	if labelOpts then
		for k,v in labelOpts do
			if k then
				messLabel[k] = v
			end
		end
	end
	if messageText then
		messLabel.Text = messageText
	else
		messLabel.Text = "No message Text" -- no messageText
	end
	
	messFrame.Visible = true
	if(waitTime) then
		wait(waitTime)
	else
		wait(5) -- default time to wait 5 secs
	end
	-- hide and remove any text
	messFrame.Visible = false 
	messLabel.Text = ""
end
return MessageService
