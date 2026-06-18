execute store result storage platoons:supplydropdist in.x int 1.0 run scoreboard players get @s distx
execute store result storage platoons:supplydropdist in.z int 1.0 run scoreboard players get @s distz

function platoons:test/distance with storage platoons:supplydropdist in

tellraw @s [{"text":"Distance = "},{"nbt":"out","storage":"platoons:supplydropdist"}]