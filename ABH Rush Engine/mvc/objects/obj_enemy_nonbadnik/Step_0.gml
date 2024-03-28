if !canHit
{
    if hspeed >= 0
        image_angle += 25
    else 
        image_angle -= 25
    if collision_circle(x,y-5,8,obj_walls,true,true)
        instance_destroy()
}

