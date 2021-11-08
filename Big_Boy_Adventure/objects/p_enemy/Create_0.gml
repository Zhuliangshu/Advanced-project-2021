event_inherited();


state = ENEMYSTATES.idle;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
dir = 0;
timePassed = 0;
waitDuration = 60;
wait = 0


//enemy sprites
sprMove = goblin;

//enemy scripts
enemyScript[ENEMYSTATES.idle] = -1;
enemyScript[ENEMYSTATES.wander] = -1;
enemyScript[ENEMYSTATES.chase] = -1;
enemyScript[ENEMYSTATES.die] = -1;
enemyScript[ENEMYSTATES.attack] = -1;
enemyScript[ENEMYSTATES.hurt] = -1;

