# GIVE COMMAND: give @p snowball[enchantment_glint_override=1b,custom_data={boulder_bomb:1},custom_name=[{"italic":false,"text":"B","color":"#29BAFF"},{"text":"o","color":"#52D4D9"},{"text":"u","color":"#56EE9E"},{"text":"l","color":"#63F58E"},{"text":"d","color":"#7FEF70"},{"text":"e","color":"#d6fa82"},{"text":"r ","color":"#EEE677"},{"text":"B","color":"#EECE7A"},{"text":"o","color":"#E6B770"},{"text":"m","color":"#DE8F65"},{"text":"b","color":"#D7805B"}]] 2


execute as @e[type=snowball,predicate=customs:boulderbomb/boulderbomb] run tag @s add boulderbomb


execute as @e[tag=boulderbomb] run data merge entity @s {Item:{id:"minecraft:deepslate",count:1b}}
execute at @e[tag=boulderbomb] run particle dust_color_transition{from_color:[0.792,0.796,0.871],scale:0.6,to_color:[0.478,0.467,0.569]} ~ ~.2 ~ 0 0 0 1 1 normal @a

execute as @e[tag=boulderbomb,tag=!bb_tick] at @s run summon marker ~ ~ ~ {Tags:["bb_marker"]}
execute as @e[tag=bb_marker] at @s run ride @s mount @e[tag=boulderbomb,sort=nearest,limit=1]

tag @e[tag=boulderbomb] add bb_tick

execute as @e[tag=bb_marker] at @s unless entity @e[tag=boulderbomb,tag=bb_tick,distance=..1] align xyz run place template customs:boulderbomb/boulder ~-2 ~6 ~-2
execute as @e[tag=bb_marker] at @s unless entity @e[tag=boulderbomb,tag=bb_tick,distance=..1] run playsound minecraft:block.deepslate.place block @a ~ ~ ~

execute as @e[tag=bb_marker] at @s unless entity @e[tag=boulderbomb,tag=bb_tick,distance=..1] run kill @s

execute as @e[tag=bg_block] at @s run summon falling_block ~ ~ ~ {DropItem:0b,Tags:["bb_fallingblock"],BlockState:{Name:"minecraft:deepslate"},Time:1}
kill @e[tag=bg_block]

scoreboard players add @e[tag=bb_fallingblock] tickdown 0
scoreboard players set @e[tag=bb_fallingblock,scores={tickdown=0}] tickdown 600
kill @e[tag=bb_fallingblock,scores={tickdown=0}]
scoreboard players remove @e[tag=bb_fallingblock] tickdown 1

# Remove plants under the boulder
execute at @e[tag=bb_fallingblock] if block ~ ~ ~ #minecraft:shrubbery run setblock ~ ~ ~ air destroy


execute at @e[tag=bb_fallingblock] run particle falling_dust{block_state:"minecraft:deepslate"} ~ ~ ~ 0.15 0.15 0.15 1 1 normal @a
execute at @e[tag=bb_fallingblock] run particle falling_dust{block_state:"minecraft:gray_wool"} ~ ~ ~ 0.15 0.15 0.15 1 1 normal @a

execute as @e[tag=bb_fallingblock,tag=!bb_damaged] at @s if entity @e[tag=!bb_fallingblock,distance=..1,limit=1] run damage @e[type=!item,tag=!bb_fallingblock,distance=..1,limit=1] 7.5 minecraft:falling_block
execute as @e[tag=bb_fallingblock] at @s if entity @e[tag=!bb_fallingblock,distance=..1,limit=1] run tag @s add bb_damaged
execute as @e[tag=bb_fallingblock,tag=!bb_sound] at @s unless block ~ ~-1 ~ air run playsound minecraft:block.deepslate.fall block @a ~ ~ ~
execute as @e[tag=bb_fallingblock] at @s unless block ~ ~-1 ~ air run tag @s add bb_sound


execute at @e[tag=bb_fallingblock] unless block ~ ~-1 ~ air unless block ~ ~-1 ~ #minecraft:shrubbery unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run fill ~ ~ ~ ~ ~ ~ deepslate replace air


schedule function customs:boulderbomb/loop 1