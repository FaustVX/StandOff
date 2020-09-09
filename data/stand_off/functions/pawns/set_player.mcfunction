execute if entity @s[tag=player1] as @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=standoff] run data modify entity @s Tags append value "player1"
execute if entity @s[tag=player2] as @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=standoff] run data modify entity @s Tags append value "player2"
execute rotated as @s as @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=standoff] run tp @s ~ ~ ~ ~ 0
