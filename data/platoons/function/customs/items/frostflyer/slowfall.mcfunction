effect give @s[tag=!ff_preslowfall] slow_falling 1 0 true
effect give @s[tag=ff_preslowfall] slow_falling 1 0 false
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0 1 force

execute unless block ~ ~-1 ~ #platoons:landing unless block ~ ~-1 ~ #platoons:customs/frostflyer run tag @s remove ff_slowfall