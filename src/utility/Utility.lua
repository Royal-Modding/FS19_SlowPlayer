--- Royal Utility

---@author Royal Modding
---@version 2.0.3.0
---@date 09/11/2020

--- Utilities class
---@class Utility
Utility = Utility or {}

--- Clamp between the given maximum and minimum
---@param minValue number
---@param value number
---@param maxValue number
---@return number
function Utility.clamp(minValue, value, maxValue)
    minValue = minValue or 0
    maxValue = maxValue or 1
    value = value or 0
    return math.max(minValue, math.min(maxValue, value))
end

--- Get random number sign (1 or -1)
---@return number
function Utility.randomSign()
    if math.random(2) > 1 then
        return -1
    else
        return 1
    end
end

--- Normalize value by given maximum and minimum
---@param minValue number
---@param value number
---@param maxValue number
---@return number
function Utility.normalize(minValue, value, maxValue)
    minValue = minValue or 0
    maxValue = maxValue or 1
    value = value or 0.5
    return (value - minValue) / (maxValue - minValue)
end

---@param target table
---@param name string
---@param newFunc function
function Utility.overwrittenFunction(target, name, newFunc)
    target[name] = Utils.overwrittenFunction(target[name], newFunc)
end

---@param target table
---@param name string
---@param newFunc function
function Utility.overwrittenStaticFunction(target, name, newFunc)
    local oldFunc = target[name]
    target[name] = function(...)
        return newFunc(oldFunc, ...)
    end
end

---@param target table
---@param name string
---@param newFunc function
function Utility.appendedFunction(target, name, newFunc)
    target[name] = Utils.appendedFunction(target[name], newFunc)
end

---@param target table
---@param name string
---@param newFunc function
function Utility.prependedFunction(target, name, newFunc)
    target[name] = Utils.prependedFunction(target[name], newFunc)
end
