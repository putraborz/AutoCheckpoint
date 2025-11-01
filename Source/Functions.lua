--[[
    Core Functions
]]

local Functions = {}

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Get Character
function Functions:GetCharacter()
    return Player.Character or Player.CharacterAdded:Wait()
end

-- Get HumanoidRootPart
function Functions:GetHRP()
    local character = self:GetCharacter()
    return character:WaitForChild("HumanoidRootPart")
end

-- Notification
function Functions:Notify(title, text, duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = duration or 5
    })
end

-- Safe Call
function Functions:SafeCall(func, ...)
    local success, result = pcall(func, ...)
    if not success then
        warn("Error:", result)
    end
    return success, result
end

return Functions
