kill @e[tag=pocket_exit]
kill @e[tag=keyhole_active]
kill @e[tag=pocketwaypoint]
kill @e[tag=pocketbeacon]
kill @e[tag=portalanim]
forceload remove all
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