if other.action == consPlayerActionZipLineStart && activate && x <= other.x
{
    
    other.x = x 
    activate = false
    other.action = consPlayerActionZipLineTravel
    other.zipline_speed = other.hsp
    other.hsp = 0
    other.vsp = 0
}

