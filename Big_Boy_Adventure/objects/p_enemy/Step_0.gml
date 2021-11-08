//execute state machine

if(!global.pause)
{
	if(enemyScript[state] != -1) script_execute(enemyScript[state]);
	
	depth = -bbox_bottom;


}