local function Billboard(child, name, color)
        local bill = Instance.new("BillboardGui", child)
        bill.AlwaysOnTop = true
        bill.Size = UDim2.new(0,400,0,100)
        bill.Adornee = child
        bill.MaxDistance = 1000
        bill.Name = "ESP_PetSimulatorESP"
        local txt = Instance.new("TextLabel",bill)
        txt.AnchorPoint = Vector2.new(0.5,0.5)
        txt.BackgroundTransparency = 1
        txt.BackgroundColor3 = color
        txt.TextColor3 = Color3.new(1,1,1)
        txt.Font = "GothamBold"
        txt.TextSize = "5"
        txt.Size = UDim2.new(1,0,0,-50)
        txt.Position = UDim2.new(0.5,0,0.7,-55)
task.spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
txt.Text = string.format("%s (%sm)", name or child.Name, math.floor((workspace.CurrentCamera.CFrame.Position - child:GetPivot().Position).Magnitude));
end);
end);
end
local function ESP()
for _,v in pairs(workspace.__THINGS:GetDescendants()) do
if v.Name == "ShinyRelic" and v.Parent.Name == "ShinyRelics" then
Billboard(v, v.Name, Color3.new(1,1,1))
end
end
end
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
mainopen.Size = UDim2.new(0, 104, 0, 50)
mainopen.Text = "Check Claim"
mainopen.Font = 'GothamBold'
mainopen.Visible = true
mainopen.TextSize = '14'
game:GetService("RunService").RenderStepped:Connect(function()
mainopen.TextColor3 = Color3.fromHSV(tick() % 5/5, 1, 1)
end)
mainopen.MouseButton1Click:Connect(function()
for _,v in pairs(workspace:GetDescendants()) do
if v.Name == "ESP_PetSimulatorESP" then
v:Destroy()
end
end
ESP()
end)
mainopens.CornerRadius = UDim.new(5,0)
mainopens.Parent = mainopen
