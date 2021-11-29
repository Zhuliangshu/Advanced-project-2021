// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CharacterOnDamage() 
{
	draw_text_colour(935, 424, m_character_hp,c_red,c_red,c_red,c_red,1);
	m_character_hp -= 1;
	draw_text_colour(NewCharacter.x+50, NewCharacter.y, m_character_hp,c_red,c_red,c_red,c_red,1);
	image_index = idle_hurt;
}