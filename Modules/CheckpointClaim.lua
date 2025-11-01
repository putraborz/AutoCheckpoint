--[[
    Checkpoint Claim Module
]]

local CheckpointClaim = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer
local Config = require(script.Parent.Parent.Source.Config)

function CheckpointClaim:ClaimSingle(checkpoint)
    local character = Player.Character
    if not character then return false end
    
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if not hrp then return false end
    
    if checkpoint and checkpoint:IsA("BasePart") then
        local success = pcall(function()
            firetouchinterest(hrp, checkpoint, 0)
            task.wait(0.01)
            firetouchinterest(hrp, checkpoint, 1)
        end)
        return success
    end
    
    return false
end

function CheckpointClaim:ClaimAll()
    local checkpointFolder = workspace:FindFirstChild(Config.CheckpointFolder)
    if not checkpointFolder then 
        warn("Checkpoint folder not found!")
        return 
    end
    
    for _, checkpoint in pairs(checkpointFolder:GetChildren()) do
        if _G.AutoCheckpoint then
            self:ClaimSingle(checkpoint)
            task.wait(Config.ClaimDelay)
        else
            break
        end
    end
end

function CheckpointClaim:StartLoop()
    RunService.Heartbeat:Connect(function()
        if _G.AutoCheckpoint then
            self:ClaimAll()
        end
    end)
end

return CheckpointClaim
