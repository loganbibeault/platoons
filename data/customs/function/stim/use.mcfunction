# Particle effects adn sound on stim usage
particle dust_color_transition{from_color:[1.000,0.078,0.600],scale:1,to_color:[1.000,1.000,1.000]} ~ ~1 ~ 0.5 0.5 0.5 1 10 force
particle dust_color_transition{from_color:[1.000,1.000,1.000],scale:1,to_color:[1.000,0.078,0.600]} ~ ~1 ~ 0.5 0.5 0.5 1 10 force
execute at @s run playsound minecraft:entity.allay.item_taken master @a ~ ~ ~ 1 .8