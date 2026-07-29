execute at @e[tag=pocket_exit] as @a[distance=0..] at @s run playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 1 2
execute at @e[tag=pocket_exit] run title @a[distance=0..] times 0 5 10
execute at @e[tag=pocket_exit] run title @a[distance=0..] title {"text":""}
execute at @e[tag=pocket_exit] run title @a[distance=0..] title {"text":"2","color":"#B88BD6"}
schedule function platoons:pocket/portal/collapse/sequence/1s 1s