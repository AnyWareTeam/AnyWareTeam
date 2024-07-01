-- local --
local me = game.Players.LocalPlayer
local plrui = me.PlayerGui
local black = Color3.new(0,0,0)
local red = Color3.new(184,0,0)
local white = Color3.new(1,1,1)
local heading = "Comet Beta"
-- instance --
local Ui = Instance.new("ScreenGui")
Ui.Name = "Ui"
Ui.Parent = plrui
local main = Instance.new("Frame")
main.Name = "main"
main.Size = UDim2.new(0.504, 0,0.728, 0)
main.Position = UDim2.new(0.247, 0,0.136, 0)
main.BackgroundColor3 = red
main.Parent = Ui
local UiAsp = Instance.new("UIAspectRatioConstraint")
UiAsp.Parent = main
UiAsp.AspectRatio = 1.83
local uicorner =  Instance.new("UICorner")
uicorner.Parent = main
uicorner.CornerRadius = UDim.new(0,8)
local topbar = Instance.new("Frame")
topbar.Size = UDim2.new(1,0,0.107,0)
topbar.Parent = main
topbar.BackgroundColor3 = black
local uicorner =  Instance.new("UICorner")
uicorner.Parent = topbar
uicorner.CornerRadius = UDim.new(0,8)
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0.058,0,1.0)
sidebar.Parent = main
sidebar.BackgroundColor3 = black
local uicorner =  Instance.new("UICorner")
uicorner.Parent = sidebar
uicorner.CornerRadius = UDim.new(0,8)
local sidebar2 = Instance.new("Frame")
sidebar2.Size = UDim2.new(0.058,0,1.0)
sidebar2.Position = UDim2.new(0.12,0,0)
sidebar2.Parent = main
sidebar2.BackgroundColor3 = black
local uicorner =  Instance.new("UICorner")
uicorner.Parent = sidebar2
uicorner.CornerRadius = UDim.new(0,8)
local cd = Instance.new("TextLabel")
cd.Parent = main
cd.BackgroundTransparency = 1
cd.Position = UDim2.new(0.003,0,0,0)
cd.Size = UDim2.new(0.289,0,0.107,0)
cd.Font = Enum.Font.Oswald
cd.Text = heading
cd.TextScaled = true
cd.TextColor3 = white
local logo = Instance.new("ImageLabel")
logo.Parent = main
logo.BackgroundTransparency = 1
logo.Size = UDim2.new(0.058,0,0.107,0)
logo.Position = UDim2.new(0.942,0,0,0)
logo.Image = "rbxassetid://18278373221"
-- drag ui script --
local UIS = game:GetService('UserInputService')
local frame = main
local dragToggle = nil
local dragSpeed = 0.01
local dragStart = nil
local startPos = nil

local function updateInput(input)
	local delta = input.Position - dragStart
	local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

frame.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
			end
		end)
	end
end)

UIS.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
		end
	end
end)
-- function --
print("The Beta Has No Function")
