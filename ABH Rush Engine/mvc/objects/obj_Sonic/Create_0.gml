
mask = 16

character = consPlayerNameTails
if variable_global_exists("curr_character")
    character = global.curr_character
super = false

instance_create(0,0,obj_titlecard_new) //title card animation 

//creation position
if instance_exists(obj_checkpoint_controller) && variable_instance_exists(obj_checkpoint_controller, "checkpoint")
{
    if obj_checkpoint_controller.checkpoint
    {
        x = obj_checkpoint_controller.x_checkpoint_pos
        y = obj_checkpoint_controller.y_checkpoint_pos
    }
}
//essential objects

//instance_create(0,0,obj_HUD_ingame)
instance_create(x,y,obj_player_camera)
instance_create(x,y,obj_stagetime)
if !instance_exists(obj_stagestat_controller)
    instance_create(x,y,obj_stagestat_controller)

//local variables
hsp = 0;//horizonal speed
vsp = 0;//vertical speed

hspl = 15;//horizontal speed limit
hspm = 12;//horizontal speed normal
highhsp = 0;

vspl = 16;//vertical speed limit


jmp = -6.5;//jumping speed
sjmp = -4;//lowest jump
djmp = false; //variable for homing attack enabler
djmp2 = false; //variable for air dash 

acc = 0.125;//acceleration
dcc = 0.5;//deceleration

frc = 0.046875;//friction

grv = 0.21875;//gravity

ground = false;//checking if the character is on ground or not

acos = 1;//cosine angle
asin = 0;//sine angle

angle = 0;//angle of character
i_angle = 0; //image angle
action = consPlayerActionNormal;//checks what type of action is going on



//boost related variables
boostamount = 100;
boosting = false;
canBoost = true;


adrag = 0.96875; //air drag but not used
bfr = 0.023475; //ball friction
bdcc = 0.1484375;   //ball deceleration
sp = 0; //spindash
spot = 0;   //peelout (not used)

step = 0 //trail step

xdir = 1; //draw horizontal direction
xlayer = 0; //which layer to be collided

canMove = true
if instance_exists(obj_titlecard_new)
    canMove = false; //making Sonic able to move, used in title card animation for making Sonic still

canHit = true;  //making Sonic able to take damage from enemies
hitInvincible = 0 //a timer variable for post damage invincibility


canWallJump = true; //used for making able to wall jump
canFloat = false;   //used for making sonic able to run on water surface
canGrind = true;    //variable for making Sonic grind on rail
dead = false;

rings = 0;

//qte related varibles
qte_amount = 1;  
jumppanel = 1

//some other variables
footstep = false
underwater = false
zipline_speed = 0

snd_footstep1 = 0
snd_footstep2 = 0

ring_step = 60

stageClear = false

//sprite default variables

image_alpha = 1;
image_index = 0;
sprite_index = 0;
image_speed = 0;

draw_yPos = 0;

last_action = consPlayerActionNormal;
sprp = spr_Sonic_stand
frame = 0;
image_i = 0;

//custom alarm variables, I used them instead of actual alarms

alarm0 = 0
alarm1 = 0
alarm2 = 0
alarm3 = 0
alarm4 = 0

//input mode 
input_mode = 0  //0 means keyboard and 1 mean xbox controller

