execute as @p[tag=standoff, tag=!other] if entity @s[tag=player1] at @e[type=minecraft:armor_stand, tag=standoff, tag=player1, tag=!flying] run particle minecraft:dolphin ~ ~ ~ .15 .15 .15 0 15
execute as @p[tag=standoff, tag=!other] if entity @s[tag=player2] at @e[type=minecraft:armor_stand, tag=standoff, tag=player2, tag=!flying] run particle minecraft:dolphin ~ ~ ~ .15 .15 .15 0 15

execute at @e[type=minecraft:armor_stand, tag=standoff, tag=flying] anchored feet run particle minecraft:end_rod ~ ~ ~

execute at @p[tag=standoff, tag=show_placable] unless entity @e[type=minecraft:armor_stand, distance=..1, tag=standoff] align xyz if block ~ ~ ~ #stand_off:placable run particle minecraft:warped_spore ~.5 ~ ~.5 .125 .125 .125 0 7

execute at @e[tag=standoff, tag=selected0] run particle minecraft:dust .15 .15 .15 1 ~ ~1 ~ .1 .3 .1 0 1
execute at @e[tag=standoff, tag=selected1] run particle minecraft:dust .15 .15 .85 1 ~ ~1 ~ .1 .3 .1 0 1
execute at @e[tag=standoff, tag=selected2] run particle minecraft:dust .15 .85 .15 1 ~ ~1 ~ .1 .3 .1 0 1
execute at @e[tag=standoff, tag=selected3] run particle minecraft:dust .15 .85 .85 1 ~ ~1 ~ .1 .3 .1 0 1
execute at @e[tag=standoff, tag=selected4] run particle minecraft:dust .85 .15 .15 1 ~ ~1 ~ .1 .3 .1 0 1
execute at @e[tag=standoff, tag=selected5] run particle minecraft:dust .85 .15 .85 1 ~ ~1 ~ .1 .3 .1 0 1
execute at @e[tag=standoff, tag=selected6] run particle minecraft:dust .85 .85 .15 1 ~ ~1 ~ .1 .3 .1 0 1
execute at @e[tag=standoff, tag=selected7] run particle minecraft:dust .85 .85 .85 1 ~ ~1 ~ .1 .3 .1 0 1
