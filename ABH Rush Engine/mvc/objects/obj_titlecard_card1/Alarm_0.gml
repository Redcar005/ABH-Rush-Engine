phase = 3
if !obj_checkpoint_controller.checkpoint   
    instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/5,__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/3,obj_titlecard_SonicSet)
else
    instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/5,__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/3,obj_titlecard_SonicGo2)

