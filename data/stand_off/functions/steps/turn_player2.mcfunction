execute at @e[type=minecraft:armor_stand, tag=standoff, tag=player2, tag=landing] as @e[type=minecraft:armor_stand, tag=standoff, tag=player1, distance=..0.75] run function stand_off:remove_health

execute if score @s precision_shot matches 1 run give @s minecraft:fishing_rod{Tags:["standoff"], Unbreakable:true}
scoreboard players set @s precision_shot 0

execute if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player2, tag=landing] if score @s PlacedPawn matches 1.. run function stand_off:next_turn
execute if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player2, tag=landing] if score @s PlacedPawn matches 1.. run scoreboard players operation $current standoff_state = $turn_player1 standoff_state
execute if entity @p[tag=standoff, scores={PlacedPawn=..0}] run scoreboard players operation $current standoff_state = $won standoff_state

execute as @e[type=minecraft:armor_stand, tag=standoff, tag=player2] run function stand_off:detect_moving_entity
