# forces the chunk to load and spawns the portal room and the waypoint entity
$forceload add $(x) $(z)
$summon armor_stand $(x) $(y) $(z) {Tags:["pocketwaypoint"],NoBasePlate:1b,Small:1b,Invisible:1b,Marker:1b,CustomNameVisible:0b,CustomName:"Pocket Portal",attributes:[{id:"minecraft:waypoint_transmit_range",base:9999}]}

$execute positioned $(x) $(y) $(z) run function platoons:pocket/portalroom/spawn