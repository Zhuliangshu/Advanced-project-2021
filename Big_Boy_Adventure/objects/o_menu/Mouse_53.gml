if(position_meeting(mouse_x, mouse_y,self)){
	if(instance_exists(obj_menuItem)){
		with (Obj_menuItem){
			instance_destroy();
		}
	}else{
		var yIncrement = sprite_get_height(spr_menu);
		var yy = y + yIncrement -2;
		for(var i = 0; i < ds_list_size(myList);i++){
			var item = instance_create(x, yy, obj_menuItem);
			item.text = ds_list_find_value(myList, i);
			yy += yIncrement -2;
		}
	}
}
else{
	if(!position_meeting(mouse_x, mouse_y, obj_menuItem)){
		if(instance_exists(obj_menuItem)){
			with (obj_menuItem){
				instance_destroy();
			}
		}
	}
}