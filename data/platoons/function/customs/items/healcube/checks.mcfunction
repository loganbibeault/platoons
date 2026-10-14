# item-specific objs
scoreboard objectives add tickhealcube dummy
scoreboard objectives add absorptionamount dummy

# spawn/animate the cube display and set score
execute as @e[type=marker,tag=healcube_new] at @s align xyz run tp @s ~ ~ ~
execute as @e[type=marker,tag=healcube_new] at @s if entity @e[tag=!healcube_new,tag=healcube,distance=0..2.1] run function platoons:customs/items/healcube/fail
execute as @e[type=marker,tag=healcube_new] at @s run function platoons:customs/items/healcube/place
execute at @e[type=marker,tag=healcube,scores={tickhealcube=3599}] run data merge entity @n[tag=healcube_display_new] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[-2.05f,-2.05f,-2.05f]}}
execute at @e[type=marker,tag=healcube,scores={tickhealcube=3599}] run tag @n[tag=healcube_display_new] remove healcube_display_new


# particles
execute if score #particles tickhealcube matches 1 at @e[tag=healcube] run function platoons:customs/items/healcube/particles/particles
execute if score #particles tickhealcube matches 10 at @e[tag=healcube] run function platoons:customs/items/healcube/particles/particles2
execute if score #particles tickhealcube matches 20 at @e[tag=healcube] run function platoons:customs/items/healcube/particles/particles
execute if score #particles tickhealcube matches 30 at @e[tag=healcube] run function platoons:customs/items/healcube/particles/particles2

# particle timer
scoreboard players remove #particles tickhealcube 1

# healcube lifespan
scoreboard players remove @e[tag=healcube] tickhealcube 1

# death
execute at @e[tag=healcube,scores={tickhealcube=6}] run data merge entity @n[tag=healcube_display] {start_interpolation:0,interpolation_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[0f,0f,0f]}}
execute at @e[tag=healcube,scores={tickhealcube=..0}] run kill @e[tag=healcube_display,distance=0..2]
kill @e[tag=healcube,scores={tickhealcube=..0}]

# particle timer reset
execute if score #particles tickhealcube matches ..0 run scoreboard players set #particles tickhealcube 40

execute at @e[tag=healcube] positioned ~-0.75 ~ ~-0.75 as @a[dx=0.5,dy=0,dz=0.5] run tag @s add inhealcube
execute as @a[tag=inhealcube] at @s run function platoons:customs/items/healcube/inhealcube

scoreboard players add @a[tag=inhealcube] tickhealcube 1
scoreboard players set @a[tag=!inhealcube] tickhealcube 0

effect give @a[tag=inhealcube,predicate=!platoons:customs/healcube/regen] regeneration 5 0 true

# grant next absorption level
effect give @a[scores={tickhealcube=300..,absorptionamount=16..19}] absorption 120 4
effect give @a[scores={tickhealcube=300..,absorptionamount=12..15}] absorption 120 3
effect give @a[scores={tickhealcube=300..,absorptionamount=8..11}] absorption 120 2
effect give @a[scores={tickhealcube=300..,absorptionamount=4..7}] absorption 120 1
effect give @a[scores={tickhealcube=300..,absorptionamount=0..3}] absorption 120 0

scoreboard players set @a[tag=inhealcube,scores={tickhealcube=300..}] tickhealcube 0

tag @a remove inhealcube
