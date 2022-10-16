local MessageService = {}
-- local playerGUi = game:WaitForChild("StarterGui")

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
		messLabel.Text = "A place holder"
	end
	
	messFrame.Visible = true
	if(waitTime) then
		wait(waitTime)
	else
		wait(5) -- default time to wait 10 secs
	end
	messFrame.Visible = false
	messLabel.Text = ""
end
return MessageService
