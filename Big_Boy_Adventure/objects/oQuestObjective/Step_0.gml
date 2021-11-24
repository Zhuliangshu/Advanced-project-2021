if instance_exists(Ocharacter_character) {
	if distance_to_object(Ocharacter_character) <= 32 {
		var qn = quest_name;
		with Ocharacter_character {
			if current_quest_name == qn {
				quest_complete = true;
				show_debug_message("finished");
			}
		}
		instance_destroy(self);
	}
	
}