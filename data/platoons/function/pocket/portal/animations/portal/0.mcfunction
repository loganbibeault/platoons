# kills portal pieces if they exist too long
kill @e[type=item_display,tag=portalanim,scores={general=2..}]
scoreboard players add @e[type=item_display,tag=portalanim] general 1

execute at @n[type=minecraft:interaction,tag=keyhole_open] run summon item_display ~ ~2.5 ~0.4 {Tags:["portalanim","0","new"],Glowing:1b,glow_color_override:5530605,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.6f,2.6f,2.6f]},item:{id:"minecraft:glass_pane",count:1}}

schedule function platoons:pocket/portal/animations/portal/0a 1
schedule function platoons:pocket/portal/animations/portal/1 10

execute at @n[type=minecraft:interaction,tag=keyhole_open] run playsound minecraft:ambient.warped_forest.mood ambient @a ~ ~ ~ 0.5 1