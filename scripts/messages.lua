local M = {}
-- UI
M.START_TIMER = hash("start_timer")
M.INCR_MONSTETS_COUNT = hash("incr_monsters_count")
M.UPDATE_GUI_SCORE = hash("update_gui_score")
M.CHANGE_HP_BAR = hash("change_hp_bar")

-- UNIT
M.MAKE_DAMAGE = hash("make_damage")
M.ENEMY_DAMAGE = hash("enemy_damage")
M.IS_DEAD = hash("is_dead")

-- ITEMS
M.ITEM_PICK_UP = hash("item_pick_up")

-- COLLISION
M.UNIT = hash("unit")
M.TRIGGER_RESPONSE = hash("trigger_response")
M.CONTACT_POINT_RESPONSE = hash("contact_point_response")

-- COMPONENTS
M.DISABLE = hash("disable")
M.ENABLE = hash("enable")

-- COLLECTIONS
M.PROXY_LOADED = hash("proxy_loaded")
M.PROXY_UNLOADED = hash("proxy_unloaded")
M.LOAD = hash("load")
M.UNLOAD = hash("unload")

M.GAME_OVER = hash("game_over")
M.RESTART = hash("restart")
M.START_GAME = hash("start_game")

-- INPUT
M.ACQUIRE_INPUT_FOCUS = "acquire_input_focus"
M.RELEASE_INPUT_FOCUS = "release_input_focus"

return M
