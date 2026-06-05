scoreboard players add @a tierup 0

execute as @a[scores={killed_by_player=1..,player_kills=0}] run function platoons:tier/death

team join Tier0 @a[scores={Kills=0}]

scoreboard players set @a[team=Tier0,scores={Kills=1..2}] tierup 5
team join Tier1 @a[scores={Kills=1..2}]

scoreboard players set @a[team=Tier1,scores={Kills=3..5}] tierup 5
team join Tier2 @a[scores={Kills=3..5}]

scoreboard players set @a[team=Tier2,scores={Kills=6..9}] tierup 5
team join Tier3 @a[scores={Kills=6..9}]

scoreboard players set @a[team=Tier3,scores={Kills=10..15}] tierup 5
team join Tier4 @a[scores={Kills=10..15}]

scoreboard players set @a[team=Tier4,scores={Kills=16..}] tierup 5
team join Tier5 @a[scores={Kills=16..}]


execute as @a[team=Tier1,scores={tierup=1..5}] at @s run function vfx:tierup/1
execute as @a[team=Tier2,scores={tierup=1..5}] at @s run function vfx:tierup/2
execute as @a[team=Tier3,scores={tierup=1..5}] at @s run function vfx:tierup/3
execute as @a[team=Tier4,scores={tierup=1..5}] at @s run function vfx:tierup/4
execute as @a[team=Tier5,scores={tierup=1..5}] at @s run function vfx:tierup/5