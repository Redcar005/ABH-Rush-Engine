event_inherited()

if image_index == 0
    draw_arm_position = 0
else if (image_index == 3 || image_index == 6)
    draw_arm_position = 1
else 
    draw_arm_position = 2
if image_index > 6
    image_index = 0

if left_state == 3
    left_arm = spr_cyril_eleftarm
if right_state == 3
    right_arm = spr_cyril_erightarm

if canHit
{
    if distance_to_object(obj_Sonic) < 180  && ((obj_Sonic.x < x && image_xscale == 1) || (obj_Sonic.x > x && image_xscale == -1)) && (obj_Sonic.y < y + 40 && obj_Sonic.y > y - 15)
    {
        if throw_axe == 0
        {
            if right_state == 0
                right_state = 1
        }
        else if throw_axe == 1
        {
            if right_state == 3 && left_state == 0
                left_state = 1
        }
        else
        {
            right_state = 3
            left_state = 3
        }
        
    }
    
    if right_state == 1
    {
        right_angle += -throw_speed*image_xscale
        if abs(right_angle) >= 180
            right_state = 2
    }
    else if right_state == 2
    {
        right_angle -= -throw_speed*image_xscale
        if abs(right_angle) < 90
        {
            right_state = 3
            throw_axe = 1
            instance_create(x-10*image_xscale,y,obj_cyril_axe)
        }
    }
    else
    {
        right_angle = 0   
    }
        
        
        
    if left_state == 1
    {
        left_angle += -throw_speed*image_xscale
        if abs(left_angle) >= 180
            left_state = 2
    }
    else if left_state == 2
    {
        left_angle -= -throw_speed*image_xscale
        if abs(left_angle) < 90
        {
            left_state = 3
            throw_axe = 2
            var axe = instance_create(x-10*image_xscale,y,obj_cyril_axe)
            with(axe)
            {
                image_xscale = self.image_xscale
            }
        }
    }
    else
    {
        left_angle = 0   
    }
}

