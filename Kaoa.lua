-- โหลด Rayfield UI Library
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/Heiskt/Rayfield/main/source"))()

-- สร้าง Window ใหม่
local Window = Rayfield:CreateWindow({
    Name = "kaisa hub",
    LoadingTitle = "loading...",
    LoadingSubtitle = "finish!",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = nil,
        FileName = "BloxFruitsConfig"
    },
    Discord = {
        Enabled = true,
        Invite = "https://discord.gg/rQ3Mmrjz",
        RememberJoins = true
    },
    KeySystem = true,
    Key = "pumpyai"
})


local Tab = Window:CreateTab("Auto Farm", 4483362458)


Tab:CreateButton({
    Name = "start Auto Farm",
    Callback = function()
        
        print("-- สคริปต์ Auto Farm สำหรับ Blox Fruits
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local mouse = player:GetMouse()

-- ฟังก์ชันสำหรับค้นหาและโจมตีศัตรู
local function autoFarm()
    while true do
        -- ค้นหาศัตรูที่ใกล้ที่สุด
        local target = nil
        local closestDistance = math.huge
        for _, enemy in pairs(workspace.Enemies:GetChildren()) do
            if enemy:FindFirstChild("HumanoidRootPart") then
                local distance = (enemy.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
                if distance < closestDistance then
                    target = enemy
                    closestDistance = distance
                end
            end
        end

        -- หากพบศัตรู ก็จะโจมตี
        if target then
            -- เคลื่อนที่ไปที่ศัตรู
            character.HumanoidRootPart.CFrame = target.HumanoidRootPart.CFrame
            -- ใช้ฟังก์ชันโจมตี (คุณสามารถเปลี่ยนแปลงให้เหมาะสมกับการโจมตีในเกมของคุณ)
            -- ตัวอย่าง: Humanoid:TakeDamage(target)
            wait(1)
        end

        wait(0.5)
    end
end


autoFarm()")
        
        
    end
})

-
Tab:CreateButton({
    Name = "stop Auto Farm",
    Callback = function()
        
        print("-- สคริปต์ Auto Farm สำหรับ Blox Fruits ที่สามารถหยุดได้
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local mouse = player:GetMouse()

local isFarming = true  -- ตัวแปรสำหรับควบคุมการฟาร์ม

-- ฟังก์ชันสำหรับค้นหาและโจมตีศัตรู
local function autoFarm()
    while isFarming do  -- ทำงานตามเงื่อนไข isFarming
        -- ค้นหาศัตรูที่ใกล้ที่สุด
        local target = nil
        local closestDistance = math.huge
        for _, enemy in pairs(workspace.Enemies:GetChildren()) do
            if enemy:FindFirstChild("HumanoidRootPart") then
                local distance = (enemy.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
                if distance < closestDistance then
                    target = enemy
                    closestDistance = distance
                end
            end
        end

        -- หากพบศัตรู ก็จะโจมตี
        if target then
            -- เคลื่อนที่ไปที่ศัตรู
            character.HumanoidRootPart.CFrame = target.HumanoidRootPart.CFrame
            -- ใช้ฟังก์ชันโจมตี (คุณสามารถเปลี่ยนแปลงให้เหมาะสมกับการโจมตีในเกมของคุณ)
            -- ตัวอย่าง: Humanoid:TakeDamage(target)
            wait(1) -- รอระหว่างการโจมตี
        end

        wait(0.5) -- รอระหว่างการค้นหาศัตรูใหม่
    end
end

-- ฟังก์ชันหยุดการฟาร์ม
local function stopFarming()
    isFarming = false
end

-- เริ่มต้นการฟาร์ม
autoFarm()

-- คุณสามารถใช้ stopFarming() เพื่อหยุดฟาร์มได้
-- ตัวอย่างการหยุดฟาร์มเมื่อกดปุ่ม
mouse.KeyDown:Connect(function(key)
    if key == "q" then  -- กดปุ่ม Q เพื่อหยุดฟาร์ม
        stopFarming()
    end
end)")
    end
})

