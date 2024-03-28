
draw_set_circle_precision(64)
draw_set_colour(c_orange) 
for(i = limit_end; i <= limit_start; i += 0.1)
    draw_circle(x,y,i,true)

draw_set_colour(c_orange)
for(i = limit_end1; i <= limit_start1; i += 0.1)
    draw_circle(x,y,i,true)

draw_set_colour(c_lime)
for(i = limit_end2; i <= limit_start2; i += 0.1)
    draw_circle(x,y,i,true)

          
draw_self()
    
draw_set_colour(c_red)
for(j = 0; j <= 2; j += 0.1)
    draw_circle(x,y,time-j,true)

