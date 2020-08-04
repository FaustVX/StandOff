execute as @a[tag=player1, tag=!played, predicate=stand_off:is_sneaking_and_jumping] if score @s PlacedPawn <= @e[tag=player2, tag=standoff, limit=1] PlacedPawn run function stand_off:place_pawn
execute as @a[tag=player2, tag=!played, predicate=stand_off:is_sneaking_and_jumping] if score @s PlacedPawn <= @e[tag=player1, tag=standoff, limit=1] PlacedPawn run function stand_off:place_pawn

execute if entity @e[tag=played] run function stand_off:next_turn

execute if score @e[tag=player1, tag=standoff, limit=1] PlacedPawn = @e[tag=player2, tag=standoff, limit=1] PlacedPawn run tellraw @a[tag=standoff, tag=player1] {"text":"Next Step","clickEvent":{"action":"run_command","value":"/trigger NextStep"}}
scoreboard players reset * NextStep
execute if score @e[tag=player1, tag=standoff, limit=1] PlacedPawn = @e[tag=player2, tag=standoff, limit=1] PlacedPawn run scoreboard players enable @e[tag=standoff] NextStep