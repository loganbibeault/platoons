scoreboard objectives add sp_tickdown dummy
#SPAWNING

tag @e[tag=newsummitpad] add sp_spawning
scoreboard players set @e[tag=newsummitpad] sp_tickdown 2400
execute as @e[tag=newsummitpad] at @s positioned ~ ~2 ~ run function customs:summitpad/check

tag @e[tag=newsummitpad] remove newsummitpad

execute as @e[tag=sp_connected] at @s positioned ~ ~2 ~ run function customs:summitpad/check

#DEATH
execute as @e[tag=summitpad,tag=sp_spawning] at @s run function customs:summitpad/destructdrop
execute as @e[tag=summitpad,tag=sp_used] at @s run function customs:summitpad/destruct
execute as @e[tag=summitpad,tag=!sp_reconfirm] at @s run function customs:summitpad/destruct

#GENERAL
execute as @e[tag=summitpad,tag=sp_connected] at @s run particle sculk_charge{roll:0} ~ ~.5 ~ .15 0 .15 0 1 normal @a


execute at @e[tag=summitpad] unless block ~ ~ ~ end_portal_frame run setblock ~ ~ ~ end_portal_frame

tag @e[tag=summitpad] remove sp_reconfirm

scoreboard players remove @e[tag=summitpad] sp_tickdown 1
scoreboard players remove @e[tag=summitpadexit] sp_tickdown 1
scoreboard players remove @e[tag=summitpaddeco] sp_tickdown 1
scoreboard players remove @e[tag=summitpadhitbox] sp_tickdown 1
tag @e[tag=summitpadhitbox,scores={sp_tickdown=0}] add sp_hitboxkill
execute at @e[tag=summitpadexit,scores={sp_tickdown=0}] run particle dust_color_transition{from_color:[0.000,0.800,1.000],scale:1,to_color:[0.000,1.000,1.000]} ~ ~ ~ 0.5 0.5 0.5 0 30
kill @e[tag=summitpadexit,scores={sp_tickdown=0}]
kill @e[tag=summitpaddeco,scores={sp_tickdown=0}]

scoreboard players remove @e[tag=summitpaddeco,scores={tickdown=2..}] tickdown 1
scoreboard players remove @e[tag=summitpadhitbox,scores={tickdown=2..}] tickdown 1
scoreboard players add @e[tag=summitpaddeco] tickdown 0

execute as @e[tag=summitpaddeco,scores={tickdown=1}] at @s positioned ~ ~1.5 ~ unless entity @e[type=!item,tag=!summitpadexit,tag=!summitpadhitbox,tag=!summitpaddeco,distance=..1] run kill @s
execute as @e[tag=summitpadhitbox,scores={tickdown=1}] at @s positioned ~ ~1.5 ~ unless entity @e[type=!item,tag=!summitpadexit,tag=!summitpadhitbox,tag=!summitpaddeco,distance=..1] run tp @s ~ -64 ~
execute as @e[tag=summitpadhitbox,scores={tickdown=1}] at @s positioned ~ ~1.5 ~ unless entity @e[type=!item,tag=!summitpadexit,tag=!summitpadhitbox,tag=!summitpaddeco,distance=..1] run kill @s

# AIR CHECK
execute at @e[tag=summitpadexit,predicate=!customs:summitpad/obstruct] run particle minecraft:dust_color_transition{from_color:[0.000,0.800,1.000],scale:1,to_color:[0.000,1.000,1.000]} ~ ~ ~ 0.5 0.5 0.5 0 30
kill @e[tag=summitpadexit,predicate=!customs:summitpad/obstruct]
kill @e[tag=summitpaddeco,predicate=!customs:summitpad/obstruct]
tag @e[tag=summitpadhitbox,predicate=!customs:summitpad/obstruct] add sp_hitboxkill

execute at @e[tag=summitpadexit,predicate=customs:summitpad/airhere] run particle dust_color_transition{from_color:[0.000,0.800,1.000],scale:1,to_color:[0.000,1.000,1.000]} ~ ~ ~ 0.5 0.5 0.5 0 30
kill @e[tag=summitpadexit,predicate=customs:summitpad/airhere]
kill @e[tag=summitpaddeco,predicate=customs:summitpad/airhere]
tag @e[tag=summitpadhitbox,predicate=customs:summitpad/airhere] add sp_hitboxkill

#HITBOX KILL
tp @e[tag=sp_hitboxkill] 0 -100 0
kill @e[tag=sp_hitboxkill]

schedule function customs:summitpad/loop 1