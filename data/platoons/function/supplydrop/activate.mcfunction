kill @e[type=item_display,tag=supplydrop]
kill @e[type=block_display,tag=supplydropvisual]

# stores the result of the following /random command for both x and z positions under "platoons:droppos"
execute store result storage platoons:droppos x int 1.0 run random value -406..-405
execute store result storage platoons:droppos z int 1.0 run random value 230..231
function platoons:supplydrop/spawn with storage platoons:droppos

say h