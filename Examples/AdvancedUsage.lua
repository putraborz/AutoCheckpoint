--[[
    Advanced Usage Example
]]

-- Custom Configuration
_G.Settings = {
    AutoClaim = true,
    AnchorPlayer = true,
    ClaimDelay = 0.05,
    CheckpointFolder = "Checkpoints",
    DebugMode = true
}

-- Load Script
loadstring(game:HttpGet("https://raw.githubusercontent.com/putraborz/AutoCheckpoint/main/Loader/Main.lua"))()

-- Custom Functions
wait(5)

-- Disable Auto Checkpoint after 60 seconds
task.delay(60, function()
    _G.AutoCheckpoint = false
    print("Auto Checkpoint Disabled")
end)
