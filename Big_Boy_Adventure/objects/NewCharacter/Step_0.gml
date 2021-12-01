/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61FAA6D6
/// @DnDArgument : "code" "Charactermove();$(13_10)character();$(13_10)$(13_10)if quest_complete {$(13_10)	quest_complete = false;$(13_10)	var text = instance_create_layer(x, y, "Instances", ui_fct);$(13_10)	var rr = quest_reward;$(13_10)	gold += quest_reward;$(13_10)	text.text = "Quest Complete. Gained "+string(rr)+" Gold!";$(13_10)	text.my_x = x;$(13_10)	text.my_y = y;$(13_10)	variable_struct_remove(my_quests, current_quest_name);$(13_10)	current_quest_name = "";$(13_10)	quest_reward = 0;$(13_10)}$(13_10)$(13_10)if current_quest_name != "" {$(13_10)	var myQuest = variable_struct_get(my_quests, current_quest_name);$(13_10)	if is_struct(myQuest)$(13_10)	if !instance_exists(myQuest.Objective_object) {$(13_10)		if room == myQuest.Objective_room {$(13_10)			var q = instance_create_layer(myQuest.Objective_location[0], myQuest.Objective_location[1], "Instances", oQuestObjective);$(13_10)			q.x = myQuest.Objective_location[0];$(13_10)			q.y = myQuest.Objective_location[1];$(13_10)			myQuest.Objective_object = q;$(13_10)			show_debug_message("Quest objective created");$(13_10)			q.quest_name = myQuest.Name;$(13_10)			q.reward = irandom_range(22, 27);$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if current_quest_name == "Investigate the Camp" {$(13_10)	if slimes_killed == 6 {$(13_10)		quest_complete = true;$(13_10)		quest_reward = irandom_range(22, 27);$(13_10)	}$(13_10)}$(13_10)"
Charactermove();
character();

if quest_complete {
	quest_complete = false;
	var text = instance_create_layer(x, y, "Instances", ui_fct);
	var rr = quest_reward;
	gold += quest_reward;
	text.text = "Quest Complete. Gained "+string(rr)+" Gold!";
	text.my_x = x;
	text.my_y = y;
	variable_struct_remove(my_quests, current_quest_name);
	current_quest_name = "";
	quest_reward = 0;
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
			q.reward = irandom_range(22, 27);
		}
	}
}

if current_quest_name == "Investigate the Camp" {
	if slimes_killed == 6 {
		quest_complete = true;
		quest_reward = irandom_range(22, 27);
	}
}
