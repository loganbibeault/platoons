execute store result storage platoons:supplydropdist in.x int 1.0 run scoreboard players get @s dropdistx
execute store result storage platoons:supplydropdist in.z int 1.0 run scoreboard players get @s dropdistz

function platoons:test/distance with storage platoons:supplydropdist in

title @a times 0 0.2 0

title @s actionbar [{"text":"Distance = "},{"nbt":"out","storage":"platoons:supplydropdist"}]