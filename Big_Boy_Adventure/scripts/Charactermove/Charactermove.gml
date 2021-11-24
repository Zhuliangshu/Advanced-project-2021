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
  m_fired = false;
  image_index = 0;
}


}

if(sprite_index == atk_up
|| sprite_index == atk_down
|| sprite_index == atk_left
|| sprite_index == atk_right){
    if(image_index > 2 && m_fired == false){
        var character_attack_effect = instance_create_layer(x,y,"Instances",Ocharacter_attack);
		var deltaX = 0;
		var deltaY = 0;
		
		switch(m_playerDirection){
        case PlayerDirection.UP:
          character_attack_effect.m_speedY = -1;
		  character_attack_effect.image_angle = 180;
		  deltaY = 10;
		  deltaX = 60;
          break;
		  
        case PlayerDirection.DOWN:
          character_attack_effect.m_speedY = 1;
		  character_attack_effect.image_angle = 30
		  deltaY = 50;
          break;
		  
        case PlayerDirection.LEFT:
          character_attack_effect.m_speedX = -1;
		  character_attack_effect.image_angle = 270;
		  deltaX = 20;
		  deltaY = 4;
          break;
		  
        case PlayerDirection.RIGHT:
          character_attack_effect.m_speedX = 1;
		  character_attack_effect.image_angle = 90;
		  deltaX = 20;
		  deltaY = 50;
          break;
        } 
		character_attack_effect.x += deltaX;
		character_attack_effect.y += deltaY;
        m_fired = true;
    }
//else if keyboard_check(X){
	//m_isInSkill = true;
   // sprite_index = attack01;
   // image_index = 0;
//}
}
}