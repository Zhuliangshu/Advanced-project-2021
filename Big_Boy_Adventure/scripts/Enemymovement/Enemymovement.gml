function enemy(){
	
if(!m_isAttacking && !m_isInSkill){

var player = instance_find(NewCharacter, 0);

	var deltaX = player.x - x;
    var deltaY = player.y - y;
	var mySpeed = 2;
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
}
}