draw_sprite_stretched
(   

 sInventory,
 0,
 x-6,
 y-6,
 12+rowLength*36,
 12+(((INVENTORY_SLOTS-1) div rowLength)+1)*36
)

for (var i = 0; i< INVENTORY_SLOTS; i += 1)
{
 var xx = x + (i mod rowLength)*36 + 2;
 var yy = y + (i div rowLength)*36 + 2;
 draw_sprite(sSlot,0,xx,yy)
 
 
  draw_sprite(sHealth,inventory[i],xx,yy);
  
 


}