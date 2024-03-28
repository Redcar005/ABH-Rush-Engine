audio_play_sound(snd_enemy_explosion,1,false)
instance_create(x,y,obj_explosion_small)
instance_create(x,y,obj_boostorb)

draw_effect(spr_enemycollision,0,1,1, false)

global.enemies += 100

