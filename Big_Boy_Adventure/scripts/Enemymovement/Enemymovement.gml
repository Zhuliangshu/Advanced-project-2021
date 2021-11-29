function enemy(){

if(m_isDead)
    return 0;
    
  if(m_hp == 0){
    m_isDead = true;
    sprite_index = spr_slime2_die;
	instance_destroy();
    return 0;
   }	
   
if(!m_isAttacking && !m_isInSkill){

	var player = instance_find(NewCharacter, 0);
	var deltaX = player.x - x;
    var deltaY = player.y - y;
	var mySpeed = 0.5;
	

	if(deltaX > mySpeed){
        x += mySpeed;
    }
    else if(deltaX < -mySpeed){
        x -= mySpeed;
    }
    else{
        x += deltaX;
    }
    
    if(deltaY > mySpeed){
        y += mySpeed;
    }
    else if(deltaY < -mySpeed){
        y -= mySpeed;
    }
    else{
        y += deltaY;
    }
	
	if(deltaX > 0){
        image_xscale = -1;
		
    }
    else if(deltaX < 0){
        image_xscale =1;	
		
    }
   
	sprite_index = spr_slime2_move;
	if (distance_to_point(player.x, player.y) < m_dashDistance){
        m_enemyState= ENEMYSTATE.ENEMY_ATTACK;
		m_isAttacking = true;
        if(x < player.x){
            //m_dashTargetX = player.x - m_dashDelta;
			sprite_index = spr_slime2_attackfromright;
			
			image_index = 0;
			m_fired = false;
        }
        else{
            //m_dashTargetX = player.x + m_dashDelta;
			sprite_index = spr_slime2_attackfromright; 
			//image_xscale =1
			image_index = 0;
			m_fired = false;
        }
        //m_dashTargetY = player.y;
    }
	
	
}
}
  

