execute as @a[advancements={platoons:hidden/consumed_stim=true}] at @s run function customs:stim/use
tag @a remove stim_replaced

schedule function customs:stim/loop 1
advancement revoke @a only platoons:hidden/consumed_stim