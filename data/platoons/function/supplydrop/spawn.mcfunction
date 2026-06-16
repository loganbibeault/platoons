# forces the chunk to load and spawns the drop
$forceload add $(x) $(z)
$summon armor_stand $(x) 500 $(z) {Marker:1b,Tags:["supplydropwaypoint"],attributes:[{id:"minecraft:waypoint_transmit_range",base:9999}]}
$summon item_display $(x) 500 $(z) {Tags:["supplydrop"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjQ3MzI3OTc1ZTc2Y2ZmZTA0MDY5MDgwYWJkNGIxMTQyNTMyNTIzZTdkZTZhZTI3ZGVmMzdhNGY4YTVhODE3In19fQ=="}]}}}}


# bunch of long glass panes to make the beacon beam
$summon block_display $(x) 0 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 64 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 128 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 192 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 256 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 320 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 384 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 448 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[1f,0f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}


$summon block_display $(x) 384 $(z) {Tags:["supplydropbeacon","top"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,400f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}

# resets and starts the animation
schedule clear platoons:supplydrop/animations/beacon/reset
schedule clear platoons:supplydrop/animations/beacon/animate
schedule function platoons:supplydrop/animations/beacon/animate 1

# plays THE sound
function platoons:supplydrop/alerts/reveal/1