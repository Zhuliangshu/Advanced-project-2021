if(m_isAttacking && (sprite_index == spr_slime2_attackfromleft||sprite_index == spr_slime2_attackfromright ))
{
    m_isAttacking = false;
}

//if(m_isInSkill && sprite_index == attack01){
//    m_isInSkill = false;
//}
if(m_isDead){
    image_speed = 0;
    image_index = image_number - 1;
}