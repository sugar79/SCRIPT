local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()

local Window = WindUI:CreateWindow({
    Title = "SOMTANK | FANCLUB",
    Icon = "door-open",
    Author = "สร้างโดย mashi",
    Folder = "CloudHub",
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 200,
    --Background = "rbxassetid://13511292247", -- rbxassetid only
    HasOutline = false,
    -- remove it below if you don't want to use the key system in your script.
    KeySystem = { 
        Key = { "1234", "5678" },
        Note = "The Key is '1234' or '5678",
        -- Thumbnail = {
        --     Image = "rbxassetid://18220445082", -- rbxassetid only
        --     Title = "Thumbnail"
        -- },
        URL = "https://github.com/Footagesus/WindUI", -- remove this if the key is not obtained from the link.
        SaveKey = true, -- optional
    },
})


Window:EditOpenButton({
    Title = "เปิดUI",
    Icon = "monitor",
    CornerRadius = UDim.new(0,10),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("FF0F7B"), 
        Color3.fromHex("F89B29")
    ),
    --Enabled = false,
    Draggable = true,
})



local Tabs = {
    ButtonTab = Window:Tab({ Title = "หน้าหลัก", Icon = "mouse-pointer-2", Desc = "Contains interactive buttons for various actions." }),
    ToggleTab = Window:Tab({ Title = "เมนู", Icon = "toggle-left", Desc = "Switch settings on and off." }),
}

Window:SelectTab(1)

Tabs.ButtonTab:Button({
    Title = "เพิ่มแสง",
    Desc = "กดเพื่อปรับเวลา",
    Callback = function() game:GetService("Lighting").TimeOfDay = "09:00:00" end
})

Tabs.ButtonTab:Button({
    Title = "วาปไปตีเบรุ",
    Desc = "กดเพื่อ teleport",
    Callback = function() Game.Player.LocalPlayer.Character.HumannoidRootRart.CFrame end
})


Tabs.ToggleTab:Toggle({
    Title = "ออโต้คลิก",
    Default = true,
    Callback = function(value)  end
})

Tabs.ButtonTab:Slider({
    Title = "วิ่งเร็ว",
    Value = {
        Min = 1,
        Max = 100,
        Default = 75,
    },
    Callback = function(value) game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = value end
})
