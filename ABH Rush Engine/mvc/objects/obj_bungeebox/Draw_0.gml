if activate
    draw_sprite(spr_bungeechain,0,x,y)
else
{
    x1 = obj_Sonic.x + obj_Sonic.xdir*5
    y1 = obj_Sonic.y
    
    draw_sprite(spr_bungeechain,0,x,y)
    
    var i,dist,dir;
    dist = point_distance(x,y,x1,y1)-16;
    dir = point_direction(x,y,x1,y1);

    for (i = 0; i < dist/16; i += 1) 
    draw_sprite(spr_bungeechain,0,x + lengthdir_x(i*16,dir),y + lengthdir_y(i*16,dir));
        draw_sprite(spr_bungeechain,0,self.x,self.y);
    draw_sprite(spr_bungeechain,0,x1,y1)
}


