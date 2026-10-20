tag @s remove frostguy
fill ~-1 ~ ~-1 ~1 ~-10 ~ air replace #platoons:customs/frostflyer
tag @s add ff_slowfall
tag @s[nbt={active_effects:[{id:"minecraft:slow_falling"}]}] add ff_preslowfall
title @s actionbar {"text":""}
playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0.7