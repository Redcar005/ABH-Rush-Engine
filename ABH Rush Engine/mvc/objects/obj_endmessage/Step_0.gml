if phase == 1
{
    if image_alpha < 1
        image_alpha += 0.05
    else
    {
        phase = 2
        alarm[0] = 300
    }
}
if phase == 3
{
    if image_alpha > 0
        image_alpha -= 0.05
    else
    {
        phase = 4
        image_index = 1
    }
}
if phase == 4
{
    if image_alpha < 1
        image_alpha += 0.05
    else
    {
        phase = 5
        alarm[0] = 120
    }
}
if phase == 6
{
    image_alpha -= 0.05
    if image_alpha <= 0
        room_goto(rm_titlescreen)
}

