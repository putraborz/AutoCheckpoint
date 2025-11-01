--[[
    Anchor System Module
]]

local AnchorSystem = {}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer

function AnchorSystem:AnchorPlayer(state)
    local character = Player.Character
    if not character then return end
    
    local hrp = character:FindFirstChild("HumanoidRootPart")
    if hrp then
        hrp.Anchored = state
    end
end

function AnchorSystem:StartLoop()
    RunService.Heartbeat:Connect(function()
        if _G.AnchorPlayer then
            self:AnchorPlayer(true)
        else
            self:AnchorPlayer(false)
        end
    end)
end

return AnchorSystem
