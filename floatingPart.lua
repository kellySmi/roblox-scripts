local part = script.Parent
local attach = Instance.new("Attachment")
attach.Parent = part
local mass = part:GetMass()
local vf = Instance.new("VectorForce")
vf.Force = Vector3.new(0,mass * workspace.Gravity,0)
vf.Attachment0 = attach
vf.Parent = part