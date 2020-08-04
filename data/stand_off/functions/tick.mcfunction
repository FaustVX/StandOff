execute as @a[predicate=!stand_off:in_gameworld] in stand_off:gameworld run tp @a 0 10 0
execute as @a[tag=player1, tag=!played] run function stand_off:place_pawn
execute as @a[tag=player2, tag=!played] run function stand_off:place_pawn

execute if entity @a[tag=played] run function stand_off:next_turn