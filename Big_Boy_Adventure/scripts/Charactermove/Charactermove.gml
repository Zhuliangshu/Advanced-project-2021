function character(){
	
if(!m_isAttacking && !m_isInSkill){
if keyboard_check(vk_left)
{
    x = x - 4;
    sprite_index = walk_left;
   // image_xscale = 1;
   m_playerDirection = PlayerDirection.LEFT
}
else if keyboard_check(vk_right)
{
    x = x + 4;
    sprite_index = walk_right;    
    m_playerDirection = PlayerDirection.RIGHT
}
else if keyboard_check(vk_up)
{
   y = y - 4;
    sprite_index = walk_up; 
	m_playerDirection = PlayerDirection.UP
}
else if keyboard_check(vk_down)
{
    y = y + 4;
    sprite_index = walk_down;
	m_playerDirection = PlayerDirection.DOWN
}
else
{
   sprite_index = idle_down;
   m_playerDirection = PlayerDirection.DOWN
   }


if keyboard_check(vk_space){
	m_isAttacking = true;
  switch(m_playerDirection)
  {
  case PlayerDirection.UP:
    sprite_index = atk_up;
    break;
  case PlayerDirection.DOWN:
    sprite_index = atk_down;
    break;
  case PlayerDirection.LEFT:
    sprite_index = atk_left;
    break;
  case PlayerDirection.RIGHT:
    sprite_index = atk_right;
    break;
  }
  image_index = 0;
}
//else if keyboard_check(X){
	//m_isInSkill = true;
   // sprite_index = attack01;
   // image_index = 0;
//}
}
}