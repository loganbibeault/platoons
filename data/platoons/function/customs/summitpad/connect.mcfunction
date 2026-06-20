execute if entity @e[tag=summitpadexit,distance=..1] run function platoons:customs/summitpad/connectfinal
execute unless entity @e[tag=summitpadexit,distance=..1] positioned ~ ~1 ~ run function platoons:customs/summitpad/check

