kill @e[tag=pocketwaypoint]
forceload remove all
say spawning
# stores the result of the following /random command for both x and z positions in "platoons:droppos"
execute store result storage platoons:portalroompos x int 1.0 run random value -499..499
execute store result storage platoons:portalroompos y int 1.0 run random value -50..40
execute store result storage platoons:portalroompos z int 1.0 run random value -499..499

# runs spawn function with the generated values as coordinates
function platoons:pocket/portalroom/pos with storage platoons:portalroompos
advancement revoke @s only platoons:pocket/activatemap