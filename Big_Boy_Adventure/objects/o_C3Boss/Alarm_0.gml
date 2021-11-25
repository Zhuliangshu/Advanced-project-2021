/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C32B159
/// @DnDArgument : "code" "var player = instance_find(Ocharacter_character, 0);$(13_10)$(13_10)if(x>player.x&&y>player.y){$(13_10)	if(((x-player.x)*(x-player.x) + (y-player.y)*(y-player.y))<=10404){$(13_10)	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)	skeleton_animation_set(b_jump);$(13_10)	speed=1;$(13_10)	direction = newdir;$(13_10)	alarm[0]=60;$(13_10)	}else{$(13_10)		newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)		skeleton_animation_set(b_movement);$(13_10)		speed=1;$(13_10)		direction = newdir;$(13_10)		alarm[0]=60;$(13_10)	}$(13_10)}else if(x<player.x&&y>player.y){$(13_10)	if(((player.x-x)*(player.x-x) + (y-player.y)*(y-player.y))<=10404){$(13_10)	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)	skeleton_animation_set(b_jump);$(13_10)	speed=1;$(13_10)	direction = newdir;$(13_10)	alarm[0]=60;$(13_10)	}else{$(13_10)		newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)		skeleton_animation_set(b_movement);$(13_10)		speed=1;$(13_10)		direction = newdir;$(13_10)		alarm[0]=60;$(13_10)	}$(13_10)}else if(x>player.x&&y<player.y){$(13_10)	if(((x-player.x)*(x-player.x) + (player.y-y)*(player.y-y))<=10404){$(13_10)	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)	skeleton_animation_set(b_jump);$(13_10)	speed=1;$(13_10)	direction = newdir;$(13_10)	alarm[0]=60;$(13_10)	}else{$(13_10)		newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)		skeleton_animation_set(b_movement);$(13_10)		speed=1;$(13_10)		direction = newdir;$(13_10)		alarm[0]=60;$(13_10)	}$(13_10)}else if(x<player.x&&y<player.y){$(13_10)	if(((player.x-x)*(player.x-x) + (player.y-y)*(player.y-y))<=10404){$(13_10)	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)	skeleton_animation_set(b_jump);$(13_10)	speed=1;$(13_10)	direction = newdir;$(13_10)	alarm[0]=60;$(13_10)	}else{$(13_10)		newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)		skeleton_animation_set(b_movement);$(13_10)		speed=1;$(13_10)		direction = newdir;$(13_10)		alarm[0]=60;$(13_10)	}$(13_10)}else{$(13_10)	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);$(13_10)		skeleton_animation_set(b_movement);$(13_10)		speed=1;$(13_10)		direction = newdir;$(13_10)		alarm[0]=60;$(13_10)}$(13_10)	$(13_10)	"
var player = instance_find(Ocharacter_character, 0);

if(x>player.x&&y>player.y){
	if(((x-player.x)*(x-player.x) + (y-player.y)*(y-player.y))<=10404){
	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
	skeleton_animation_set(b_jump);
	speed=1;
	direction = newdir;
	alarm[0]=60;
	}else{
		newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
		skeleton_animation_set(b_movement);
		speed=1;
		direction = newdir;
		alarm[0]=60;
	}
}else if(x<player.x&&y>player.y){
	if(((player.x-x)*(player.x-x) + (y-player.y)*(y-player.y))<=10404){
	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
	skeleton_animation_set(b_jump);
	speed=1;
	direction = newdir;
	alarm[0]=60;
	}else{
		newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
		skeleton_animation_set(b_movement);
		speed=1;
		direction = newdir;
		alarm[0]=60;
	}
}else if(x>player.x&&y<player.y){
	if(((x-player.x)*(x-player.x) + (player.y-y)*(player.y-y))<=10404){
	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
	skeleton_animation_set(b_jump);
	speed=1;
	direction = newdir;
	alarm[0]=60;
	}else{
		newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
		skeleton_animation_set(b_movement);
		speed=1;
		direction = newdir;
		alarm[0]=60;
	}
}else if(x<player.x&&y<player.y){
	if(((player.x-x)*(player.x-x) + (player.y-y)*(player.y-y))<=10404){
	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
	skeleton_animation_set(b_jump);
	speed=1;
	direction = newdir;
	alarm[0]=60;
	}else{
		newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
		skeleton_animation_set(b_movement);
		speed=1;
		direction = newdir;
		alarm[0]=60;
	}
}else{
	newdir=point_direction(x,y,Ocharacter_character.x,Ocharacter_character.y);
		skeleton_animation_set(b_movement);
		speed=1;
		direction = newdir;
		alarm[0]=60;
}