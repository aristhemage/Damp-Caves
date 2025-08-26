angle = 0;
x = room_width/2;
y = room_height/2;

move_spd = 4;

shoot_cooldown = 0;
shoot_cooldown_int = 90;

xp_range = 64;

bubble = {
	unlocked: true,
    spd: 4,
    life: 30,
    pierce: 1,
	damage: 1
};

level = 1;
xp = 0;
max_xp = 5;
level_up = false;
level_up_setup = false;
total_perks = 3;

global.paused = false;

cutscene_active = false

perks = array_create(PERKS.COUNT,0)

limit[PERKS.BUBBLE_DAMAGE] = 8;
limit[PERKS.BUBBLE_LIFESPAN] = 5;
limit[PERKS.BUBBLE_PIERCE] = 5;
limit[PERKS.BUBBLE_SIZE] = 5;
limit[PERKS.BUBBLE_SPEED] = 10;
limit[PERKS.BUBBLE_STUN] = 10;
limit[PERKS.TOTAL_PERKS] = 3;
limit[PERKS.SHOOT_SPEED] = 5;