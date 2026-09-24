gamerule immediate_respawn true
gamerule show_death_messages false

$damage @s $(healthUpdate) generic_kill
tag @s remove clearself

gamerule immediate_respawn false
gamerule show_death_messages true