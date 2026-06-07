execute as @s[tag=!sp_connected] run particle dust_color_transition{from_color:[0.000,0.800,1.000],scale:1,to_color:[0.000,1.000,1.000]} ~ ~ ~ 0.5 0.5 0.5 0 30
execute as @s[tag=!sp_connected] run summon marker ~ ~ ~ {Tags:["summitpadexit","sp_tickset"]}
execute as @s[tag=!sp_connected] run summon block_display ~ ~-.5 ~ {Tags:["summitpaddeco","sp_tickset"],brightness:{sky:15,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.375f,0.125f,-.375f],scale:[.75f,.75f,.75f]},block_state:{Name:"minecraft:dark_prismarine"}}
execute as @s[tag=!sp_connected] run summon block_display ~ ~-.5 ~ {Tags:["summitpaddeco","sp_tickset"],brightness:{sky:15,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.525f,-.025f,-.525f],scale:[1.05f,1.05f,1.05f]},block_state:{Name:"minecraft:cyan_stained_glass"}}
execute as @s[tag=!sp_connected] run summon shulker ~ ~-1 ~ {Color:9b,Tags:["summitpadhitbox","sp_tickset"],Silent:1b,Invulnerable:1b,Glowing:0b,NoAI:1b,AttachFace:0b,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]}

scoreboard players set @e[tag=sp_tickset] sp_tickdown 2400
tag @e remove sp_tickset

tag @s add sp_connected
tag @s add sp_reconfirm
tag @s remove sp_spawning

execute as @s[tag=sp_connected] at @s run particle dust_color_transition{from_color:[0.000,0.800,1.000],scale:1,to_color:[0.000,1.000,1.000]} ~ ~1 ~ 0 0 0 0 1

execute at @e[tag=summitpadexit,distance=..1] run particle sculk_charge{roll:0} ~ ~.7 ~ .15 0 .15 0 1 normal @a

execute at @s positioned ~ ~.5 ~ run tag @e[tag=!summitpad,distance=...8,type=!item] add sp_warping
execute at @s positioned ~ ~.5 ~ run execute if entity @e[tag=!summitpad,distance=...8,tag=sp_warping] run tag @s add sp_used
execute at @s positioned ~ ~.5 ~ run execute if entity @e[tag=!summitpad,distance=...8,tag=sp_warping] run particle minecraft:sonic_boom ~ ~ ~
execute at @s run playsound minecraft:block.beacon.ambient block @a ~ ~ ~ 0.4 1

tp @e[tag=sp_warping] ~ ~.6 ~
execute at @e[tag=sp_warping] run playsound entity.player.teleport player @a

execute as @e[tag=summitpadexit] at @s if entity @e[tag=sp_warping,distance=..1] run particle minecraft:sonic_boom ~ ~1.5 ~
execute as @e[tag=summitpadexit] at @s if entity @e[tag=sp_warping,distance=..1] run kill @s

execute as @e[tag=summitpadhitbox] at @s positioned ~ ~1 ~ if entity @e[tag=sp_warping,distance=..1] run scoreboard players set @s tickdown 20

execute as @e[tag=summitpaddeco] at @s positioned ~ ~.5 ~ if entity @e[tag=sp_warping,distance=..1] run scoreboard players set @s tickdown 20


tag @e[distance=0..2] remove sp_warping


