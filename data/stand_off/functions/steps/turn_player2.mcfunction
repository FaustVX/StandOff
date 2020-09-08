execute if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player2, tag=landing] run function stand_off:next_turn
execute if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player2, tag=landing] run scoreboard players operation $current standoff_state = $turn_player1 standoff_state

execute as @e[type=minecraft:armor_stand, tag=standoff, tag=player2] run function stand_off:detect_moving_entity
