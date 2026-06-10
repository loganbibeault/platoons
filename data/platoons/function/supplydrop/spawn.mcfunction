$forceload add $(x) $(z)
$summon armor_stand $(x) 500 $(z) {Marker:1b,Tags:["supplydrop"],attributes:[{id:"minecraft:waypoint_transmit_range",base:9999}]}
$execute positioned $(x) 100 $(z) run tp logoh ~ ~ ~


$summon block_display $(x) -64 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 0 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 64 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 128 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 192 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 256 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}
$summon block_display $(x) 320 $(z) {Tags:["supplydropbeacon"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,64f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}

$summon block_display $(x) 320 $(z) {Tags:["supplydropbeacon","top"],view_range:9999f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,0f,-1f],scale:[2f,400f,2f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane"}}

schedule clear platoons:supplydrop/animatereset
schedule clear platoons:supplydrop/animate
schedule function platoons:supplydrop/animatereset 1
