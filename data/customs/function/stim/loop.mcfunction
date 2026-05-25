execute as @a[advancements={platoons:hidden/consumed_stim=true},scores={is_tickdownseconds=..0}] at @s run function customs:stim/use
tag @a remove stim_replaced

schedule function customs:stim/loop 1
advancement revoke @a only platoons:hidden/consumed_stim

scoreboard objectives add is_tickdown dummy
scoreboard objectives add is_tickdownseconds dummy

scoreboard players remove @a is_tickdown 1
scoreboard players add @a is_tickdownseconds 0

scoreboard players remove @a[scores={is_tickdownseconds=1..,is_tickdown=..0}] is_tickdownseconds 1
scoreboard players set @a[scores={is_tickdownseconds=1..,is_tickdown=..0}] is_tickdown 20
tag @a[scores={is_tickdownseconds=1..}] add nocoords
execute as @a[tag=!frenzied,scores={is_tickdownseconds=1..,sc_tickdownseconds=..0}] run title @s actionbar [{"text":"[","color":"#e65cb8"},{"score":{"name":"@s","objective":"is_tickdownseconds"},"color":"#e65cb8"},{"text":"] ","color":"#e65cb8"},{"score":{"name":"@s","objective":"x"},"color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"y"},"color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"z"},"color":"gray"}]
execute as @a[tag=!frenzied,scores={is_tickdownseconds=1..,sc_tickdownseconds=1..}] run title @s actionbar [{"text":"[","color":"#24b2bf"},{"score":{"name":"@s","objective":"sc_tickdownseconds"},"color":"#24b2bf"},{"text":"] ","color":"#24b2bf"},{"text":"[","color":"#e65cb8"},{"score":{"name":"@s","objective":"is_tickdownseconds"},"color":"#e65cb8"},{"text":"] ","color":"#e65cb8"},{"score":{"name":"@s","objective":"x"},"color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"y"},"color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"z"},"color":"gray"}]
execute as @a[tag=!frenzied,scores={is_tickdownseconds=..0,sc_tickdownseconds=1..}] run title @s actionbar [{"text":"[","color":"#24b2bf"},{"score":{"name":"@s","objective":"sc_tickdownseconds"},"color":"#24b2bf"},{"text":"] ","color":"#24b2bf"},{"score":{"name":"@s","objective":"x"},"color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"y"},"color":"gray"},{"text":" "},{"score":{"name":"@s","objective":"z"},"color":"gray"}]


tag @a[scores={is_tickdownseconds=..0,sc_tickdownseconds=..0}] remove nocoords

#give @p minecraft:dragon_breath[enchantment_glint_override=1b,custom_name='{"text":"Instant Stimulant","italic":false}',max_stack_size=1,custom_data={stim:1b},food={nutrition:0,saturation:0.0,can_always_eat:true,eat_seconds:1000000}] 1