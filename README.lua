local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ Name = "Fisch Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "FischHub" })

-- Main Tab (รวมทุกฟีเจอร์ในหน้าเดียว)
local MainTab = Window:MakeTab({ Name = "Main", Icon = "rbxassetid://4483362458", PremiumOnly = false })

MainTab:AddToggle({
   Name = "✅ Auto Fishing (ตกปลาอัตโนมัติ)",
   Default = false,
   Callback = function(value)
      AutoFishing = value
      while AutoFishing do
         -- โค้ดตกปลาอัตโนมัติ
         task.wait(1)
      end
   end
})

MainTab:AddToggle({
   Name = "💰 Auto Sell (ขายของอัตโนมัติ)",
   Default = false,
   Callback = function(value)
      AutoSell = value
      while AutoSell do
         -- โค้ดขายของอัตโนมัติ
         task.wait(1)
      end
   end
})

MainTab:AddToggle({
   Name = "📦 Auto Collect (เก็บของอัตโนมัติ)",
   Default = false,
   Callback = function(value)
      Auto
