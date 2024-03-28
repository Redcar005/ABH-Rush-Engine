if canFollow
{
    if !(obj_Sonic.action == consPlayerActionQTE && abs(obj_Sonic.hsp) <= 0.625 && obj_Sonic.vsp <= 0.3125)
    {
        if (obj_Sonic.action != consPlayerActionZipLineStart && obj_Sonic.action != consPlayerActionZipLineTravel)
        {
            x = clamp(obj_Sonic.x + obj_Sonic.hsp*12*obj_Sonic.acos,obj_display_manager.ideal_width/2,room_width - (obj_display_manager.ideal_width/2));
            y = clamp(obj_Sonic.y + obj_Sonic.vsp*2,obj_display_manager.ideal_height/2,room_height - (obj_display_manager.ideal_height/2));
        
            __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (((x-(__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.2 + shake*choose(random(shakeoffset),-random(shakeoffset))) );
            
            if !obj_Sonic.ground 
                __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((y-(__view_get( e__VW.HView, 0 )/2)) - __view_get( e__VW.YView, 0 )) * 0.9 + shake*choose(random(shakeoffset),-random(shakeoffset))) );
            else
                __view_set( e__VW.YView, 0, obj_Sonic.y - __view_get( e__VW.HView, 0 )/2 + shake*choose(random(shakeoffset),-random(shakeoffset)) );
        }
        else
        {
         /*
            x = clamp(obj_Sonic.x + obj_Sonic.hspeed*12*obj_Sonic.acos,obj_display_manager.ideal_width/2,room_width - (obj_display_manager.ideal_width/2));
            y = clamp(obj_Sonic.y + obj_Sonic.vspeed*2,obj_display_manager.ideal_height/2,room_height - (obj_display_manager.ideal_height/2));
            
            view_xview[0] += ((x-(view_wview[0]/2)) - view_xview[0]) * 0.9 + shake*choose(random(shakeoffset),-random(shakeoffset));
                        
            if !obj_Sonic.ground 
                view_yview[0] += ((y-(view_hview[0]/2)) - view_yview[0]) * 0.9 + shake*choose(random(shakeoffset),-random(shakeoffset));
            else
                view_yview[0] = obj_Sonic.y - view_hview[0]/2 + shake*choose(random(shakeoffset),-random(shakeoffset));
            */
            x = clamp(obj_Sonic.x + obj_Sonic.hspeed*12 ,obj_display_manager.ideal_width/2,room_width - (obj_display_manager.ideal_width/2));
            y = clamp(obj_Sonic.y,obj_display_manager.ideal_height/2,room_height - (obj_display_manager.ideal_height/2));
    
            __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (((x-(__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.2) )
            //view_yview[0] += ((y-(view_hview[0]/2)) - view_yview[0]) * 0.9
            __view_set( e__VW.YView, 0, obj_Sonic.y - __view_get( e__VW.HView, 0 )/2 )
        }       
    }
    else
    {
        x = clamp(obj_Sonic.x,obj_display_manager.ideal_width/2,room_width - (obj_display_manager.ideal_width/2));
        y = clamp(obj_Sonic.y,obj_display_manager.ideal_height/2,room_height - (obj_display_manager.ideal_height/2));
    
        __view_set( e__VW.XView, 0, obj_Sonic.x - __view_get( e__VW.WView, 0 )/2 )
        __view_set( e__VW.YView, 0, obj_Sonic.y - __view_get( e__VW.HView, 0 )/2 )
    }
    
    if abs(obj_Sonic.hsp) > 0 && (keyboard_check(vk_left) || keyboard_check(vk_right))
        offset += abs(obj_Sonic.hsp)*obj_Sonic.acos*obj_Sonic.xdir
    else
    {   
        if offset > 0
            offset -= 2
        else if offset < 0
            offset += 2
        else
            offset = 0
    }
    if offset > 125
        offset = 125
    if offset < -125
        offset = -125    
}
else if obj_Sonic.stageClear
{
    if instance_exists(obj_goalring)
    {
        x = obj_goalring.x
        y = obj_goalring.y
        
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (((x-(__view_get( e__VW.WView, 0 )/2)) - __view_get( e__VW.XView, 0 )) * 0.5) )
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((y-(__view_get( e__VW.HView, 0 )/2)) - __view_get( e__VW.YView, 0 )) * 0.5) )
    }
}
__view_set( e__VW.XView, 0, floor(__view_get( e__VW.XView, 0 )) )
__view_set( e__VW.YView, 0, floor(__view_get( e__VW.YView, 0 )) )


/* */
/*  */
