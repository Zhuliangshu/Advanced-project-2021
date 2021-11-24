enum ENEMYSTATE{
    ENEMY_FOLLOW,    
    ENEMY_DASH,    
    ENEMY_ATTACK,    
    ENEMY_RETREAT    
}
m_enemyState = ENEMYSTATE.ENEMY_FOLLOW;  

if(m_enemyState == ENEMYSTATE.ENEMY_FOLLOW){
    EnemyUpdateFollow();
}
else if(m_enemyState == ENEMYSTATE.ENEMY_DASH){
    EnemyUpdateDash();
}
else if(m_enemyState == ENEMYSTATE.ENEMY_ATTACK){
    EnemyUpdateAttack();
}
else if(m_enemyState == ENEMYSTATE.ENEMY_RETREAT){
    EnemyUpdateRetreat();
} 


m_isAttacking = false;
m_isInSkill = false;
//Enemy health
m_hp = 10;
m_isDead = false;

//Enemy AI
m_dashDistance = 200;
m_dashDelta = 40;
m_dashTargetX = 0;
m_dashTargetY = 0;
//m_attachedHitbox = instance_create_depth(x,y, 0 ,Obj_hitbox);
//m_attachedHitbox.m_attachedParent = id;