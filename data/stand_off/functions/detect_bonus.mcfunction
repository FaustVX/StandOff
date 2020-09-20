execute if score @s precision_shot matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Precision Shot]", "color": "dark_green"}]
execute if score @s precision_shot matches 1 run give @s minecraft:fishing_rod{Tags:["standoff", "precision_shot"], Unbreakable:true, display:{Name:'{"text":"Precision Shot", "color": "dark_green"}'}}
execute if score @s precision_shot matches 1 run scoreboard players add @s precision_shot 1

execute if score @s retreat matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Retreat]", "color": "dark_green"}]
execute if score @s retreat matches 1 run give @s minecraft:fishing_rod{Tags:["standoff", "retreat"], Unbreakable:true, display:{Name:'{"text":"Retreat", "color": "dark_green"}'}}
execute if score @s retreat matches 1 run scoreboard players add @s retreat 1
execute if score @s retreat matches 2 run tag @e[type=fishing_bobber, distance=..2] add standoff
execute if score @s retreat matches 2 run tag @e[type=fishing_bobber, distance=..2, tag=standoff] add retreat
execute if score @s retreat matches 1..2 run tag @a[tag=standoff] remove show_placable
execute if score @s retreat matches 2 if entity @e[type=minecraft:fishing_bobber, tag=standoff, tag=retreat] run tag @s add show_placable
execute if score @s retreat matches 2 if block ~ ~ ~ #stand_off:placable if predicate stand_off:is_sneaking unless entity @e[type=minecraft:armor_stand, tag=standoff, distance=..1] at @e[type=minecraft:fishing_bobber, tag=standoff, tag=retreat, tag=!flying] as @e[type=minecraft:armor_stand, tag=standoff, dx=0.1, dy=0.1, dz=0.1, sort=nearest, limit=1] at @p[tag=standoff, tag=!other] align xz rotated as @s run function stand_off:bonus/retreat

execute if score @s switch_place matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Switch Place]", "color": "dark_green"}]
execute if score @s switch_place matches 1 run give @s minecraft:fishing_rod{Tags:["standoff", "switch_place"], Unbreakable:true, display:{Name:'{"text":"Switch Place", "color": "dark_green"}'}}
execute if score @s switch_place matches 1 run scoreboard players add @s switch_place 1
execute if score @s switch_place matches 2 run tag @e[type=fishing_bobber, distance=..2] add standoff
execute if score @s switch_place matches 2 run tag @e[type=fishing_bobber, distance=..2, tag=standoff] add switch_place
execute if score @s switch_place matches 1..2 run tag @a[tag=standoff] remove show_placable
execute if score @s switch_place matches 2 if entity @e[type=minecraft:fishing_bobber, tag=standoff, tag=switch_place] run tag @s add show_placable
execute if score @s switch_place matches 2 if predicate stand_off:is_sneaking if entity @e[type=minecraft:armor_stand, tag=standoff, distance=..1] at @e[type=minecraft:fishing_bobber, tag=standoff, tag=switch_place] as @e[type=minecraft:armor_stand, tag=standoff, dx=0.1, dy=0.1, dz=0.1, sort=nearest, limit=1] at @s run function stand_off:bonus/switch_place

execute if score @s double_move matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Double Move]", "color": "dark_green"}]
execute if score @s double_move matches 1 run scoreboard players add @s double_move 1
execute if score @s double_move matches 3 as @p[tag=standoff, tag=other] run function stand_off:next_turn
execute if score @s double_move matches 3 run scoreboard players add @s double_move 1
