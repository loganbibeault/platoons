# spawns the drop one minute after announcing it
schedule function platoons:supplydrop/activate 55s

# plays alert jingle
function platoons:supplydrop/alerts/announce/1

# chat alert
tellraw @a [{"text":"A","color":"gold"},{"text":" supply drop","color":"#9DE07E"},{"text":" will arrive in"},{"text":" one minute","color":"#EBDE6E"},{"text":"!"}]