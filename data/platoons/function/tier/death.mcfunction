# chest and particle effects on death by tier

execute at @s[team=Tier1] run setblock ~ ~ ~ oxidized_copper_chest{LootTable:"platoons:tier/1",CustomName:[{"text":"Tier 1 Lootbox","color":"dark_aqua"}]} destroy
execute at @s[team=Tier1] run particle dust_color_transition{from_color:[0.333,1.000,1.000],to_color:[0.094,0.275,0.671],scale:1} ~ ~1 ~ 0.5 0.5 0.5 2 50 force

execute at @s[team=Tier2] run setblock ~ ~ ~ oxidized_copper_chest{LootTable:"platoons:tier/2",CustomName:[{"text":"Tier 2 Lootbox","color":"#1fa31f"}]} destroy
execute at @s[team=Tier2] run particle dust_color_transition{from_color:[0.333,1.000,0.333],to_color:[0.012,0.369,0.251],scale:1} ~ ~1 ~ 0.5 0.5 0.5 2 50 force

execute at @s[team=Tier3] run setblock ~ ~ ~ oxidized_copper_chest{LootTable:"platoons:tier/3",CustomName:[{"text":"Tier 3 Lootbox","color":"#bd9017"}]} destroy
execute at @s[team=Tier3] run particle dust_color_transition{from_color:[1.000,1.000,0.059],to_color:[0.910,0.514,0.000],scale:1} ~ ~1 ~ 0.5 0.5 0.5 2 50 force

execute at @s[team=Tier4] run setblock ~ ~ ~ oxidized_copper_chest{LootTable:"platoons:tier/4",CustomName:[{"text":"Tier 4 Lootbox","color":"#ba580d"}]} destroy
execute at @s[team=Tier4] run particle dust_color_transition{from_color:[0.933,0.490,0.149],to_color:[0.961,0.286,0.000],scale:1} ~ ~1 ~ 0.5 0.5 0.5 2 50 force

execute at @s[team=Tier5] run setblock ~ ~ ~ oxidized_copper_chest{LootTable:"platoons:tier/5",CustomName:[{"text":"Tier 5 Lootbox","color":"#911023"}]} destroy
execute at @s[team=Tier5] run particle dust_color_transition{from_color:[0.933,0.149,0.267],to_color:[0.741,0.000,0.443],scale:1} ~ ~1 ~ 0.5 0.5 0.5 2 50 force
execute at @s[team=Tier5] run summon lightning_bolt ~ ~5 ~