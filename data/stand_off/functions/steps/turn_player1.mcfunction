execute at @e[type=minecraft:armor_stand, tag=standoff, tag=player1, tag=landing] as @e[type=minecraft:armor_stand, tag=standoff, tag=player2, distance=..0.75] run function stand_off:remove_health

execute if score @s precision_shot matches 1 run give @s minecraft:fishing_rod{Tags:["standoff"], Unbreakable:true}
execute if score @s precision_shot matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Precision Shot]", "color": "dark_green", "hoverEvent": {"action": "show_item", "value": "{'id':'minecraft:fishing_rod', 'Count':1}"}}]
scoreboard players set @s precision_shot 0
execute as @e[type=fishing_bobber, nbt={Motion:[0d,0d,0d]}, tag=standoff, tag=player1] at @s unless entity @e[type=minecraft:armor_stand, tag=standoff, tag=player1, sort=nearest, distance=..2] run kill @s
tag @e[type=fishing_bobber, distance=..2] add standoff
tag @e[type=fishing_bobber, distance=..2, tag=standoff] add player1

execute if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player1, tag=landing] if score @s PlacedPawn matches 1.. run function stand_off:next_turn
execute if entity @e[type=minecraft:armor_stand, tag=standoff, tag=player1, tag=landing] if score @s PlacedPawn matches 1.. run scoreboard players operation $current standoff_state = $turn_player2 standoff_state
execute if entity @p[tag=standoff, scores={PlacedPawn=..0}] run scoreboard players operation $current standoff_state = $won standoff_state

execute as @e[type=!minecraft:player, tag=standoff, tag=player1] run function stand_off:detect_moving_entity

execute as @p[tag=standoff, tag=!other] if entity @p[tag=standoff, scores={force_next_turn=1..}] run function stand_off:next_turn
execute as @p[tag=standoff, tag=!other] if entity @p[tag=standoff, scores={force_next_turn=1..}] run scoreboard players operation $current standoff_state = $turn_player2 standoff_state
scoreboard players reset @a[tag=standoff] force_next_turn
scoreboard players enable @a[tag=standoff] force_next_turn
