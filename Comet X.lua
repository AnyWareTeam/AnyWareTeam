--// Comet Ui Renew
local me = game.Players.LocalPlayer
local perui = me.PlayerGui
local iy = ""
local mf = Enum.Font.Oswald
local w = Color3.new(1, 1, 1)
local b = Color3.new(0, 0, 0)
local r = Color3.new(1, 0, 0)
local g = Color3.new(0, 1, 0)
local y = Color3.new(1, 1, 0)
--// instance 
local Ui = Instance.new("ScreenGui")
Ui.Parent = perui
local Loader =  Instance.new("Frame")
Loader.Parent = Ui
Loader.Size = UDim2.new(0.332,0,0.491,0)
Loader.Position = UDim2.new(0.334, 0,0.255, 0)
Loader.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
Loader.BackgroundTransparency = 0.3
	--// Loader child
	local Uic = Instance.new("UICorner")
	Uic.CornerRadius = UDim.new(0,8)
	Uic.Parent = Loader
	local loadertxt = Instance.new("TextLabel")
	loadertxt.BackgroundTransparency = 1
	loadertxt.Position = UDim2.new(0.18,0,0.386,0)
	loadertxt.Size = UDim2.new(0.638,0,0.228,0)
	loadertxt.Parent = Loader
	loadertxt.TextScaled = true
	loadertxt.Text = "Loading"
	loadertxt.Font = mf
	loadertxt.TextColor3 = b
--// main instance
local main =  Instance.new("Frame")
main.Parent = Ui
main.Size = UDim2.new(0.581, 0,0.809, 0)
main.Position = UDim2.new(0.209, 0,0.095, 0)
main.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
main.BackgroundTransparency = 0.3
main.Visible = false
	--// main child
	local Uic = Instance.new("UICorner")
	Uic.CornerRadius = UDim.new(0,8)
	Uic.Parent = main
	local tab = Instance.new("Frame")
	tab.Parent = main
	tab.BackgroundTransparency = 0.3
    tab.BackgroundColor3 = Color3.fromRGB(88, 88, 88)
	tab.Position = UDim2.new(0.014, 0,0.019, 0)
	tab.Size = UDim2.new(0.066, 0,0.962, 0)
		--// tab child 
		local Uic = Instance.new("UICorner")
		Uic.CornerRadius = UDim.new(0,8)
		Uic.Parent = tab
		local b1 = Instance.new("Frame")
		b1.Position = UDim2.new(0.101, 0,0.04, 0)
		b1.Size = UDim2.new(0,35,0,35)
		b1.Parent = tab
			--// b1 child 
			local Uic = Instance.new("UICorner")
			Uic.CornerRadius = UDim.new(0,8)
			Uic.Parent = b1
			local b1c = Instance.new("TextButton")
			b1c.Parent = b1
			b1c.Size = UDim2.new(1,0,1,0)
		
loadertxt.Text = "Loading."
wait(1)
loadertxt.Text = "Loading.."
wait(1)
loadertxt.Text = "Loading..."
wait(1)
loadertxt.Text = "Loading"
wait(1)
loadertxt.Text = "Loading."
wait(1)
loadertxt.Text = "Loading.."
wait(1)
main.Visible = true
Loader:Destroy()
while true do
	wait(1)
	print(" NOT RELEASE YET")
end
