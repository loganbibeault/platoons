scoreboard objectives add pb_glidesound dummy

execute as @e[type=shulker,tag=popbox] at @s run function platoons:customs/popbox/boxchecks
execute as @a[tag=pb_slowfall] at @s run function platoons:customs/popbox/slowfall

schedule function platoons:customs/popbox/loop 1