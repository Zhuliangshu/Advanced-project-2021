if notice_open {
	draw_set_halign(fa_center);
	var xx = camera_get_view_width(view_camera[0]);
	var yy = camera_get_view_height(view_camera[0])-100;
	draw_sprite(spr_questMenu, -1, xx, yy);
	
	var keys = variable_struct_get_names(available_quests);
	if array_length(keys) > 0 {
		var questName = keys[current_quest];
		var quest = variable_struct_get(available_quests, questName);
	
		if instance_exists(button_acceptQuest) {
			with button_acceptQuest {
				draw_set_halign(fa_center);
				x = xx;
				y = yy+180;
				draw_sprite(sprite_index, -1, x, y);
				
			}
		}
	
		if is_struct(quest) {
			draw_set_font(Font2);
			draw_set_color(c_black);
			draw_text(xx, yy-200, quest.Name);
			draw_text_ext(xx, yy-140, quest.Desc, 26, 600);
			draw_text_ext(xx, yy+65, "Objective", 26, 600);
			draw_text_ext(xx, yy+90, quest.Objective, 24, 600);
		}
	} else {
		draw_text(xx, yy-200, "No Quests Available!");
	}
	draw_set_font(fontTbyDefault);
	draw_set_color(c_white);
}