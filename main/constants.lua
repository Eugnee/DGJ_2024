local C = {}

-- COMPONENTS
-- C.UNIT_SYSTEM = msg.url("main", "/main", "unit_system")

-- Z index
C.OBECTS_Z_INDEX = 0.1
C.MIN_STEP = 0.000001

-- TILES
C.TILE_SIZE = 16

-- ANIMATION
C.SPRITE = "#sprite"
C.SPRITE_FIRE_SIDE_RIGHT = "#fire_side_right"
C.SPRITE_FIRE_SIDE_LEFT = "#fire_side_left"
C.SPRITE_FIRE_FRONT = "#fire_front"

-- COLLISION GROUPS
C.HERO = hash("hero")
C.BLOCKED = hash("blocked")
C.ENEMY = hash("enemy")
C.ENEMY_NEARBY = hash("enemy_nearby")

C.BULLET_OFFSET = vmath.vector3(0, 5, 0)
C.UP_DIRECTION = vmath.vector3(0, 1, 0)

-- ACTIONS
C.FIRE = hash("attack")
C.LEFT = hash("left")
C.UP = hash("up")
C.RIGHT = hash("right")
C.DOWN = hash("down")
C.TALK = hash("talk")

-- ITEMS
C.ITEMS = {}
C.ITEMS.ATTACK_SPEED_INCREASE = hash("attack_speed_increase")
C.ITEMS.ATTACK_DAMAGE_INCREASE = hash("attack_damage_increase")
C.ITEMS.HP_INCREASE = hash("hp_increase")
C.ITEMS.MAX_HP_INCREASE = hash("max_hp_increase")
C.ITEMS.MOVE_SPEED_INCREASE = hash("move_speed_increase")
C.ITEMS.RICOCHET_ON = hash("ricochet_on")
C.ITEMS.VAMPIRISM = hash("vampirism")

return C
