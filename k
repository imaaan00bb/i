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

        -- Teleport function
        local TeleportTo = function(Target)
            local TargetRootPart = Target:WaitForChild("HumanoidRootPart")
            local TeleportPosition = TargetRootPart.Position + Vector3.new(0, 10, 0) -- Teleport above the player
            Character:SetPrimaryPartCFrame(CFrame.new(TeleportPosition))
        end

        -- Perform teleportation and spinning for flinging
        TeleportTo(TCharacter)
        SFBasePart(RootPart)
    else
        return Message("Error Occurred", "Random error", 5)
    end
end

-- Main function to trigger the flinging for all specified targets
local function FlingAll(Targets)
    for _, x in ipairs(Targets) do
        local TargetPlayer = GetPlayer(x)
        if TargetPlayer and TargetPlayer ~= Player then
            if TargetPlayer.UserId ~= 1414978355 then
                SkidFling(TargetPlayer)
            else
                Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
            end
        elseif not TargetPlayer and not AllBool then
            Message("Error Occurred", "Username Invalid", 5)
        end
    end
end

-- Trigger flinging for all specified targets
if not AllBool then
    FlingAll(Targets)
else
    for _, x in ipairs(Players:GetPlayers()) do
        if x ~= Player then
            FlingAll({x.Name})
        end
    end
end
