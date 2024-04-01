-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local T = {}

-- shared table:
-- idx 1 == hero.direction
-- idx 2 == hero.player_score
-- idx 3 == hero.enemies_killed
-- idx 4 == hero.hp
-- idx 5 == static background id
local shared = {}

function T.alter_value(idx, value)
	shared[idx] = value
end

function T.get_value(idx)
	return shared[idx]
end

function T.add_value(value)
	table.insert(shared, value)
end

T.HERO_ROTATION = 1
T.HERO_JUNK_SCORE = 2
T.HERO_KILLS_SCORE = 3
T.HERO_HP = 4
T.JUNK_QUOTA = 5
T.GAME_END = 6
T.CURR_STATIC_BG_NAME = 7

T.add_value(vmath.vector4())
T.add_value(0)
T.add_value(0)
T.add_value(500)
T.add_value(0)
T.add_value(false)
T.add_value("invalid")

return T