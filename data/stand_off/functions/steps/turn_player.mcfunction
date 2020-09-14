execute if entity @s[tag=standoff, tag=player1] at @e[type=minecraft:armor_stand, tag=standoff, tag=player1, tag=landing] as @e[type=minecraft:armor_stand, tag=standoff, tag=player2, distance=..0.75] run function stand_off:remove_health
execute if entity @s[tag=standoff, tag=player2] at @e[type=minecraft:armor_stand, tag=standoff, tag=player2, tag=landing] as @e[type=minecraft:armor_stand, tag=standoff, tag=player1, distance=..0.75] run function stand_off:remove_health

scoreboard players set @s PlacedPawn 0
execute as @e[type=minecraft:armor_stand, tag=standoff] store result score @s standoff_health run data get entity @s Health
execute if entity @s[tag=standoff, tag=player1] run scoreboard players operation @s PlacedPawn += @e[type=minecraft:armor_stand, tag=standoff, tag=player1] standoff_health
execute if entity @s[tag=standoff, tag=player2] run scoreboard players operation @s PlacedPawn += @e[type=minecraft:armor_stand, tag=standoff, tag=player2] standoff_health
scoreboard players reset * standoff_health

function stand_off:detect_bonus

execute if entity @s[tag=standoff, tag=player1] if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player1, tag=landing] if score @s PlacedPawn matches 1.. unless score @s double_move matches 2 run function stand_off:next_turn
execute if entity @s[tag=standoff, tag=player2] if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player2, tag=landing] if score @s PlacedPawn matches 1.. unless score @s double_move matches 2 run function stand_off:next_turn

execute if entity @s[tag=standoff, tag=player1] if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player1, tag=landing] if score @s PlacedPawn matches 1.. if score @s double_move matches 2 run scoreboard players add @s double_move 1
execute if entity @s[tag=standoff, tag=player2] if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player2, tag=landing] if score @s PlacedPawn matches 1.. if score @s double_move matches 2 run scoreboard players add @s double_move 1

execute if entity @p[tag=standoff, scores={PlacedPawn=..0}] run scoreboard players operation $current standoff_state = $won standoff_state

execute if entity @s[tag=standoff, tag=player1] as @e[type=!minecraft:player, tag=standoff, tag=player1] run function stand_off:detect_moving_entity
execute if entity @s[tag=standoff, tag=player2] as @e[type=!minecraft:player, tag=standoff, tag=player2] run function stand_off:detect_moving_entity

execute as @p[tag=standoff, tag=!other] if entity @p[tag=standoff, scores={force_next_turn=1..}] run function stand_off:next_turn
scoreboard players reset @a[tag=standoff] force_next_turn
scoreboard players enable @a[tag=standoff] force_next_turn
