local Utils = {}

---comment
---@param value integer
---@param step integer
---@param threshold integer
---@return integer
function Utils.decrement(value, step, threshold)
    if value <= threshold then
        return threshold
    end
    value = value - step
    if value < threshold then
        return threshold
    end
    return value
end

return Utils
