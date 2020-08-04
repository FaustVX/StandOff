execute as @a[tag=!tped] in stand_off:gameworld run tp @a 0 10 0
execute as @a[tag=!tped] in stand_off:gameworld run tag @s add tped
execute as @a[tag=player1, tag=!played] run function stand_off:place_pawn
execute as @a[tag=player2, tag=!played] run function stand_off:place_pawn
tag @a remove place_pawn
tag @a remove placed_pawn
