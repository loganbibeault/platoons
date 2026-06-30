# spawns the drop and the waypoint entity
$summon armor_stand $(x) 150 $(z) {Tags:["supplydropwaypoint"],NoBasePlate:1b,Small:1b,Invisible:1b,Marker:1b,CustomNameVisible:0b,CustomName:"Supply Drop",attributes:[{id:"minecraft:waypoint_transmit_range",base:9999}]}
$summon item_display $(x) 500 $(z) {Tags:["supplydrop"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWIyYzQ2MTIyNDEyNWU0YjQ5YTJjZDgzNTI2ZDNlYWNhNzM0ZGZjM2YxNmZmYzM4OGRlZTc3YTA2ZmUyZjFhMyJ9fX0="}]}}}}

# bunch of long glass panes to make the beacon beam
$summon block_display $(x) 0 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 64 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 128 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 192 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 256 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 320 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 384 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 448 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}

# an extra long unanimated pane for the very top
$summon block_display $(x) 384 $(z) {Tags:["supplydropbeacon","top"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,400f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}

# spawns an item display at world center used for tracking drop distance
summon item_display 0. 0 0. {UUID:[I;13,17367191,18219008,260]}

# starts the beam animation
schedule function platoons:supplydrop/animations/beacon/animate 1

# starts the drop animation
schedule function platoons:supplydrop/animations/supplydrop/0 1

# distance check / location reveal (this is scheduled because the drop spawning needs buffer time)
schedule function platoons:supplydrop/spawn/getdist 5

# plays alert jingle
schedule function platoons:supplydrop/alerts/reveal/1 5