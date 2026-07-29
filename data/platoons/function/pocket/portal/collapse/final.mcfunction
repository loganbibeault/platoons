execute at @e[tag=pocket_exit] as @a[distance=0..] run damage @s 1000 outside_border
execute at @e[tag=pocket_exit] run kill @a[distance=0..]

execute at @e[tag=keyhole_open] run fill ~-1 ~3 ~ ~1 ~1 ~ air destroy
execute at @e[tag=keyhole_open] run fill ~-1 ~ ~ ~1 ~ ~ minecraft:jigsaw[orientation=north_up]


execute at @e[tag=pocket_exit] run forceload remove ~ ~
execute at @e[tag=keyhole_open] run forceload remove ~ ~
kill @e[tag=pocket_exit]
kill @e[tag=keyhole_open]
kill @e[tag=pocketwaypoint]
kill @e[tag=pocketbeacon]
kill @e[tag=portalanim]
kill @e[tag=portalexitanim]
execute in platoons:pocket/desolatia run forceload remove all
execute in platoons:pocket/boneyard run forceload remove all

schedule clear platoons:pocket/portal/animations/waypoint/0
schedule clear platoons:pocket/portal/animations/waypoint/1
schedule clear platoons:pocket/portal/animations/waypoint/2
schedule clear platoons:pocket/portal/animations/waypoint/3
schedule clear platoons:pocket/portal/animations/waypoint/4
schedule clear platoons:pocket/portal/animations/waypoint/5
schedule clear platoons:pocket/portal/animations/waypoint/6
schedule clear platoons:pocket/portal/animations/waypoint/7

schedule clear platoons:pocket/portal/animations/portal/0
schedule clear platoons:pocket/portal/animations/portal/1
schedule clear platoons:pocket/portal/animations/portal/2
schedule clear platoons:pocket/portal/animations/portal/3
schedule clear platoons:pocket/portal/animations/portal/4
schedule clear platoons:pocket/portal/animations/portal/5
schedule clear platoons:pocket/portal/animations/portal/6
schedule clear platoons:pocket/portal/animations/portal/7

say collapsed