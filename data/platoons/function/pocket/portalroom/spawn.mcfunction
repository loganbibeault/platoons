
fill ~9 ~11 ~7 ~-10 ~-2 ~-7 air replace water
place template platoons:pocket/portalroom ~-9 ~-1 ~-10 none none 1 1 strict

execute store result score @s x run data get entity @s Pos[0]
execute store result score @s y run data get entity @s Pos[1]
execute store result score @s z run data get entity @s Pos[2]

loot replace entity @a[advancements={platoons:pocket/activatemap=true}] weapon.mainhand loot platoons:pocket/keymap
advancement revoke @a only platoons:pocket/activatemap
kill @s
forceload remove ~ ~