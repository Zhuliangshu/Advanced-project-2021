draw_self();

if draw_interact_prompt {
	var keys = variable_struct_get_names(available_quests);
	if array_length(keys) > 0 {
		draw_set_font(Font4);
		draw_set_halign(fa_center);
		draw_text(x, y+30, "Quest Available");
		draw_text(x, y+50, "Press 'E' to interact");
	} else {
		draw_set_font(Font4);
		draw_set_halign(fa_center);
		draw_text(x, y+30, "No Quests Available");
		draw_text(x, y+50, "Press 'E' to interact");
	}
			
}
