scoreboard players reset * join_standoff
tellraw @a[tag=standoff] ["", {"selector": "@p[tag=standoff, tag=player1]", "color": "aqua"}, {"text": " & "}, {"selector": "@p[tag=standoff, tag=player2]", "color": "aqua"}, {"text": " joined the game"}]
give @a[tag=standoff] golden_carrot{Tags:["standoff"]} 64
scoreboard players enable @p[tag=standoff, tag=player1] PlacePawn
scoreboard objectives setdisplay sidebar PlacedPawn

playsound minecraft:entity.player.levelup master @a[tag=standoff]
execute as @p[tag=standoff, tag=player2] run function stand_off:next_player
scoreboard players set @a[tag=standoff] PlacedPawn 0
effect give @a[tag=standoff] minecraft:jump_boost 999999 1 true
effect give @a[tag=standoff] minecraft:speed 999999 1 true

function stand_off:next_step
