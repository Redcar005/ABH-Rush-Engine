if phase == 1 && image_alpha < 1
{
    image_alpha += 0.1
    if image_alpha >= 1
    {
        phase = 2
        alarm[0] = 180    
    }
}

if phase == 3 && image_alpha > 0
{
    image_alpha -= 0.1
    if image_alpha <= 0
        instance_destroy()
} 

