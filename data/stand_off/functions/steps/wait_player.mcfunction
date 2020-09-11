tag @s add standoff
execute unless entity @a[tag=standoff, tag=player1] run tag @s add player1
execute unless entity @s[tag=standoff, tag=player1] run tag @s add player2
scoreboard players reset @s join_standoff
tellraw @s ["", {"text": "Welcome to Stand Off"}]

function stand_off:next_step
