local Spin = function(BasePart)
    local TimeToWait = 2
    local Time = tick()
    local Angle = 0

    repeat
        if RootPart then
            Angle = Angle + 100

            -- Apply spinning force
            FPos(BasePart, CFrame.new(0, 1.5, 0), CFrame.Angles(math.rad(Angle), 0, 0))
            task.wait()

            FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(Angle), 0, 0))
            task.wait()

            FPos(BasePart, CFrame.new(2.25, 1.5, -2.25), CFrame.Angles(math.rad(Angle), 0, 0))
            task.wait()

            FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25), CFrame.Angles(math.rad(Angle), 0, 0))
            task.wait()

            FPos(BasePart, CFrame.new(0, 1.5, 0), CFrame.Angles(math.rad(Angle), 0, 0))
            task.wait()

            FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(Angle), 0, 0))
            task.wait()
        else
            break
        end
    until tick() > Time + TimeToWait
end

local Character = Player.Character
local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
local RootPart = Humanoid and Character:FindFirstChild("HumanoidRootPart")

-- Check if RootPart exists before proceeding
if RootPart then
    Spin(RootPart)
end
