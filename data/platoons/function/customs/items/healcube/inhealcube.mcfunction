execute as @s[scores={absorptionamount=..19}] at @s run particle minecraft:wax_off ~ ~1 ~ 0.2 0.2 0.2 2 1
execute store result score @s absorptionamount run data get entity @s AbsorptionAmount

effect clear @s absorption

execute as @s[scores={tickhealcube=0,absorptionamount=..19}] at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 0.749154
execute as @s[scores={tickhealcube=37,absorptionamount=..19}] at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 0.840896
execute as @s[scores={tickhealcube=75,absorptionamount=..19}] at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
execute as @s[scores={tickhealcube=112,absorptionamount=..19}] at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.122462
execute as @s[scores={tickhealcube=150,absorptionamount=..19}] at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.259921
execute as @s[scores={tickhealcube=187,absorptionamount=..19}] at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.498307
execute as @s[scores={tickhealcube=225,absorptionamount=..19}] at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.681793
execute as @s[scores={tickhealcube=262,absorptionamount=..19}] at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 2
execute as @s[scores={tickhealcube=299,absorptionamount=16..19}] at @s run playsound minecraft:block.trial_spawner.eject_item player @a ~ ~ ~ 1 1.88
execute as @s[scores={tickhealcube=299,absorptionamount=12..15}] at @s run playsound minecraft:block.trial_spawner.eject_item player @a ~ ~ ~ 1 1.68
execute as @s[scores={tickhealcube=299,absorptionamount=8..11}] at @s run playsound minecraft:block.trial_spawner.eject_item player @a ~ ~ ~ 1 1.6
execute as @s[scores={tickhealcube=299,absorptionamount=4..7}] at @s run playsound minecraft:block.trial_spawner.eject_item player @a ~ ~ ~ 1 1.4
execute as @s[scores={tickhealcube=299,absorptionamount=0..3}] at @s run playsound minecraft:block.trial_spawner.eject_item player @a ~ ~ ~ 1 1.26



effect give @s[scores={absorptionamount=17..}] absorption 120 4
effect give @s[scores={absorptionamount=13..16}] absorption 120 3
effect give @s[scores={absorptionamount=9..12}] absorption 120 2
effect give @s[scores={absorptionamount=5..8}] absorption 120 1
effect give @s[scores={absorptionamount=1..4}] absorption 120 0