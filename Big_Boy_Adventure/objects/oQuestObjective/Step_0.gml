if instance_exists(NewCharacter) {
	if distance_to_object(NewCharacter) <= 32 {
		var qn = quest_name;
		var rr = reward;
		with NewCharacter {
			if current_quest_name == qn {
				quest_complete = true;
				quest_reward = rr;
			}
		}
		instance_destroy(self);
	}
}