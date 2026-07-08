# stores the result of the following /random command for both x and z positions in "platoons:droppos"
execute store result storage platoons:pocketpos x int 1.0 run random value -10000..10000
execute store result storage platoons:pocketpos z int 1.0 run random value -10000..10000

# runs spawn function with the generated values as coordinates
function platoons:pocket/dimensions/desolatia/spawn with storage platoons:pocketpos