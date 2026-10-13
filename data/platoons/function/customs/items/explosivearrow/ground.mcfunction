# particle and creeper (the explosion)
particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 1 100 force
summon creeper ~ ~-50 ~ {CustomName:'{"text":"an Explosive Arrow"}',CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,NoAI:1b,ExplosionRadius:2b,Fuse:1,ignited:1b,Tags:["up50"]}
kill @s