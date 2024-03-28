if blend
{
    draw_set_blend_mode(bm_add)
    draw_self();
    draw_set_blend_mode(bm_normal)
}
else
    draw_self();

