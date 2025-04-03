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
    ButtonTab = Window:Tab({ Title = "หน้าหลัก", Icon = "rbxassetid://18220445082", Desc = "Contains interactive buttons for various actions." }),
    ToggleTab = Window:Tab({ Title = "เมนู", Icon = "toggle-left", Desc = "Switch settings on and off." }),
    ButtonTab2 = Window:Tab({ Title = "วาป", Icon = "mouse-pointer-2", Desc = "Contains interactive buttons for various actions." }),
    CreateThemeTab = Window:Tab({ Title = "เปลี่ยนธีม", Icon = "palette", Desc = "Design and apply custom themes." }),
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
    Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3876.5686, 60.1393394, 3118.35791, 0.899730086, 8.22665491e-09, 0.436446786, -1.07564846e-09, 1, -1.66317218e-08, -0.436446786, 1.44945966e-08, 0.899730086) end
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

local currentThemeName = WindUI:GetCurrentTheme()
local themes = WindUI:GetThemes()

local ThemeAccent = themes[currentThemeName].Accent
local ThemeOutline = themes[currentThemeName].Outline
local ThemeText = themes[currentThemeName].Text
local ThemePlaceholderText = themes[currentThemeName].PlaceholderText

function updateTheme()
    WindUI:AddTheme({
        Name = currentThemeName,
        Accent = ThemeAccent,
        Outline = ThemeOutline,
        Text = ThemeText,
        PlaceholderText = ThemePlaceholderText
    })
    WindUI:SetTheme(currentThemeName)
end

local CreateInput = Tabs.CreateThemeTab:Input({
    Title = "Theme Name",
    Value = currentThemeName,
    Callback = function(name)
        currentThemeName = name
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "Background Color",
    Default = Color3.fromHex(ThemeAccent),
    Callback = function(color)
        ThemeAccent = color:ToHex()
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "Outline Color",
    Default = Color3.fromHex(ThemeOutline),
    Callback = function(color)
        ThemeOutline = color:ToHex()
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "Text Color",
    Default = Color3.fromHex(ThemeText),
    Callback = function(color)
        ThemeText = color:ToHex()
    end
})

Tabs.CreateThemeTab:Colorpicker({
    Title = "Placeholder Text Color",
    Default = Color3.fromHex(ThemePlaceholderText),
    Callback = function(color)
        ThemePlaceholderText = color:ToHex()
    end
})

Tabs.CreateThemeTab:Button({
    Title = "Update Theme",
    Callback = function()
        updateTheme()
    end
})
