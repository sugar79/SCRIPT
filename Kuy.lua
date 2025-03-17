local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
   Name = "oplus Hub",
   LoadingTitle = "Dit It map",
   LoadingSubtitle = "By pumpkin",
   ConfigurationSaving = { Enabled = true, FolderName = "DitItHub" }
})

-- Main Tab
local MainTab = Window:CreateTab("Main", 4483362458)

MainTab:CreateToggle({
   Name = "✅ Auto Farm (ฟาร์มอัตโนมัติ)",
   CurrentValue = false,
   Callback = function(value)
      AutoFarm = value
      while AutoFarm do
         -- ใส่โค้ด Auto Farm
         task.wait(0.5)
      end
   end
})

MainTab:CreateToggle({
   Name = "📦 Auto Collect (เก็บของอัตโนมัติ)",
   CurrentValue = false,
   Callback = function(value)
      AutoCollect = value
      while AutoCollect do
         -- ใส่โค้ดเก็บของอัตโนมัติ
         task.wait(1)
      end
   end
})

MainTab:CreateToggle({
   Name = "💰 Auto Sell (ขายของอัตโนมัติ)",
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
   Name = "🔼 Auto Upgrade (อัปเกรดอัตโนมัติ)",
   CurrentValue = false,
   Callback = function(value)
      AutoUpgrade = value
      while AutoUpgrade do
         -- ใส่โค้ดอัปเกรดอัตโนมัติ
         task.wait(1)
      end
   end
})

-- Teleport Tab
local TeleportTab = Window:CreateTab("Teleport", 4483362458)

TeleportTab:CreateButton({
   Name = "🎯 ไปจุดฟาร์มหลัก (Teleport)",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 5, 0) -- เปลี่ยนตำแหน่งที่ต้องการ
   end
})

TeleportTab:CreateButton({
   Name = "🛒 ไปจุดขายของ (Teleport)",
   Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 5, 100) -- เปลี่ยนตำแหน่งที่ต้องการ
   end
})

-- ESP & Utility Tab
local UtilityTab = Window:CreateTab("ESP & Utility", 4483362458)

UtilityTab:CreateToggle({
   Name = "🔍 แสดงไอเทมพิเศษ (ESP)",
   CurrentValue = false,
   Callback = function(value)
      ESP_Items = value
      while ESP_Items do
         -- ใส่โค้ด ESP แสดงไอเทม
         task.wait(1)
      end
   end
})

UtilityTab:CreateSlider({
   Name = "⚡ ความเร็วตัวละคร (Speed Boost)",
   Min = 16,
   Max = 100,
   CurrentValue = 16,
   Callback = function(value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
   end
})

Rayfield:LoadConfiguration()
