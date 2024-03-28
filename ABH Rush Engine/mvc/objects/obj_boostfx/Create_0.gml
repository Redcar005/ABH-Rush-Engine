if obj_Sonic.boostamount <= 0 || obj_Sonic.stageClear
{
    instance_destroy()
    exit
}


image_speed = 0.4
depth = obj_Sonic.depth - 2
image_alpha = 0

airtime = 240

alive = true
image_angle = point_direction(obj_Sonic.x_begin,obj_Sonic.y_begin,x,y)

obj_player_camera.canFollow = false
if abs(obj_Sonic.hsp) < 5
    obj_player_camera.alarm[0] = 10
else 
    obj_player_camera.alarm[0] = 4


obj_Sonic.hsp = obj_Sonic.hspl*obj_Sonic.xdir;

instance_create(obj_Sonic.x,obj_Sonic.y,obj_boostsw)

audio_play_sound(snd_boost_start,1,false)
audio_play_sound(snd_boost_continue,1,false)
audio_play_sound(snd_boost_loop,1,true)

if obj_Sonic.character == consPlayerNameSonic
    audio_play_sound(choose(snd_SonicGo,snd_SonicBoost1,snd_SonicBoost2),1,false)
else if obj_Sonic.character == consPlayerNameShadow
    audio_play_sound(choose(snd_Shadow_Boost1,snd_Shadow_Boost2,snd_Shadow_Boost3),1,false)
    
vibrate_xbox_controller(30)



