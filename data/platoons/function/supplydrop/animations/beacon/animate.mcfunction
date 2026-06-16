execute as @e[type=block_display,tag=supplydropbeacon,tag=!top] run data merge entity @s[type=block_display] {start_interpolation:0,interpolation_duration:80,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1f,64f,-1f],scale:[2f,64f,2f]}}

schedule function platoons:supplydrop/animations/beacon/reset 79t

