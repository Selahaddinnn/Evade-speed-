-- Evade Speed, Jump, Acceleration, Boost GUI
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")

-- GUI Oluştur
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Position = UDim2.new(0, 50, 0, 50)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

local SpeedBtn = Instance.new("TextButton", Frame)
SpeedBtn.Size = UDim2.new(1, 0, 0, 30)
SpeedBtn.Text = "⚡ Hız"
SpeedBtn.MouseButton1Click:Connect(function()
    hum.WalkSpeed = 50
end)

local JumpBtn = Instance.new("TextButton", Frame)
JumpBtn.Size = UDim2.new(1, 0, 0, 30)
JumpBtn.Position = UDim2.new(0, 0, 0, 40)
JumpBtn.Text = "⬆ Yüksek Zıpla"
JumpBtn.MouseButton1Click:Connect(function()
    hum.JumpPower = 150
end)

local AccelBtn = Instance.new("TextButton", Frame)
AccelBtn.Size = UDim2.new(1, 0, 0, 30)
AccelBtn.Position = UDim2.new(0, 0, 0, 80)
AccelBtn.Text = "🚀 İvme"
AccelBtn.MouseButton1Click:Connect(function()
    for i = 1, 10 do
        hum.WalkSpeed = hum.WalkSpeed + 5
        task.wait(0.1)
    end
end)

local BoostBtn = Instance.new("TextButton", Frame)
BoostBtn.Size = UDim2.new(1, 0, 0, 30)
BoostBtn.Position = UDim2.new(0, 0, 0, 120)
BoostBtn.Text = "💨 Boost"
BoostBtn.MouseButton1Click:Connect(function()
    hum.WalkSpeed = 100
    hum.JumpPower = 200
end)

print("Evade Boost Script Aktif!")