// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackEffectStep() 
{
    x = x + m_speedX;
    y = y + m_speedY;
	
	if (image_speed > 0)
	{
    if (image_index >= image_number - 1) instance_destroy();
	}
}