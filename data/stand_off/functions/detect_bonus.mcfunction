execute if score @s precision_shot matches 1 run give @s minecraft:fishing_rod{Tags:["standoff", "precision_shot"], Unbreakable:true, display:{Name:'{"text":"Precision Shot", "color": "dark_green"}'}}
execute if score @s precision_shot matches 1 run tellraw @a[tag=standoff] ["", {"selector": "@s", "color": "aqua"}, {"text": " uses "}, {"text": "[Precision Shot]", "color": "dark_green", "hoverEvent": {"action": "show_item", "value": "{'id':'minecraft:fishing_rod', 'Count':1}"}}]
execute if score @s precision_shot matches 1 run scoreboard players add @s precision_shot 1
execute if score @s precision_shot matches 2 if entity @s[tag=player1] as @e[type=fishing_bobber, nbt={Motion:[0d,0d,0d]}, tag=standoff, tag=precision_shot] at @s unless entity @e[type=minecraft:armor_stand, tag=standoff, tag=player1, dx=0.1, dy=0.1, dz=0.1] run kill @s
execute if score @s precision_shot matches 2 if entity @s[tag=player2] as @e[type=fishing_bobber, nbt={Motion:[0d,0d,0d]}, tag=standoff, tag=precision_shot] at @s unless entity @e[type=minecraft:armor_stand, tag=standoff, tag=player2, dx=0.1, dy=0.1, dz=0.1] run kill @s
execute if score @s precision_shot matches 2 run tag @e[type=fishing_bobber, distance=..2] add standoff
execute if score @s precision_shot matches 2 run tag @e[type=fishing_bobber, distance=..2, tag=standoff] add precision_shot
