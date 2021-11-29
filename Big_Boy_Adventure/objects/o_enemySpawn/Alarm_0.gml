var obj_type = choose(NewMonster,oBat, oGoblin, oGost, oSlime);
instance_create_layer(NewCharacter.x + 200, NewCharacter.y+200, layer, obj_type);