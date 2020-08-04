execute store success storage stand_off:storage steps.current.last_success int 1 unless data storage stand_off:storage steps.current.last_success run say it is @e[tag=player1, tag=standoff]'s' turn

execute as @e[type=minecraft:armor_stand, tag=player1] if data storage stand_off:storage steps.current.is_player1 run data merge entity @s {Invulnerable:0b}
execute as @e[type=minecraft:armor_stand, tag=player2] if data storage stand_off:storage steps.current.is_player1 run data merge entity @s {Invulnerable:1b}
execute as @e[type=minecraft:armor_stand, tag=player2] unless data storage stand_off:storage steps.current.is_player1 run data merge entity @s {Invulnerable:0b}
execute as @e[type=minecraft:armor_stand, tag=player1] unless data storage stand_off:storage steps.current.is_player1 run data merge entity @s {Invulnerable:1b}

execute at @e[type=minecraft:armor_stand, tag=landed] if data storage stand_off:storage steps.current.is_player1 store result score removed PlacedPawn run kill @e[type=minecraft:armor_stand, tag=player2, distance=..0.75]
execute at @e[type=minecraft:armor_stand, tag=landed] unless data storage stand_off:storage steps.current.is_player1 store result score removed PlacedPawn run kill @e[type=minecraft:armor_stand, tag=player1, distance=..0.75]

execute if data storage stand_off:storage steps.current.is_player1 run scoreboard players operation @e[tag=player2, tag=standoff] PlacedPawn -= removed PlacedPawn
execute unless data storage stand_off:storage steps.current.is_player1 run scoreboard players operation @e[tag=player1, tag=standoff] PlacedPawn -= removed PlacedPawn
scoreboard players reset removed PlacedPawn

execute if entity @e[type=minecraft:armor_stand, tag=landed] unless entity @e[tag=standoff, scores={PlacedPawn=..0}] if data storage stand_off:storage steps.current.is_player1 run say it is @e[tag=player2, tag=standoff]'s' turn
execute if entity @e[type=minecraft:armor_stand, tag=landed] unless entity @e[tag=standoff, scores={PlacedPawn=..0}] unless data storage stand_off:storage steps.current.is_player1 run say it is @e[tag=player1, tag=standoff]'s' turn

execute if entity @e[tag=standoff, scores={PlacedPawn=..0}] run function stand_off:next_step

execute if entity @e[type=minecraft:armor_stand, tag=landed, tag=player1] if data storage stand_off:storage steps.current.is_player1 run data remove storage stand_off:storage steps.current.is_player1
execute if entity @e[type=minecraft:armor_stand, tag=landed, tag=player2] if data storage stand_off:storage steps.current unless data storage stand_off:storage steps.current.is_player1 run data merge storage stand_off:storage {steps:{current:{is_player1:1b}}}

execute as @e[type=minecraft:armor_stand, nbt={Motion:[0d,0d,0d]}, tag=!takeoff, tag=!flying, tag=landed] run tag @s remove landed
execute as @e[type=minecraft:armor_stand, nbt={Motion:[0d,0d,0d]}, tag=!takeoff, tag=flying, tag=!landed] run tag @s add landed
execute as @e[type=minecraft:armor_stand, nbt={Motion:[0d,0d,0d]}, tag=!takeoff, tag=flying, tag=landed] run tag @s remove flying
execute as @e[type=minecraft:armor_stand, nbt=!{Motion:[0d,0d,0d]}, tag=takeoff, tag=!flying, tag=!landed] run tag @s add flying
execute as @e[type=minecraft:armor_stand, nbt=!{Motion:[0d,0d,0d]}, tag=takeoff, tag=flying, tag=!landed] run tag @s remove takeoff
execute as @e[type=minecraft:armor_stand, nbt=!{Motion:[0d,0d,0d]}, tag=!takeoff, tag=!flying, tag=!landed, tag=player1] if data storage stand_off:storage steps.current.is_player1 run tag @s add takeoff
execute as @e[type=minecraft:armor_stand, nbt=!{Motion:[0d,0d,0d]}, tag=!takeoff, tag=!flying, tag=!landed, tag=player2] unless data storage stand_off:storage steps.current.is_player1 run tag @s add takeoff