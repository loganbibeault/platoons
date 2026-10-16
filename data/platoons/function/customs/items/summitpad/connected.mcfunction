# make sure there's always an end portal block
execute unless block ~ ~ ~ end_portal_frame run setblock ~ ~ ~ end_portal_frame

# active particles
particle sculk_charge{roll:0} ~ ~.5 ~ .15 0 .15 0 1 normal @a
playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 0.4 1

# keep checkin, now with particles
execute positioned ~ ~0.5 ~ as @e[distance=..0.8,type=!item,type=!marker] run tag @s add summitwarp
execute positioned ~ ~1 ~ run function platoons:customs/items/summitpad/check

