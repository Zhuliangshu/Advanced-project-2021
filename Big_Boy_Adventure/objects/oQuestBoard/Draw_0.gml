draw_self();
if draw_interact_prompt {
	draw_set_halign(fa_center);
	draw_text(x, y+30, "Quest Available");
	draw_text(x, y+50, "Press 'E' to interact");
}
