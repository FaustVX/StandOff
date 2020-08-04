tag @a remove player1
tag @a remove player2
tag @e remove standoff

kill @e[type=!minecraft:player, tag=player1]
kill @e[type=!minecraft:player, tag=player2]

scoreboard objectives remove PlacedPawn
scoreboard objectives remove JoinStandOff
scoreboard objectives remove NextStep
scoreboard objectives add PlacedPawn dummy "Placed Pawn"
scoreboard objectives setdisplay sidebar PlacedPawn
scoreboard objectives add JoinStandOff trigger
scoreboard objectives add NextStep trigger
scoreboard players enable @a JoinStandOff

data modify storage stand_off:storage steps set value {"current":{"stopped":1},"next":{"current":{"players_joined":1},"next":{"current":{"placed_pawn":1,"is_player1":1},"next":{"current":{"ended":1},"next":{}}}}}

say Welcome to 'Stand Off'