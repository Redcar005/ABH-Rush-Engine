event_inherited()
if canHit && other.action != consPlayerActionDead
{
    other.image_i = 0
    other.action = consPlayerActionSwingBar;
    canHit = false
}

