//draw_self()
switch(super)
{
    case false:
    {
        switch(character)
        {
            case consPlayerNameSonic:
            {
                draw_Sonic();
            }
            break;
            
            case consPlayerNameShadow:
            {
                draw_Shadow();
            }
            break;
            
            case consPlayerNameTails:
            {
                draw_Tails();
            }
            break;
        }
    }
    break;
    
    case true:
    {
        switch(character)
        {
            case consPlayerNameSonic:
            {
                draw_SuperSonic();
            }
            break;
            
            case consPlayerNameShadow:
            {
                draw_SuperShadow();
            }
            break;
            
            case consPlayerNameTails:
            {
                draw_Tails();
            }
            break;
        }
    }
    break;
}

boost_direction = point_direction(x_begin,y_begin,x,y)
tail_direction = point_direction(x_begin,y_begin,x,y)

