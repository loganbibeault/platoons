# give @p ghast_tear[item_model="ice",consumable={consume_seconds:0,animation:"none",has_consume_particles:false,sound:"block.amethyst_block.resonate",on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:speed",amplifier:1,duration:600,show_particles:0b},{id:"minecraft:jump_boost",amplifier:1,duration:600,show_particles:0b}]}]},custom_data={frostflyer:1b},enchantment_glint_override=1b,custom_name=[{"italic":false,"text":"F","color":"#29BAFF"},{"text":"r","color":"#52D4D9"},{"text":"o","color":"#56EE9E"},{"text":"s","color":"#63F58E"},{"text":"t ","color":"#7FEF70"},{"text":"F","color":"#d6fa82"},{"text":"l","color":"#EEE677"},{"text":"y","color":"#EECE7A"},{"text":"e","color":"#E6B770"},{"text":"r","color":"#DE8F65"}]] 1

scoreboard objectives add fb_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add fb_tickdown dummy
scoreboard objectives add ff_tickdown dummy
scoreboard objectives add ff_tickdownseconds dummy

# flying
execute as @a[tag=frostguy] at @s run function platoons:customs/items/frostflyer/flying

# spawning frostblocks
scoreboard players set @e[type=marker,tag=frostblock_new] fb_tickdown 300
execute at @e[tag=frostblock,scores={fb_tickdown=295..},limit=9] unless entity @e[tag=!frostblock_new,tag=frostblock,distance=..0.25] run playsound block.amethyst_block.resonate block @a ~ ~ ~ 0.5 0.5
tag @e[type=marker,tag=frostblock_new] remove frostblock_new

# block checks
execute as @e[tag=frostblock] at @s run function platoons:customs/items/frostflyer/blockchecks

# slowfall
execute as @a[tag=ff_slowfall] at @s run function platoons:customs/items/frostflyer/slowfall


schedule function platoons:customs/items/frostflyer/loop 1