if notice_open {
	draw_set_halign(fa_center);
	var xx = camera_get_view_width(view_camera[0]);
	var yy = camera_get_view_height(view_camera[0]);
	draw_sprite(spr_questMenu, -1, xx, yy);
	
	var keys = variable_struct_get_names(available_items);
	if array_length(keys) > 0 {
		var itemName = keys[current_item];
		var item = variable_struct_get(available_items, itemName);
	
		if instance_exists(button_buyItem) {
			with button_buyItem {
				draw_set_halign(fa_center);
				x = xx;
				y = yy+180;
				draw_sprite(sprite_index, -1, x, y);
			}
		}
		if mouse_check_button(mb_left) { 
			var accept = instance_nearest(xx, yy+180, button_buyItem);
			var dist = point_distance(mouse_x, mouse_y, xx, yy+180);
			if dist <= 90 {
				if array_length(keys) > 0 { 
					buy_item = true;
				} else {
					draw_interact_prompt = false;
					notice_open = false;
				}
			} else {
				show_debug_message(dist)
				draw_interact_prompt = false;
				notice_open = false;
			}
		} 
	
	
		if is_struct(item) {
			draw_set_font(Font2);
			draw_set_color(c_black);
			draw_text(xx, yy-200, item.Name);
			draw_text_ext(xx, yy-140, item.Description, 26, 600);
			draw_sprite(item.Sprite, -1, xx, yy);
			draw_text_ext(xx, yy+65, "Cost "+string(item.Cost), 26, 600);
		}
	} else {
		draw_text(xx, yy-200, "No Items Available!");
	}
	draw_set_font(Font4);
	draw_set_color(c_white);
}