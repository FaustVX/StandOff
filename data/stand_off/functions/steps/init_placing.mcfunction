scoreboard players reset * join_standoff
msg @a[tag=standoff] @p[tag=standoff, tag=player1] & @p[tag=standoff, tag=player2] joined the game
give @a[tag=standoff] golden_carrot{Tags:["standoff"]} 64
scoreboard players enable @p[tag=standoff, tag=player1] PlacePawn
scoreboard objectives setdisplay sidebar PlacedPawn

playsound minecraft:entity.player.levelup master @a[tag=standoff]
execute as @p[tag=standoff, tag=player2] run function stand_off:next_player
scoreboard players set @a[tag=standoff] PlacedPawn 0

function stand_off:next_step
