local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "gumairu hub | By pumpkin",
    LoadingTitle = "Loading Fisch Script...",
    LoadingSubtitle = "made by ",
    ConfigurationSaving = {
        Enabled = false,
    },
    KeySystem = false
})


local MainTab = Window:CreateTab("Main", 4483362458)


local AutoShake = false
MainTab:CreateToggle({
    Name = "Auto Shake",
    CurrentValue = false,
    Flag = "AutoShake",
    Callback = function(Value)
        AutoShake = Value
        while AutoShake do
            wait(0.5)
            local args = { [1] = "Shake" }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    end
})


local AutoFish = false
MainTab:CreateToggle({
    Name = "Auto Fishing",
    CurrentValue = false,
    Flag = "AutoFish",
    Callback = function(Value)
        AutoFish = Value
        while AutoFish do
            wait(2)
            local args = { [1] = "CatchFish" }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    end
})


MainTab:CreateButton({
    Name = "Teleport ไปจุดตกปลาดีๆ",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 10, 200)
    end
})

Rayfield:LoadConfiguration()
