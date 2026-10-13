execute at @e[tag=summitpad_exit,distance=..1,predicate=!platoons:customs/summitpad/2air] at @s run function platoons:customs/items/summitpad/fail
kill @e[tag=summitpad_exit,distance=..1,predicate=!platoons:customs/summitpad/2air]
execute at @e[tag=summitpad_exit,distance=..1,predicate=platoons:customs/summitpad/1air] at @s run function platoons:customs/items/summitpad/fail
kill @e[tag=summitpad_exit,distance=..1,predicate=platoons:customs/summitpad/1air]

execute at @e[tag=summitpad_exit] run particle sculk_charge{roll:0} ~ ~1 ~ .15 0 .15 0 1 normal @a
execute as @e[tag=summitpad_exit,distance=..1] at @s if entity @e[tag=summitwarp] run function platoons:customs/items/summitpad/teleport
execute if entity @e[tag=summitwarp] at @s run function platoons:customs/items/summitpad/use
tag @e remove summitwarp