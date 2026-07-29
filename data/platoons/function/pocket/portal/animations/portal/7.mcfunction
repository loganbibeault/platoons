execute at @n[type=minecraft:interaction,tag=keyhole_open] run summon item_display ~ ~2.5 ~0.4 {Tags:["portalanim","7","new"],Glowing:1b,glow_color_override:5933307,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.6f,2.6f,2.6f]},item:{id:"minecraft:glass_pane",count:1}}

schedule function platoons:pocket/portal/animations/portal/7a 1

# loop if portal still open
execute if entity @e[type=interaction,tag=keyhole_open] run schedule function platoons:pocket/portal/animations/portal/0 10

execute at @n[type=minecraft:interaction,tag=keyhole_open] run playsound minecraft:ambient.warped_forest.mood ambient @a ~ ~ ~ 0.5 1