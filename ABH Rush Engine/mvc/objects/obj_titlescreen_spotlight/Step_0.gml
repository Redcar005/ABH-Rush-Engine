if x < -228
{
    x = 456 + 228
    image_angle = -image_angle;
    rotate = -rotate;
    rot_speed = -rot_speed;
}
image_angle += rot_speed

if rot_speed > speed_limit
    rot_speed = speed_limit
else if rot_speed < -speed_limit
    rot_speed = -speed_limit

if rotate == 1
    rot_speed -= acceleration
else 
    rot_speed += acceleration
    
if image_angle > angle_limit 
    rotate = 1
else if image_angle < -angle_limit
    rotate = -1

