execute as @e[type=item_display,tag=supplydrop] at @s unless block ~ ~-1 ~ #platoons:supplydrop run function platoons:supplydrop/land
execute as @e[type=item_display,tag=supplydrop] at @s run function platoons:supplydrop/falling

waypoint modify @n[type=armor_stand,tag=supplydropwaypoint] color aqua