var obj_type = choose(NewMonster,oBat, oGoblin, oGost, oSlime);
instance_create_layer(NewCharacter.x + 250, NewCharacter.y+250, layer, obj_type);