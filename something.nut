// something.nut
// This is a test for vscript for an odd project I've been meaning to make
// Im planning for this to be called Obj_New_Horizons, a 50+ minute long zombie escape/survival map

function OnGameEvent_player_spawn(params) {
    local player = GetPlayerFromUserID(params.userid)
    printl(player.GetPlayerName() + " spawned!")
}

__CollectGameEventCallbacks(this)