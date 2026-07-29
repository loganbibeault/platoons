execute at @e[tag=pocket_exit] at @a[distance=0..] run particle minecraft:block_marker{block_state:"minecraft:air"} ~ ~ ~ 5 5 5 1 10 normal
tag @e[tag=pocket_exit] add collapsing
execute if entity @e[tag=collapsing] run schedule function platoons:pocket/portal/collapse/begin 1

execute at @e[tag=pocket_exit] as @a[distance=0..] run damage @s 1 outside_border