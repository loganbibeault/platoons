tag @a[distance=0..1.75,limit=1,tag=!hooklineuser] add hooklinehooked
execute if entity @a[distance=0..1.75,limit=1,tag=!hooklineuser] run function platoons:customs/items/hookline/hit
scoreboard players add #distance hooklineraycast 1

scoreboard players add #particle hooklineraycast 1
execute if score #particle hooklineraycast matches 6.. run scoreboard players set #particle hooklineraycast 0
execute if score #particle hooklineraycast matches 5 run particle ash ~ ~ ~ 0 0 0 0 5 force

execute unless block ~ ~ ~ #platoons:nohitbox run function platoons:customs/items/hookline/miss

execute if score #distance hooklineraycast matches 200 run function platoons:customs/items/hookline/miss
execute if score #distance hooklineraycast matches ..200 positioned ^ ^ ^0.5 run function platoons:customs/items/hookline/raycast
execute if score #distance hooklineraycast matches 200.. positioned ^ ^ ^0.5 run tag @a remove hooklineuser