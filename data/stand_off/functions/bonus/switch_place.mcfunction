execute at @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] run summon armor_stand ~ ~ ~ {Tags:["standoff", "switch_place"], Marker:true, Invisible:true}
execute as @e[type=minecraft:armor_stand, tag=standoff, tag=selected1] rotated as @s positioned as @e[type=minecraft:armor_stand, tag=standoff, tag=selected6] run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand, tag=standoff, tag=selected6] rotated as @s positioned as @e[type=minecraft:armor_stand, tag=standoff, tag=switch_place] run tp @s ~ ~ ~ ~ ~
kill @e[type=minecraft:armor_stand, tag=standoff, tag=switch_place]
tag @e[tag=standoff] remove selected1
tag @e[tag=standoff] remove selected6
scoreboard players add @s switch_place 1
