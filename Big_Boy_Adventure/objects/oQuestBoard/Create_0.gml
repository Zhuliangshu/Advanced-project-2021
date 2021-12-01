available_quests = {
	Quest_1: {
		Name: "Explore the Cave",
		Quest_id: "Quest_1",
		Desc: "Rumour has it that after a botched robbery a thief went to hide in the Cave to the South West. During the ordeal the thief was gravely wounded and has not been seen since, maybe someone can recover the stolen goods!",
		Objective: "Explore the cave to the South West and find out what happened to the thief.",
		Objective_room: Cave_a1,
		Objective_location: [70, 440],
		Objective_object: noone
	},
	Quest_2: {
		Name: "Haunted House",
		Quest_id: "Quest_2",
		Desc: "There is an abandoned house to the South East across the bridge. There's a creepy old graveyard out the back and I hear that a with lives there. Can somebody please find out more information!",
		Objective: "Investigate the abandoned house next to the graveyard to the South East.",
		Objective_room: Room_world1,
		Objective_location: [5700, 5700],
		Objective_object: noone
	},
	Quest_3: {
		Name: "Investigate the Camp",
		Quest_id: "Quest_3",
		Desc: "Help! We were camping in the woods to the North West when suddenly our camp was infested with sentient slime!",
		Objective: "Find the camp to the North West and clear any enemies.",
		Objective_room: Cave_a1,
		Objective_location: [0, 0],
		Objective_object: noone
	}
};
notice_open = false;
draw_interact_prompt = false;
current_quest = 0;
accept_quest = false;
