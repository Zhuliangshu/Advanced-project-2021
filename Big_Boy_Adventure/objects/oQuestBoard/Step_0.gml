if instance_exists(Ocharacter_character) {
	if distance_to_object(Ocharacter_character) < 120 {
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
	
	if !instance_exists(button_acceptQuest) {
		instance_create_layer(viewx+300, viewy+500, "Instances_1", button_acceptQuest)
	}
	
	if mouse_check_button(mb_left) { 
		var accept = instance_nearest(viewx+xx, viewy+yy, button_acceptQuest);
		var dist = point_distance(mouse_x, mouse_y, viewx+xx, viewy+yy+90);
		if dist <= 48 {
			accept_quest = true;
		}
	}
	

} else {
	with par_questButton {
		instance_destroy(self);
	}
}

if accept_quest {
	var keys = variable_struct_get_names(available_quests);
	var questName = keys[current_quest];
	var quest = variable_struct_get(available_quests, questName);
	accept_quest = false;
	with Ocharacter_character {
		variable_struct_set(my_quests, quest.Name, quest);
	}
	variable_struct_remove(available_quests, quest.Name);
	draw_interact_prompt = false;
	notice_open = false;
}