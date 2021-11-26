if(m_isAttacking && (sprite_index == atk_down
    || sprite_index == atk_left
    || sprite_index == atk_up)){
    m_isAttacking = false;
}
if(m_isInSkill && sprite_index == attack01){
    m_isInSkill = false;
}

if(m_character_isDead){
    image_speed = 0;
    image_index = image_number - 1;
}