if instance_exists(NewCharacter) {
	if distance_to_object(NewCharacter) < 120 {
		draw_interact_prompt = true;
		if keyboard_check_pressed(ord("E")) {
			notice_open = true;
		}
	} else {
		draw_interact_prompt = false;
		notice_open = false;
	}
}

if notice_open {
	var viewx = camera_get_view_x(view_camera[0]);
	var viewy = camera_get_view_y(view_camera[0]);
	var xx = camera_get_view_width(view_camera[0])/2;
	var yy = camera_get_view_height(view_camera[0])/2;
	
	var keys = variable_struct_get_names(available_items);
	if array_length(keys) > 0 {
		if !instance_exists(button_buyItem) {
			instance_create_layer(viewx+300, viewy+500, "Instances", button_buyItem)
		}
	}
	

} else {
	with par_questButton {
		instance_destroy(self);
	}
}

if buy_item {
	var keys = variable_struct_get_names(available_items);
	var itemName = keys[current_item];
	var item = variable_struct_get(available_items, itemName);
	var cost = item.Cost;
	buy_item = false;
	with NewCharacter {
		gold -= cost;
	}
	
	draw_interact_prompt = false;
	notice_open = false;
}

if keyboard_check(vk_escape) {
	draw_interact_prompt = false;
	notice_open = false;
}