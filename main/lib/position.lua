local C = require "main.constants"

local position = {}

-- set isometric position
---@param new_pos vector3
---@param z_index number
---@param id string|hash|url|nil
function position.set_iso_position(new_pos, z_index, id)
    new_pos.z = z_index - (new_pos.y * C.MIN_STEP)
    go.set_position(new_pos, id)
end

---@param obj {correction: vector3}
---@param message {distance: number, normal: vector3}
function position.correct_position(obj, message)
    if message.distance > 0 then
        local proj = vmath.project(obj.correction,
            message.normal * message.distance);
        if (proj < 1) then
            local comp = (message.distance - message.distance * proj) *
                message.normal;
            local new_pos = go.get_position() + comp
            if check_if_in_bounds(new_pos) then
                position.set_iso_position(new_pos, C.OBECTS_Z_INDEX)
                obj.correction = obj.correction + comp;
            end
        end
    end
end

return position
