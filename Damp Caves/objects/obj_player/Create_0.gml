randomize();
angle = 0;
x = room_width/2;
y = room_height/2;

move_spd = 4;

shoot_cooldown = 0;
shoot_cooldown_int = 90;
auto_fire = false;





level = 1;
xp = 0;
max_xp = 5;
level_up = false;
level_up_setup = false;

hp = 5;
max_hp = 5;
regen_rate = 600;
invince_timer = 0;
// Number of perks set in step

global.paused = false;

cutscene_active = false

perks = array_create(PERKS.COUNT,0)

limit[PERKS.BUBBLE_DAMAGE] = 8;
limit[PERKS.BUBBLE_LIFESPAN] = 5;
limit[PERKS.BUBBLE_PIERCE] = 5;
limit[PERKS.BUBBLE_SIZE] = 5;
limit[PERKS.BUBBLE_SPEED] = 10;
limit[PERKS.BUBBLE_STUN] = 10;
limit[PERKS.TOTAL_PERKS] = 2;
limit[PERKS.SHOOT_SPEED] = 10;
limit[PERKS.EXP_PICKUP_RANGE] = 5;
limit[PERKS.SPOTLIGHT_RANGE] = 5;
limit[PERKS.HP_DROP] = 3;

points = 0;