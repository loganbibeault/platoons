schedule function platoons:pocket/portal/animations/waypoint/5 3
execute as @e[type=block_display,tag=pocketbeacon] run data merge entity @s {block_state:{Name:"minecraft:cyan_stained_glass_pane"}}
waypoint modify @n[type=armor_stand,tag=pocketwaypoint] color hex 9CF885
execute at @e[tag=pocket_exit,type=marker] run waypoint modify @n[type=armor_stand,tag=pocketwaypoint] color hex 9CF885
