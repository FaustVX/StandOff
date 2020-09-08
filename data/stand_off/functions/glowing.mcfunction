execute as @p[tag=standoff, tag=other] if entity @s[tag=player1] run effect clear @e[tag=standoff, tag=player1] minecraft:glowing
execute as @p[tag=standoff, tag=other] if entity @s[tag=player2] run effect clear @e[tag=standoff, tag=player2] minecraft:glowing
execute as @p[tag=standoff, tag=!other] if entity @s[tag=player1] run effect give @e[tag=standoff, tag=player1] minecraft:glowing 999999 0 true
execute as @p[tag=standoff, tag=!other] if entity @s[tag=player2] run effect give @e[tag=standoff, tag=player2] minecraft:glowing 999999 0 true
