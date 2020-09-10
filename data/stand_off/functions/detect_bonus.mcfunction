execute if score @s precision_shot matches 1 run give @s minecraft:fishing_rod{Tags:["standoff", "precision_shot"], Unbreakable:true, display:{Name:'{"text":"Precision Shot", "color": "dark_green"}'}}
execute if score @s precision_shot matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Precision Shot]", "color": "dark_green", "hoverEvent": {"action": "show_item", "value": "{'id':'minecraft:fishing_rod', 'Count':1}"}}]
execute if score @s precision_shot matches 1 run scoreboard players add @s precision_shot 1

execute if score @s retreat matches 1 run give @s minecraft:fishing_rod{Tags:["standoff", "retreat"], Unbreakable:true, display:{Name:'{"text":"Retreat", "color": "dark_green"}'}}
execute if score @s retreat matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Retreat]", "color": "dark_green", "hoverEvent": {"action": "show_item", "value": "{'id':'minecraft:red_carpet', 'Count':1}"}}]
execute if score @s retreat matches 1 run scoreboard players add @s retreat 1
execute if score @s retreat matches 2 run tag @e[type=fishing_bobber, distance=..2] add standoff
execute if score @s retreat matches 2 run tag @e[type=fishing_bobber, distance=..2, tag=standoff] add retreat
execute if score @s retreat matches 1..2 run tag @a[tag=standoff] remove show_placable
execute if score @s retreat matches 2 if entity @e[type=minecraft:fishing_bobber, tag=standoff, tag=retreat] run tag @s add show_placable
execute if score @s retreat matches 2 if block ~ ~ ~ #stand_off:placable if predicate stand_off:is_sneaking unless entity @e[type=minecraft:armor_stand, tag=standoff, distance=..1] at @e[type=minecraft:fishing_bobber, tag=standoff, tag=retreat, tag=!flying] as @e[type=minecraft:armor_stand, tag=standoff, dx=0.1, dy=0.1, dz=0.1, sort=nearest, limit=1] at @p[tag=standoff, tag=!other] align xz rotated as @s run function stand_off:bonus/retreat
