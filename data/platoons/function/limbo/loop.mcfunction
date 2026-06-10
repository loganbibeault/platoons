# safety net, kills any items in limbo
execute in platoons:limbo run kill @e[distance=0..,type=item]

# runs effects every tick
execute in platoons:limbo run execute as @a[distance=0..] run function platoons:limbo/limboeffects

# starting respawn timer of 2 min
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run scoreboard players set @s limbotimer_m 2
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run scoreboard players set @s limbotimer_s 0
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run scoreboard players set @s limbotimer 20

# tp to limbo
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run execute in platoons:limbo run spreadplayers 0 0 0 30 false @s
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run execute in platoons:limbo run clear @s
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run execute in platoons:limbo run effect give @s slow_falling infinite 1 true

# timer

# adds nothing to score just so it will display as 0 for visible text (respawn timer)
scoreboard players add @a limbotimer_s 0
scoreboard players add @a limbotimer_m 0

# removes 1 from limbo timer every tick, when it hits 0 it will remove 1 from seconds and reset to 20
scoreboard players remove @a limbotimer 1
execute as @a if score @s limbotimer matches 0 run scoreboard players remove @s limbotimer_s 1
execute as @a if score @s limbotimer matches 0 run scoreboard players set @s limbotimer 20

# when seconds hits -1 it loops back to 59 before it can display as -1, also removes 1 from minutes
execute as @a if score @s limbotimer_s matches -1 run scoreboard players remove @s limbotimer_m 1
execute as @a if score @s limbotimer_s matches -1 run scoreboard players set @s limbotimer_s 59

# tunes
execute in platoons:limbo run execute as @e[type=player,distance=0..,tag=isdead,tag=!limbotunes] at @s run stopsound @s master minecraft:music.overworld.swamp
execute in platoons:limbo run execute as @e[type=player,distance=0..,tag=isdead,tag=!limbotunes] at @s run playsound minecraft:music.overworld.swamp master @s ~ ~ ~ 0.5 0.8
execute in platoons:limbo run execute as @e[type=player,distance=0..,tag=isdead,tag=!limbotunes] run tag @s add limbotunes

# runs leave function when timers out
execute in platoons:limbo run execute as @a[distance=0..,tag=isdead,scores={limbotimer_m=0,limbotimer_s=0}] run function platoons:limbo/limboleave

# particles
execute in platoons:limbo run execute as @a[distance=0..,scores={y=..0}] at @s run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
execute in platoons:limbo run execute as @a[distance=0..,scores={y=..0}] at @s run particle minecraft:sonic_boom ~ 130 ~ 0 0 0 1 1 force
execute in platoons:limbo run execute as @a[distance=0..,scores={y=..0}] at @s run tp @s ~ 129 ~
execute in platoons:limbo run execute as @a[distance=0..,scores={y=..0}] at @s run effect give @s slow_falling infinite 1 true

# clear tp slow falling
execute in platoons:limbo run execute as @a[distance=0..] at @s unless block ~ ~-1 ~ air run effect clear @s slow_falling

# overworld cleanup
execute in overworld as @a[tag=limboleft,distance=0..] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1
title @a[tag=limboleft] actionbar {"text":""}
execute in overworld as @a[tag=limboleft,distance=0..] run tag @s remove limboleft
execute in minecraft:overworld run clear @a[distance=0..] minecraft:gray_stained_glass[custom_name='{"text":"Limbo Voxel","italic":false,"color":"gray"}'] 1

# post-limbo spirit timer (aqua names)
scoreboard players set @a[tag=isdead] spirittimer 1200
scoreboard players remove @a spirittimer 1

team join nospirit @a[scores={spirittimer=1..,Kills=..0}]
team join Tier0 @a[scores={spirittimer=..0},team=nospirit]
