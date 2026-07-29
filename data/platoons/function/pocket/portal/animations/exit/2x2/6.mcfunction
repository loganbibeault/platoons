execute at @n[type=minecraft:marker,tag=pocket_exit] run summon item_display ~ ~ ~ {Tags:["portalexitanim","6","new"],Glowing:1b,glow_color_override:6470888,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.75f,1.75f,1.75f]},item:{id:"minecraft:glass",count:1}}

schedule function platoons:pocket/portal/animations/exit/2x2/6a 1
schedule function platoons:pocket/portal/animations/exit/2x2/7 10

execute at @n[type=minecraft:marker,tag=pocket_exit] run playsound minecraft:ambient.warped_forest.mood ambient @a ~ ~ ~ 0.5 1