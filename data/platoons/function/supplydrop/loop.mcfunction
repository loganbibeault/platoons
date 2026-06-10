execute as @e[type=armor_stand,tag=supplydrop] at @s unless block ~ ~-1 ~ #platoons:supplydrop run function platoons:supplydrop/land
execute as @e[type=armor_stand,tag=supplydrop] at @s run function platoons:supplydrop/falling
