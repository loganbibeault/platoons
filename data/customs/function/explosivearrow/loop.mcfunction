execute as @e[type=arrow,predicate=customs:explosivearrow/explosivearrow] run tag @s add explosivearrow

execute as @e[type=arrow,predicate=customs:explosivearrow/inground] run tag @s add inground

execute as @e[type=arrow,tag=!inground,tag=explosivearrow] at @s unless entity @a[distance=0..2] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute as @e[type=arrow,tag=!inground,tag=explosivearrow] at @s run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.2 10 force
execute as @e[type=arrow,tag=!inground,tag=explosivearrow] at @s run playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 0.3 1
execute as @e[limit=1,type=arrow,tag=inground,tag=explosivearrow] at @s run particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 1 100 force
execute as @e[predicate=customs:explosivearrow/effect] run tag @s add gonnaexplode
execute as @e[tag=gonnaexplode] at @s run particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 1 100 force
execute as @e[tag=gonnaexplode] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force

execute as @e[tag=gonnaexplode] at @s run summon creeper ~ ~-50 ~ {CustomName:'{"text":"an Explosive Arrow"}',CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b,Tags:["up50"]}
execute as @e[tag=gonnaexplode] run effect clear @s luck

execute as @e[limit=1,type=arrow,tag=inground,tag=explosivearrow] at @s unless entity @a[distance=0..40] run summon creeper ~ ~ ~ {CustomName:'{"text":"an Explosive Arrow"}',CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute as @e[limit=1,type=arrow,tag=inground,tag=explosivearrow] at @s unless entity @a[distance=0..40] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force

execute as @e[limit=1,type=arrow,tag=inground,tag=explosivearrow] at @s if entity @a[distance=0..40] run summon creeper ~ ~-50 ~ {CustomName:'{"text":"an Explosive Arrow"}',CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,NoAI:1b,ExplosionRadius:2b,Fuse:1,ignited:1b,Tags:["up50"]}
execute as @e[type=creeper,tag=up50] at @s run tp @s ~ ~50 ~

execute as @e[limit=1,type=arrow,tag=inground,tag=explosivearrow] run kill @s
execute as @e[predicate=!customs:explosivearrow/effect] run tag @s remove gonnaexplode

execute as @e[tag=explosivearrow] run data merge entity @s {damage:-0.1d}

schedule function customs:explosivearrow/loop 1