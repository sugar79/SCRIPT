local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Star z hub | ⭐", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "วาป",
	Icon = "rbxassetid://87471987251267",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "กดย้ำๆเพื่อวาป"
})

OrionLib:MakeNotification({
	Name = "สร้างโดย mashi",
	Content = "สคริปต์คนไทยสร้างไง😙",
	Image = "rbxassetid://98614291615614",
	Time = 5
})

Tab:AddButton({
	Name = "วาปไปเกาะเลเวอลิ้ง",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "วาปไปเกาะโจโจ้",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "วาปไปตีมด",
	Callback = function()
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3876.5686, 60.1393394, 3118.35791, 0.899730086, 8.22665491e-09, 0.436446786, -1.07564846e-09, 1, -1.66317218e-08, -0.436446786, 1.44945966e-08, 0.899730086)
  	end    
})

Tab:AddButton({
	Name = "วาปไปเกาะนารูโตะ",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "วาปไปเกาะวันพีช",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "วาปไปเกาะเซนสอแมน",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "วาปไปเกาะบีช",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddButton({
	Name = "วาปไปเกาะแบล็คโคลเวอ",
	Callback = function()
      		print("button pressed")
  	end    
})

