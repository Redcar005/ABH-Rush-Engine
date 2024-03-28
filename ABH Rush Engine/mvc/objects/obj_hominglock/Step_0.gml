if radius > 15
    radius -= 6
else
    draw = true

if obj_Sonic.action == consPlayerActionJumpPanelJump || obj_Sonic.action == consPlayerActionJumpPanelLand
    instance_destroy()
    
x = instance_nearest(x,y,obj_homable).x
y = instance_nearest(x,y,obj_homable).y

if obj_Sonic.action == consPlayerAction4WayCanon
    instance_destroy()

