local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Star z hub | ⭐", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "วาป",
	Icon = "rbxassetid://4483345998",
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

local Tab = Window:MakeTab({
	Name = "การต่อสู้",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- ตัวแปร
local clicking = false
local clickSpeed = 0.05 -- ความเร็วคลิก (วินาทีต่อคลิก)

-- ฟังก์ชันคลิก
function AutoClick()
    while clicking do
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
        wait(clickSpeed)
        game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
    end
end

-- ปุ่มเปิด/ปิด Auto Click
Tab:AddToggle({
    Name = "ออโต้คลิก",
    Default = false,
    Callback = function(value)
        clicking = value
        if clicking then
            AutoClick()
        end
    end
})

-- Dropdown เลือกความเร็วคลิก
Tab:AddDropdown({
    Name = "ความเร็วการคลิก",
    Default = "50ms",
    Options = {"10ms", "25ms", "50ms", "100ms", "250ms", "500ms"},
    Callback = function(value)
        local speedMap = {
            ["10ms"] = 0.01,
            ["25ms"] = 0.025,
            ["50ms"] = 0.05,
            ["100ms"] = 0.1,
            ["250ms"] = 0.25,
            ["500ms"] = 0.5
        }
        clickSpeed = speedMap[value] or 0.05 -- ตั้งค่าตามที่เลือก
    end
})
