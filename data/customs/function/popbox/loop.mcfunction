scoreboard objectives add pb_glidesound dummy

execute as @e[type=shulker,tag=popbox] at @s run function customs:popbox/boxchecks
execute as @a[tag=pb_slowfall] at @s run function customs:popbox/slowfall

schedule function customs:popbox/loop 1