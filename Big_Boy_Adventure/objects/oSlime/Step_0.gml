if (state == states.idle){

	counter += 1;
	
	if(counter >= room_speed *3){
		var change = choose(0,1);
		switch(change){
			case 0: state = states.wander;
			case 1: state = 0;
			break
		}
	}
	if (collision_circle(x,y, 64, Ocharacter_character, false, false)){
		state = states.alert;
	}
	sprite_index = spr_slime_idle;
}

else if(state == states.wander){
	
	counter += 1;
	x += moveX;
	y += moveY;
	
	if (counter >= room_speed *3){
		var change = choose(0,1);
		switch(change){
			case 0: state = states.idle;
			case 1:
				my_dir = irandom_range(0, 359);
				moveX = lengthdir_x(spd, my_dir);
				moveY = lengthdir_y(spd, my_dir);
				counter = 0;
		}
		if (collision_circle(x,y, 64, Ocharacter_character, false, false)){
		state = states.alert;
	}
	sprite_index = spr_slime_walk;
	image_xscale = sign(movX);
	}


}

else if(state == states.alert){
	
	my_dir = point_direction(x,y, Ocharacter_character.x, Ocharacter_character.y)
	moveX = lengthdir_x(spd, my_dir);
	moveY = lengthdir_y(spd, my_dir);
	x += moveX;
	y += moveY;
	
	if (!collision_circle(x,y,64, Ocharacter_character, false, false)){
		state = states.idle;
	}
	if(collision_circle(x,y,32, Ocharacter_character, false, false)){
		state = states.attcak;
	}
	sprite_index = spr_slime_walk;
	image_xscale = sign(moveX);
	
}

else if(state == states.attcak){
	if(my_slash == noone){
		my_slash = instance_create_layer(
			x + image_xscale*16, y, "Instances", Ocharacter_Sword);
			my_slash. creator = id;
			my_slash.image_xscale = image_xscale;
			image_index = 0;
	}
	
	if(image_index> image_number-1){ state = states.alert;}
	
	sprite_index = spr_slime_walk;
}