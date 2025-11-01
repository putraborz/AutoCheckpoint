--[[
    Utilities Module
]]

local Utilities = {}

function Utilities:TableToString(tbl, indent)
    indent = indent or 0
    local result = ""
    local indentStr = string.rep("  ", indent)
    
    for k, v in pairs(tbl) do
        if type(v) == "table" then
            result = result .. indentStr .. tostring(k) .. ":\n" .. self:TableToString(v, indent + 1)
        else
            result = result .. indentStr .. tostring(k) .. ": " .. tostring(v) .. "\n"
        end
    end
    
    return result
end

function Utilities:Round(number, decimals)
    local mult = 10^(decimals or 0)
    return math.floor(number * mult + 0.5) / mult
end

return Utilities
