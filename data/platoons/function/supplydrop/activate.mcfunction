# stores the result of the following /random command for both x and z positions in "platoons:droppos"
execute store result storage platoons:droppos x int 1.0 run random value -450..450
execute store result storage platoons:droppos z int 1.0 run random value -450..450

# loads chunk at coordinates
function platoons:supplydrop/spawn/loadchunk with storage platoons:droppos

# runs spawn function with the generated values as coordinates after buffer time for forceload
schedule function platoons:supplydrop/spawn/readyspawn 5s
