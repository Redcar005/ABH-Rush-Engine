step += 1

if step == 10
{
    instance_create(x + choose(-1,1)*random(20),y + 8, obj_bubble_capsule)
    step = 0
}

