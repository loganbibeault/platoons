# placing ice
execute at @s[scores={fb_tickdown=..1}] run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 air replace #platoons:customs/frostflyer
execute at @s[scores={fb_tickdown=100}] run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 minecraft:ice replace packed_ice
execute at @s[scores={fb_tickdown=200}] run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 minecraft:packed_ice replace blue_ice
execute at @s[scores={fb_tickdown=300}] run fill ~.5 ~ ~.5 ~-.5 ~ ~-.5 minecraft:blue_ice replace #platoons:customs/frostflyer

# particles and sounds
execute at @s[scores={fb_tickdown=..1}] align xyz run particle block{block_state:"minecraft:ice"} ~.5 ~.5 ~.5 .33 .33 .33 1 7 normal
execute at @s[scores={fb_tickdown=..1}] align xyz run playsound block.amethyst_block.break block @a ~ ~ ~ 0.5 0.5
scoreboard players remove @s fb_tickdown 1
kill @s[scores={fb_tickdown=..0}]