execute unless block ~ ~-1 ~ #platoons:nohitbox run tag @s remove hooklinenofall

execute as @s[scores={hooklinenofall=2..20}] run attribute @p[tag=hooklinehooked] minecraft:safe_fall_distance base set 999
execute as @s[scores={hooklinenofall=..1}] run attribute @s minecraft:safe_fall_distance base reset

scoreboard players remove @s[tag=!hooklinenofall] hooklinenofall 1