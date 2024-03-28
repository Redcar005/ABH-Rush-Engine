button_distance = 30

button1 = instance_create(x,y,obj_qte3_button)
button2 = instance_create(x,y,obj_qte3_button)
button3 = instance_create(x,y,obj_qte3_button)
button4 = instance_create(x,y,obj_qte3_button)
button5 = instance_create(x,y,obj_qte3_button)

button1.image_alpha = 0 
button2.image_alpha = 0
button3.image_alpha = 0
button4.image_alpha = 0
button5.image_alpha = 0

button1.image_speed = 0 
button2.image_speed = 0
button3.image_speed = 0
button4.image_speed = 0
button5.image_speed = 0

button1.image_index = choose(0,1,2,3) 
button2.image_index = choose(0,1,2,3)
button3.image_index = choose(0,1,2,3)
button4.image_index = choose(0,1,2,3)
button5.image_index = choose(0,1,2,3)


if(button1.image_index == 0 && button2.image_index == 1 && button3.image_index == 1)
    button3.image_index = choose(0,2,3)

if(button2.image_index == 0 && button3.image_index == 1 && button4.image_index == 1)
    button4.image_index = choose(0,2,3)
   
if(button3.image_index == 0 && button4.image_index == 1 && button5.image_index == 1)
    button5.image_index = choose(0,2,3) 
    
x_button1 = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 - button_distance*2
y_button1 = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2 
done_button1 = false

x_button2 = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 - button_distance
y_button2 = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2 
done_button2 = false

x_button3 = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 
y_button3 = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2 
done_button3 = false

x_button4 = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 + button_distance
y_button4 = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2 
done_button4 = false

x_button5 = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 + button_distance*2
y_button5 = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2 
done_button5 = false

time = 100
timerate = 0.5
timevalue = 0
done = false

