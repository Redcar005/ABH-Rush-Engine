if !canGrab
{    
    image_alpha -= 0.0625
    if image_alpha <= 0
        instance_destroy()
}

if place_meeting(x, y+vspeed+1, obj_walls)
   vspeed *= -0.75;
   
if place_meeting(x+hspeed+sign(hspeed), y, obj_walls)
   hspeed *= -0.25;

while place_meeting(x,y+1,obj_walls)
y -= 1;
    

vspeed += 0.0625

