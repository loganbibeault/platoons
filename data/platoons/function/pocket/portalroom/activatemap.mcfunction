kill @e[tag=pocketwaypoint]

# stores the result of the following /random commands for x, y, and z positions in "platoons:portalroompos"
execute store result storage platoons:portalroompos x int 1.0 run random value -450..450
execute store result storage platoons:portalroompos y int 1.0 run random value -50..40
execute store result storage platoons:portalroompos z int 1.0 run random value -450..450

# runs spawn function with the generated values as coordinates
function platoons:pocket/portalroom/pos with storage platoons:portalroompos