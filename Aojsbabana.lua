-- สร้าง UI สำหรับ Auto Fishing
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

-- ฟังก์ชันสร้างปุ่ม
local function createButton(text, position, color)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 300, 0, 60)
    button.Position = position
    button.Text = text
    button.Font = Enum.Font.GothamBold
    button.TextSize = 24
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = color
    button.Parent = screenGui
    return button
end

-- สร้างปุ่ม UI
local autoFishingButton = createButton("Start Auto Fishing", UDim2.new(0, 10, 0, 10), Color3.fromRGB(0, 102, 255))
local autoReelButton = createButton("Start Auto Reel", UDim2.new(0, 10, 0, 80), Color3.fromRGB(255, 0, 0))
local autoShakeButton = createButton("Start Auto Shake", UDim2.new(0, 10, 0, 150), Color3.fromRGB(255, 165, 0))
local autoCatchButton = createButton("Start Auto Catch", UDim2.new(0, 10, 0, 220), Color3.fromRGB(0, 255, 0))

-- สถานะของการทำงาน
local isFishing, isReeling, isShaking, isCatching = false, false, false, false

-- ฟังก์ชันเริ่มการทำงานแต่ละโหมด
local function startTask(taskName, stateVar, button, func)
    if _G[stateVar] then
        _G[stateVar] = false
        button.Text = "Start " .. taskName
    else
        _G[stateVar] = true
        button.Text = "Stop " .. taskName
        task.spawn(func)  -- ใช้ task.spawn() เพื่อให้รันแบบแยก Thread
    end
end

-- ฟังก์ชัน Auto Fishing
local function autoFishing()
    while _G.isFishing do
        print("Fishing...")
        -- เพิ่มคำสั่งตกปลา
        task.wait(2)
    end
end

-- ฟังก์ชัน Auto Reel
local function autoReel()
    while _G.isReeling do
        print("Reeling...")
        -- เพิ่มคำสั่งหมุนรอก
        task.wait(2)
    end
end

-- ฟังก์ชัน Auto Shake
local function autoShake()
    while _G.isShaking do
        print("Shaking reel...")
        -- เพิ่มคำสั่งสั่นรอก
        task.wait(1)
    end
end

-- ฟังก์ชัน Auto Catch
local function autoCatch()
    while _G.isCatching do
        print("Catching fish...")
        -- เพิ่มคำสั่งจับปลา
        task.wait(1)
    end
end

-- เชื่อมปุ่มกับฟังก์ชัน
autoFishingButton.MouseButton1Click:Connect(function()
    startTask("Auto Fishing", "isFishing", autoFishingButton, autoFishing)
end)

autoReelButton.MouseButton1Click:Connect(function()
    startTask("Auto Reel", "isReeling", autoReelButton, autoReel)
end)

autoShakeButton.MouseButton1Click:Connect(function()
    startTask("Auto Shake", "isShaking", autoShakeButton, autoShake)
end)

autoCatchButton.MouseButton1Click:Connect(function()
    startTask("Auto Catch", "isCatching", autoCatchButton, autoCatch)
end)
