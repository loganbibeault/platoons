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

# detect key

execute as @e[tag=portal_keyhole,tag=!keyhole_active] on target run execute at @s[predicate=platoons:pocket/holdingkeymap] run function platoons:pocket/portal/check

# reset detection
execute as @e[tag=portal_keyhole] run data remove entity @s interaction

# if theres an active keyhole/portal, run the open loop
execute as @n[type=interaction,tag=keyhole_active] at @s run function platoons:pocket/portal/loop

