# particles, creeper, remove effect
particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 1 100 force
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
summon creeper ~ ~-50 ~ {CustomName:{"text":"an Explosive Arrow"},CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,NoAI:1b,ExplosionRadius:1b,Fuse:0,ignited:1b,Tags:["up50"]}
effect clear @s luck
tag @s remove gonnaexplode