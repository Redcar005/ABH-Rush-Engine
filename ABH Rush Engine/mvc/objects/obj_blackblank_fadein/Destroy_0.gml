
//audio_stop_all()
room_persistent = false
global.lives_left -= 1
global.enemies = 0
if global.lives_left >= 0
    room_restart()
else
{
    audio_stop_all()
    game_restart()
}

