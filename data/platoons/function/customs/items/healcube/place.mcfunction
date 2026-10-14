summon block_display ~0.95 ~1 ~1 {Tags:["healcube_display","healcube_display_new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[-1f,-1f,-1f]},block_state:{Name:"minecraft:honey_block"}}
scoreboard players set @s tickhealcube 3600
playsound block.honey_block.place block @a
tag @s remove healcube_new