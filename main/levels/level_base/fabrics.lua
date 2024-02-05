local Fabrics = {}

---comment
---@return hash
function Fabrics.create_hero()
    return factory.create("/base/factories#hero", vmath.vector3(1, 1, C.OBECTS_Z_INDEX), nil,
        { bullet_url = msg.url("/base/factories#bullet"), explosion_url = msg.url("/base/factories#explosion") }
    )
end

---@param hero_id hash
---@param position vector3
---@return hash
function Fabrics.create_pirat(hero_id, position, pirate_id)
    return factory.create("/base/factories#pirate",
        position, nil,
        {
            hero_id = hero_id,
            bullet_url = msg.url("/base/factories#enemy_bullet"),
            explosion_url = msg.url(
                "/base/factories#explosion"),
            pirate_id = pirate_id
        })
end

---@param hero_id hash
---@param position vector3
---@return hash
function Fabrics.create_alien(hero_id, position, pirate_id)
    return factory.create("/base/factories#alien",
        position, nil,
        {
            hero_id = hero_id,
            bullet_url = msg.url("/base/factories#enemy_bullet"),
            explosion_url = msg.url(
                "/base/factories#explosion"),
            pirate_id = pirate_id
        })
end

function Fabrics.create_junk(hero_id, position)
    return factory.create("/base/factories#junk", position)
end

function Fabrics.create_meteor(position)
    return factory.create("/base/factories#meteor", position)
end

return Fabrics
