local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ Name = "oplus Hub v2", HidePremium = false, SaveConfig = true, ConfigFolder = "pumpkin Hub" })


local MainTab = Window:MakeTab({ Name = "Main", Icon = "rbxassetid://4483362458", PremiumOnly = false })

MainTab:AddToggle({
   Name = "✅ Auto Fishing (ตกปลาอัตโนมัติ)",
   Default = false,
   Callback = function(value)
      AutoFishing = value
      while AutoFishing do
         
         task.wait(0.5)
      end
   end
})

MainTab:AddToggle({
   Name = "💰 Auto Sell (ขายของอัตโนมัติ)",
   Default = false,
   Callback = function(value)
      AutoSell = value
      while AutoSell do
         
         task.wait(1)
      end
   end
})

MainTab:AddToggle({
   Name = "📦 Auto Collect (เก็บของอัตโนมัติ)",
   Default = false,
   Callback = function(value)
      Auto
