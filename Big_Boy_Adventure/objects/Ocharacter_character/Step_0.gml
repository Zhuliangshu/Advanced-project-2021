if quest_complete {
	quest_complete = false;
	var text = instance_create_layer(x, y, "Instances", ui_fct);
	text.text = "QUEST COMPLETE";
	text.my_x = x;
	text.my_y = y;
	show_debug_message("Quest complete");
	variable_struct_remove(my_quests, current_quest_name);
	current_quest_name = "";
}

if current_quest_name != "" {
	var myQuest = variable_struct_get(my_quests, current_quest_name);
	if is_struct(myQuest)
	if !instance_exists(myQuest.Objective_object) {
		if room == myQuest.Objective_room {
			var q = instance_create_layer(myQuest.Objective_location[0], myQuest.Objective_location[1], "Instances", oQuestObjective);
			q.x = myQuest.Objective_location[0];
			q.y = myQuest.Objective_location[1];
			myQuest.Objective_object = q;
			show_debug_message("Quest objective created");
			q.quest_name = myQuest.Name;
		}
	}
}