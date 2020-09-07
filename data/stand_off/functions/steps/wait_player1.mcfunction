tag @r[scores={join_standoff=1..}] add standoff
tag @p[scores={join_standoff=1..}, tag=standoff] add player1
scoreboard players reset @p[scores={join_standoff=1..}, tag=standoff, tag=player1] join_standoff
msg @p[tag=standoff, tag=player1] Welcome to Stand Off

function stand_off:next_step
