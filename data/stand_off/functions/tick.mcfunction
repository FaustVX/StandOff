execute as @a[predicate=!stand_off:in_gameworld] in stand_off:gameworld run tp @a 0 10 0
execute if data storage stand_off:storage steps.current.stopped run function stand_off:steps/stopped
execute if data storage stand_off:storage steps.current.players_joined run function stand_off:steps/players_joined
execute if data storage stand_off:storage steps.current.placed_pawn run function stand_off:steps/placed_pawn
execute unless data storage stand_off:storage steps.current run say @e[scores={PlacedPawn=1..}] Win the Game
execute unless data storage stand_off:storage steps.current run function stand_off:load