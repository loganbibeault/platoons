# adds nothing to score just so it will display as 0 rather than unset

scoreboard players add @a limbotimer_s 0
scoreboard players add @a limbotimer_m 0

execute as @a if score @s limbotimer_s matches -1 run scoreboard players remove @s limbotimer_m 1
execute as @a if score @s limbotimer_s matches -1 run scoreboard players set @s limbotimer_s 59



execute in minecraft:overworld run clear @a[distance=0..] minecraft:gray_stained_glass[custom_name='{"text":"Limbo Voxel","italic":false,"color":"gray"}'] 1
execute in platoons:limbo run kill @e[distance=0..,type=item]


execute in platoons:limbo run execute as @a[distance=0..] run function limbo:limboeffects


execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run scoreboard players set @s limbotimer_m 2
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run scoreboard players set @s limbotimer_s 0
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run execute in platoons:limbo run spreadplayers 0 0 0 30 false @s
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run execute in platoons:limbo run clear @s
execute in minecraft:overworld run execute as @e[type=player,distance=0..,tag=isdead] run execute in platoons:limbo run effect give @s slow_falling infinite 1 true

# TUNES
execute in platoons:limbo run execute as @e[type=player,distance=0..,tag=isdead,tag=!limbotunes] at @s run stopsound @s master minecraft:music.overworld.swamp
execute in platoons:limbo run execute as @e[type=player,distance=0..,tag=isdead,tag=!limbotunes] at @s run playsound minecraft:music.overworld.swamp master @s ~ ~ ~ 0.5 0.8
execute in platoons:limbo run execute as @e[type=player,distance=0..,tag=isdead,tag=!limbotunes] run tag @s add limbotunes

# runs leave function when timers out
execute in platoons:limbo run execute as @a[distance=0..,tag=isdead,scores={limbotimer_m=0,limbotimer_s=0}] run function limbo:limboleave

execute in platoons:limbo run execute as @a[distance=0..,scores={y=..0}] at @s run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
execute in platoons:limbo run execute as @a[distance=0..,scores={y=..0}] at @s run particle minecraft:sonic_boom ~ 130 ~ 0 0 0 1 1 force
execute in platoons:limbo run execute as @a[distance=0..,scores={y=..0}] at @s run tp @s ~ 129 ~
execute in platoons:limbo run execute as @a[distance=0..,scores={y=..0}] at @s run effect give @s slow_falling infinite 1 true

execute in platoons:limbo run execute as @a[distance=0..] at @s unless block ~ ~-1 ~ air run effect clear @s slow_falling

execute in overworld as @a[tag=limboleft,distance=0..] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 1 1
title @a[tag=limboleft] actionbar {"text":""}
execute in overworld as @a[tag=limboleft,distance=0..] run tag @s remove limboleft

