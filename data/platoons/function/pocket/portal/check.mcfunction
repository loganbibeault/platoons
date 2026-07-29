# fail conditions
execute if score #playercount general matches ..4 run function platoons:pocket/alerts/deny/needplayers
execute if entity @e[type=interaction,tag=keyhole_active] run function platoons:pocket/alerts/deny/alreadyactive

# pass condition
execute if score #playercount general matches 5.. unless entity @e[type=interaction,tag=keyhole_active] run item replace entity @s weapon.mainhand with air
execute if score #playercount general matches 5.. unless entity @e[type=interaction,tag=keyhole_active] as @n[type=interaction,tag=portal_keyhole] at @s run function platoons:pocket/portal/open/start
