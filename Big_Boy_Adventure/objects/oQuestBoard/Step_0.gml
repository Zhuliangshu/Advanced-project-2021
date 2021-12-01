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
	
	var keys = variable_struct_get_names(available_quests);
	if array_length(keys) > 0 {
		if !instance_exists(button_acceptQuest) {
			instance_create_layer(viewx+300, viewy+500, "Instances_1", button_acceptQuest)
		}
	}
	if mouse_check_button(mb_left) { 
		var accept = instance_nearest(viewx+xx, viewy+yy, button_acceptQuest);
		var dist = point_distance(mouse_x, mouse_y, viewx+xx, viewy+yy+90);
		if dist <= 48 {
			if array_length(keys) > 0 { 
				accept_quest = true;
			} else {
				draw_interact_prompt = false;
				notice_open = false;
			}
		} else {
			draw_interact_prompt = false;
			notice_open = false;
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
	with NewCharacter {
		variable_struct_set(my_quests, quest.Name, quest);
	}
	variable_struct_remove(available_quests, quest.Quest_id);
	draw_interact_prompt = false;
	notice_open = false;
}

if keyboard_check(vk_escape) {
	draw_interact_prompt = false;
	notice_open = false;
}