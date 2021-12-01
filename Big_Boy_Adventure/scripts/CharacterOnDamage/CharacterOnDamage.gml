// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CharacterOnDamage() 
{
	NewCharacter.currentHealth -= 1;
	image_index = idle_hurt;
	return 0;
}