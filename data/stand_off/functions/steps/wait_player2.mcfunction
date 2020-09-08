tag @r[scores={join_standoff=1..}] add standoff
tag @p[scores={join_standoff=1..}, tag=standoff] add player2
scoreboard players reset @p[scores={join_standoff=1..}, tag=standoff, tag=player2] join_standoff
tellraw @p[tag=standoff, tag=player2] ["", {"text": "Welcome to Stand Off"}]

function stand_off:next_step
