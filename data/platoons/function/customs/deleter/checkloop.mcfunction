
# loops deleter function as long as the deleter marker exists
execute as @e[tag=deleter] at @s run function platoons:customs/deleter/deleter

# iterates loop as long as the deleter marker exists
execute if entity @e[tag=deleter] run schedule function platoons:customs/deleter/checkloop 1
