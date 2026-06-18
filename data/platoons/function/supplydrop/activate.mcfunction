# stores the result of the following /random command for both x and z positions in "platoons:droppos"
execute store result storage platoons:droppos x int 1.0 run random value -499..499
execute store result storage platoons:droppos z int 1.0 run random value -499..499

# runs spawn function with the generated values as coordinates
function platoons:supplydrop/spawn with storage platoons:droppos