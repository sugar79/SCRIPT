local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
   Name = "Fisch Hub",
   LoadingTitle = "Fisch Auto Farm",
   LoadingSubtitle = "By YourName",
   ConfigurationSaving = { Enabled = true, FolderName = "FischHub" }
})

-- Main Tab
local MainTab = Window:CreateTab("Main", 4483362458)

MainTab:CreateToggle({
   Name = "Auto Fishing",
   CurrentValue = false,
   Callback = function(value)
      AutoFishing = value
      while AutoFishing do
         -- ใส่โค้ดตกปลาอัตโนมัติ
         task.wait(1)
      end
   end
})

MainTab:CreateToggle({
   Name = "Auto Sell",
   CurrentValue = false,
   Callback = function(value)
      AutoSell = value
      while AutoSell do
         -- ใส่โค้ดขายของอัตโนมัติ
         task.wait(1)
      end
   end
})

MainTab:CreateToggle({
   Name = "Auto Collect",
   CurrentValue = false,
   Callback = function(value)
      AutoCollect = value
      while AutoCollect do
         -- ใส่โค้ดเก็บของอัตโนมัติ
         task.wait(1)
      end
   end
})

-- Teleport Tab
local TeleportTab = Window:CreateTab("Teleport", 4483362458)

TeleportTab:CreateButton({
   Name = "ไปจุดตกปลาหลัก",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 5, 0) -- เปลี่ยนตำแหน่งที่ต้องการ
   end
})

TeleportTab:CreateButton({
   Name = "ไป NPC ขายของ",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 5, 100) -- เปลี่ยนตำแหน่งที่ต้องการ
   end
})

-- ESP & Utility Tab
local UtilityTab = Window:CreateTab("ESP & Utility", 4483362458)

UtilityTab:CreateToggle({
   Name = "แสดงปลาพิเศษ",
   CurrentValue = false,
   Callback = function(value)
      ESP_Fish = value
      while ESP_Fish do
         -- ใส่โค้ด ESP แสดงปลาพิเศษ
         task.wait(1)
      end
   end
})

UtilityTab:CreateSlider({
   Name = "Speed Boost",
   Min = 16,
   Max = 100,
   CurrentValue = 16,
   Callback = function(value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
   end
})
