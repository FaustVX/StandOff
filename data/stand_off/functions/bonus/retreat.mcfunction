tp @s ~.5 ~ ~.5
execute as @p[tag=standoff, tag=!other] run clear @s minecraft:fishing_rod{Tags:["standoff", "retreat"]}
scoreboard players add @p[tag=standoff, tag=!other] retreat 1
tag @p[tag=standoff, tag=!other] remove show_placable
