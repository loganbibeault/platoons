kill @e[type=armor_stand,tag=supplydrop]
kill @e[type=block_display,tag=supplydropvisual]

# stores the result of the following /random command for both x and z positions under "platoons:droppos"
execute store result storage platoons:droppos x int 1.0 run random value -499..499
execute store result storage platoons:droppos z int 1.0 run random value -499..499
function platoons:supplydrop/spawn with storage platoons:droppos

