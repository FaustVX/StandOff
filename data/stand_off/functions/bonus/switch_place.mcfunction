tag @s add switch1
execute at @p[tag=standoff, tag=!other] run tag @e[type=minecraft:armor_stand, tag=standoff, sort=nearest, limit=1] add switch2
execute as @p[tag=standoff, tag=!other] run clear @s minecraft:fishing_rod{Tags:["standoff", "switch_place"]}
scoreboard players add @p[tag=standoff, tag=!other] switch_place 1


execute at @e[type=minecraft:armor_stand, tag=standoff, tag=switch1] run summon armor_stand ~ ~ ~ {Tags:["standoff", "switch_place"], Marker:true, Invisible:true}
execute as @e[type=minecraft:armor_stand, tag=standoff, tag=switch1] rotated as @s positioned as @e[type=minecraft:armor_stand, tag=standoff, tag=switch2] run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand, tag=standoff, tag=switch2] rotated as @s positioned as @e[type=minecraft:armor_stand, tag=standoff, tag=switch_place] run tp @s ~ ~ ~ ~ ~
kill @e[type=minecraft:armor_stand, tag=standoff, tag=switch_place]
tag @e[tag=standoff] remove switch1
tag @e[tag=standoff] remove switch2
