# have crafting recipe show up
recipe give @a platoons:pocketmap

# puts the portal room place marker at the bottom of a cave if available
spreadplayers ~ ~ 0 1 under 40 true @e[type=marker,tag=pocketplace]

# spawns the portal room if a place marker exists
execute as @e[type=marker,tag=pocketplace] at @s run function platoons:pocket/portalroom/spawn

# title commands for holding maps
title @a[predicate=platoons:pocket/holdingkeymap] times 0 2 2
title @a[predicate=platoons:pocket/holdingkeymap] title {"text":""}
execute as @a[predicate=platoons:pocket/holdingkeymap] run title @s subtitle {"entity":"@s","nbt":"SelectedItem.components.\"minecraft:lore\"[0]","interpret":true}

title @a[predicate=platoons:pocket/holdingdormantmap] times 0 2 2
title @a[predicate=platoons:pocket/holdingdormantmap] title {"text":""}
execute as @a[predicate=platoons:pocket/holdingdormantmap] run title @s subtitle [{"text":"Press ","color":"#B88BD6"},{"keybind":"key.use","color":"#7EB4CC"},{"text":" to activate","color":"#B88BD6"}]

# generate armor on suitable armor stands
#execute as @e[tag=pocket_armor] at @s if entity @a[distance=0..30] run function platoons:pocket/

#summon armor_stand ~ ~ ~ {Tags:["pocketwaypoint"],NoBasePlate:1b,Small:1b,Invisible:1b,Marker:1b,CustomNameVisible:0b,CustomName:"Pocket Portal",attributes:[{id:"minecraft:waypoint_transmit_range",base:9999}]}
tellraw @a {"text":"██▌ █▌  ██▌ ██▌ ██▌ █▀▌ ██▌ █▀▀"}
tellraw @a {"text":"█▄▌ █▌  █▄▌ ██▌ █▀▌ █▄▌ █  ▌ ███"}
tellraw @a {"text":" "}
#tellraw @a {"text":"████████████████████████"}