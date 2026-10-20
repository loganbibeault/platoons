# spawn frost blocks
execute at @s run summon minecraft:marker ~ ~-1 ~ {Tags:["frostblock_new","frostblock"]}
execute at @s positioned ~ ~-1 ~ run scoreboard players set @e[tag=frostblock,distance=0..1] fb_tickdown 300

# crouching
execute as @s[scores={fb_sneak=1}] at @s run execute at @e[tag=frostblock,distance=0..1.5] run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 air replace #platoons:customs/frostflyer
execute as @s[scores={fb_sneak=1}] at @s run kill @e[tag=frostblock,distance=0..1.5]
execute as @s[scores={fb_sneak=1}] at @s run summon minecraft:marker ~ ~-2 ~ {Tags:["frostblock_new","frostblock"]}
execute as @s[scores={fb_sneak=1}] at @s run fill ~.5 ~-1 ~.5 ~-.5 ~-1 ~-.5 air replace #platoons:customs/frostflyer
scoreboard players set @s fb_sneak 0

# particles
particle minecraft:snowflake ~ ~ ~ .5 .2 .5 .1 1
particle minecraft:snowflake ~ ~1 ~ .2 .2 .2 .2 3

# timer
execute as @s[scores={ff_tickdown=..0}] run scoreboard players remove @s ff_tickdownseconds 1
execute as @s[scores={ff_tickdownseconds=1..}] if score @s ff_tickdown matches ..0 run scoreboard players set @s ff_tickdown 20
execute as @s[scores={ff_tickdown=20}] run title @s actionbar [{"text":"FROST FRENZY: ","color":"#7EB4CC"},{"color":"#FFAA00","bold":false,"score":{"name":"@s","objective":"ff_tickdownseconds"}}]
execute as @s[scores={ff_tickdown=10}] run title @s actionbar [{"text":"FROST FRENZY: ","color":"#B88BD6"},{"color":"#FFAA00","bold":false,"score":{"name":"@s","objective":"ff_tickdownseconds"}}]
scoreboard players remove @s ff_tickdown 1

execute as @s[scores={ff_tickdown=..0,ff_tickdownseconds=..0}] at @s run function platoons:customs/items/frostflyer/end
