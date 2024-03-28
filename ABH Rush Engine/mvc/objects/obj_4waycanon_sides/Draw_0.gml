if image_i > 998
{
    image_i = 0;
}
if frame >= 1
{
    frame = 0;
    image_i += 1;
}
if frame <= -1
{
    frame = 0
    image_i -= 1
}


draw_sprite_ext(spr_4waycanon_sides,image_i,x,y,1,1,0,c_white,image_alpha);

