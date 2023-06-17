scr_initenemy();
scr_pizzaface_p3_init_sounds();

scr_pizzaface_p3_init_attack(0);
scr_pizzaface_p3_add_attack(0, pizzaface_p3_attacks.jump, 40);
scr_pizzaface_p3_add_attack(0, pizzaface_p3_attacks.punch, 0);
scr_pizzaface_p3_add_attack(0, pizzaface_p3_attacks.laugh, 100);

scr_pizzaface_p3_init_attack(1);
scr_pizzaface_p3_add_attack(1, pizzaface_p3_attacks.jump, 38);
scr_pizzaface_p3_add_attack(1, pizzaface_p3_attacks.swing, 0);
scr_pizzaface_p3_add_attack(1, pizzaface_p3_attacks.laugh, 80);

scr_pizzaface_p3_init_attack(2);
scr_pizzaface_p3_add_attack(2, pizzaface_p3_attacks.jump, 36);
scr_pizzaface_p3_add_attack(2, pizzaface_p3_attacks.stomp, 0);
scr_pizzaface_p3_add_attack(2, pizzaface_p3_attacks.laugh, 70);

scr_pizzaface_p3_init_attack(3);
scr_pizzaface_p3_add_attack(3, pizzaface_p3_attacks.jump, 34);
scr_pizzaface_p3_add_attack(3, pizzaface_p3_attacks.punch, 0);
scr_pizzaface_p3_add_attack(3, pizzaface_p3_attacks.swing, 0);
scr_pizzaface_p3_add_attack(3, pizzaface_p3_attacks.laugh, 60);

scr_pizzaface_p3_init_attack(4);
scr_pizzaface_p3_add_attack(4, pizzaface_p3_attacks.jump, 32);
scr_pizzaface_p3_add_attack(4, pizzaface_p3_attacks.stomp, 0);
scr_pizzaface_p3_add_attack(4, pizzaface_p3_attacks.punch, 0);
scr_pizzaface_p3_add_attack(4, pizzaface_p3_attacks.laugh, 50);

scr_pizzaface_p3_init_attack(5);
scr_pizzaface_p3_add_attack(5, pizzaface_p3_attacks.jump, 30);
scr_pizzaface_p3_add_attack(5, pizzaface_p3_attacks.punch, 0);
scr_pizzaface_p3_add_attack(5, pizzaface_p3_attacks.swing, 0);
scr_pizzaface_p3_add_attack(5, pizzaface_p3_attacks.stomp, 0);
scr_pizzaface_p3_add_attack(5, pizzaface_p3_attacks.laugh, 50);

scr_pizzaface_p3_init_attack(6);
scr_pizzaface_p3_add_attack(6, pizzaface_p3_attacks.jump, 30);
scr_pizzaface_p3_add_attack(6, pizzaface_p3_attacks.punch, 0);
scr_pizzaface_p3_add_attack(6, pizzaface_p3_attacks.swing, 0);
scr_pizzaface_p3_add_attack(6, pizzaface_p3_attacks.stomp, 0);
scr_pizzaface_p3_add_attack(6, pizzaface_p3_attacks.laugh, 100);

currentattack = 0;
pizzahead = true;
playerpowerup = true;
playerid = -4;
introstate = states.arenaintro;
lastattack = -1;
laugh = 0;
instance_destroy(obj_gustavograbbable);
instance_destroy(obj_viginoiseyspawner);
maxwalkspeed = 5;
walkspeed = floor(maxwalkspeed / 2);
walkaccel = 0.5;
walkdisx1 = 180;
walkdisx2 = 200;
attackpool = array_create(0);
vulnerable_buffer = 0;
parryable = false;
playerhit = 0;
introbuffer = 80;
important = true;
stompable = false;
shakestun = false;
elite = true;
maxhp = 6;
elitehit = maxhp;
maxsubhp = 3;
subhp = maxsubhp;
prevhp = elitehit;
turned = false;
bodyslam = false;
wastedhits = 0;
state = states.pizzaheadjump;
introbuffer = 80;
hitboxID = -4;
headID = -4;
attackspeed = 0;
destroyable = false;
phase = 1;
formed = true;
cooldown = 80;
idle_max = 120;
idle_timer = idle_max;
grav = 0.5;
hsp = 0;
vsp = 0;
stunned = 0;
alarm[0] = 150;
roaming = true;
collectdrop = 5;
flying = false;
straightthrow = false;
cigar = false;
cigarcreate = false;
stomped = false;
shot = false;
reset = false;
flash = false;
landspr = spr_pizzahead_phase3idle;
idlespr = spr_pizzahead_phase3idle;
fallspr = spr_pizzahead_phase3idle;
stunfallspr = spr_pizzahead_phase3stunned;
walkspr = spr_pizzahead_phase3idle;
turnspr = spr_pizzahead_phase3idle;
recoveryspr = spr_pizzahead_phase3idle;
grabbedspr = spr_pizzahead_phase3stunned;
scaredspr = spr_pizzahead_phase3idle;
ragespr = spr_pizzahead_phase3idle;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_pizzahead_phase3stunned;
important = false;
heavy = true;
paletteselect = 0;
spr_palette = palette_cheeseslime;
grabbedby = 0;
stuntouchbuffer = 0;
scaredbuffer = 0;
dir = 1;
woosh = false;
flickertime = 0;
touchedground = false;
