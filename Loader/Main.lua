--[[
    Auto Checkpoint - Main Loader
    Version: 1.0.0
]]

print("Loading Auto Checkpoint...")

local RepoURL = "https://raw.githubusercontent.com/putraborz/AutoCheckpoint/main/"

-- Load Modules
local Config = loadstring(game:HttpGet(RepoURL .. "Source/Config.lua"))()
local Functions = loadstring(game:HttpGet(RepoURL .. "Source/Functions.lua"))()
local GUI = loadstring(game:HttpGet(RepoURL .. "Source/GUI.lua"))()
local CheckpointClaim = loadstring(game:HttpGet(RepoURL .. "Modules/CheckpointClaim.lua"))()
local AnchorSystem = loadstring(game:HttpGet(RepoURL .. "Modules/AnchorSystem.lua"))()

-- Initialize
print("Auto Checkpoint Loaded Successfully!")
print("Version: 1.0.0")

-- Start GUI
GUI:Init()
