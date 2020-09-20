tp @s ~.5 ~ ~.5
scoreboard players add @p[tag=standoff, tag=!other] retreat 1
tag @p[tag=standoff, tag=!other] remove show_placable
tag @e[type=minecraft:armor_stand, tag=standoff] remove selected1
