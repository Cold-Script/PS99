local openshit = Instance.new("ScreenGui")
local mainopen = Instance.new("TextButton")
local mainopens = Instance.new("UICorner")
local posto = Instance.new("UIStroke")

openshit.Name = "openshit"
openshit.DisplayOrder = 999999999
openshit.IgnoreGuiInset = false
openshit.ResetOnSpawn = false
openshit.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
openshit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainopen.Name = "mainopen"
mainopen.Parent = openshit
mainopen.BackgroundColor3 = Color3.new(0,0,0)
mainopen.Position = UDim2.new(0.101969875, 0, 0.110441767, 0)
mainopen.Size = UDim2.new(0, 64, 0, 42)
mainopen.TextColor3 = Color3.new(1,1,1)
mainopen.Text = "Check Claim"
mainopen.Font = 'GothamBold'
mainopen.Visible = true
mainopen.TextSize = '14'
mainopen.MouseButton1Click:Connect(function()
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "ESP_PetSimulatorESP" then
v:Destroy()
end
end
end)
