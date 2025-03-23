local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera
local mouse = player:GetMouse()


local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")

local aimButton = Instance.new("TextButton")
aimButton.Size = UDim2.new(0.2, 0, 0.1, 0)
aimButton.Position = UDim2.new(0.4, 0, 0.85, 0)
aimButton.Text = "Aim Lock"
aimButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
aimButton.TextColor3 = Color3.fromRGB(255, 255, 255)
aimButton.TextScaled = true
aimButton.Parent = screenGui

local function getNearestNPC()
    local nearestNPC = nil
    local shortestDistance = math.huge

    for _, npc in pairs(workspace:GetChildren()) do
        if npc:IsA("Model") and npc:FindFirstChild("Humanoid") and npc:FindFirstChild("HumanoidRootPart") then
            if not string.find(npc.Name:lower(), "horse") then
                local distance = (npc.HumanoidRootPart.Position - camera.CFrame.Position).magnitude
                if distance < shortestDistance then
                    shortestDistance = distance
                    nearestNPC = npc
                end
            end
        end
    end

    return nearestNPC
end

local function aimLock()
    local npc = getNearestNPC()
    if npc and npc:FindFirstChild("HumanoidRootPart") then
        camera.CFrame = CFrame.new(camera.CFrame.Position, npc.HumanoidRootPart.Position)
    end
end


aimButton.MouseButton1Click:Connect(function()
    aimLock()
    aimButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    wait(0.2)
    aimButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
end)


mouse.KeyDown:Connect(function(key)
    if key == "t" then
        aimLock()
    end
end)
