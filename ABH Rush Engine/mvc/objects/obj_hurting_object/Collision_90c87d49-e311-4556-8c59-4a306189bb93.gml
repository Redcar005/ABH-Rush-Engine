if other.canHit
{
    if other.rings > 0
    {
        other.image_i = 0
        other.ground = false
        other.action = consPlayerActionDamaged
        other.vsp = -4
        other.hsp = -5*other.xdir
        other.canHit = false
        other.hitInvincible = 240
        scatter_rings()
    }
    else
    {
        other.image_i = 0
        other.ground = false
        other.action = consPlayerActionDead
        other.vsp = -4
        other.hsp = -5*other.xdir
        other.canHit = false
        other.alarm3 = 120
    }
}

