execute if entity @e[tag=summitpadexit,distance=..1] run function customs:summitpad/connectfinal
execute unless entity @e[tag=summitpadexit,distance=..1] positioned ~ ~1 ~ run function customs:summitpad/check

