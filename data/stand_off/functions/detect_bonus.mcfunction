execute if score @s precision_shot matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Precision Shot]", "color": "dark_green"}]
execute if score @s precision_shot matches 1 run give @s minecraft:fishing_rod{Tags:["standoff", "precision_shot"], Unbreakable:true, display:{Name:'{"text":"Precision Shot", "color": "dark_green"}'}}
execute if score @s precision_shot matches 1 run scoreboard players add @s precision_shot 1

execute if score @s retreat matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Retreat]", "color": "dark_green"}]
execute if score @s retreat matches 1 run scoreboard players add @s retreat 1
execute if score @s retreat matches 2 run tag @e[type=minecraft:armor_stand, tag=standoff] remove selected1
execute if score @s retreat matches 2 if entity @s[tag=standoff, tag=player1] run tag @e[type=minecraft:armor_stand, tag=standoff, tag=player1, sort=nearest, limit=1] add selected1
execute if score @s retreat matches 2 if entity @s[tag=standoff, tag=player2] run tag @e[type=minecraft:armor_stand, tag=standoff, tag=player2, sort=nearest, limit=1] add selected1
execute if score @s retreat matches 2 if entity @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] run scoreboard players add @s[predicate=stand_off:is_sneaking] retreat 1
execute if score @s retreat matches 3 if entity @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] run playsound minecraft:item.armor.equip_generic master @s
execute if score @s retreat matches 3 if entity @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] run tellraw @s "Now go to a spawn point"
execute if score @s retreat matches 3 run scoreboard players add @s retreat 1
execute if score @s retreat matches 4 run tag @a[tag=standoff] remove show_placable
execute if score @s retreat matches 4 if entity @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] run tag @s add show_placable
execute if score @s retreat matches 4 if block ~ ~ ~ #stand_off:placable if predicate stand_off:is_sneaking unless entity @e[type=minecraft:armor_stand, tag=standoff, distance=..1] as @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] at @p[tag=standoff, tag=!other] align xz rotated as @s run function stand_off:bonus/retreat

execute if score @s switch_place matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Switch Place]", "color": "dark_green"}]
execute if score @s switch_place matches 1 run scoreboard players add @s switch_place 1
execute if score @s switch_place matches 2 run tag @e[type=minecraft:armor_stand, tag=standoff] remove selected1
execute if score @s switch_place matches 2 if entity @s[tag=standoff, tag=player1] run tag @e[type=minecraft:armor_stand, tag=standoff, tag=player1, sort=nearest, limit=1] add selected1
execute if score @s switch_place matches 2 if entity @s[tag=standoff, tag=player2] run tag @e[type=minecraft:armor_stand, tag=standoff, tag=player2, sort=nearest, limit=1] add selected1
execute if score @s switch_place matches 2 if entity @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] run scoreboard players add @s[predicate=stand_off:is_sneaking] switch_place 1
execute if score @s switch_place matches 3 if entity @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] run playsound minecraft:item.armor.equip_generic master @s
execute if score @s switch_place matches 3 if entity @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] run tellraw @s "Now go to any other pawn"
execute if score @s switch_place matches 3 run scoreboard players add @s switch_place 1
execute if score @s switch_place matches 4 run scoreboard players add @s[predicate=!stand_off:is_sneaking] switch_place 1
execute if score @s switch_place matches 5 run tag @e[type=minecraft:armor_stand, tag=standoff] remove selected6
execute if score @s switch_place matches 5 if entity @s[tag=standoff] run tag @e[type=minecraft:armor_stand, tag=standoff, tag=!selected1, sort=nearest, limit=1] add selected6
execute if score @s switch_place matches 5 if entity @e[type=minecraft:armor_stand, tag=standoff, tag=selected6] run scoreboard players add @s[predicate=stand_off:is_sneaking] switch_place 1
execute if score @s switch_place matches 6 run function stand_off:bonus/switch_place

execute if score @s double_move matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Double Move]", "color": "dark_green"}]
execute if score @s double_move matches 1 run scoreboard players add @s double_move 1
execute if score @s double_move matches 3 as @p[tag=standoff, tag=other] run function stand_off:next_turn
execute if score @s double_move matches 3 run scoreboard players add @s double_move 1
