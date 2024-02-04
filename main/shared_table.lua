-- Put functions in this file to use them in several other scripts.
-- To get access to the functions, you need to put:
-- require "my_directory.my_file"
-- in any script using the functions.
local T = {}

-- shared table:
-- idx 1 == hero.direction
-- idx 2 == hero.player_score
-- idx 3 == hero.enemies_killed
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

return T