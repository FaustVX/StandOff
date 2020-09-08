execute if entity @s[tag=player1] as @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=standoff] run data modify entity @s Tags append value "player1"
execute if entity @s[tag=player2] as @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=standoff] run data modify entity @s Tags append value "player2"
execute if entity @s[tag=player2] as @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=standoff] run data modify entity @s Rotation set value [180f, 0f]
