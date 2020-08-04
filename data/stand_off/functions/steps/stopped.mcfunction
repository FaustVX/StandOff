execute as @a[scores={JoinStandOff=1..},limit=1] if entity @a[tag=!player1] run tag @s add player1
scoreboard players reset @a[tag=player1] JoinStandOff
execute as @a[scores={JoinStandOff=1..},limit=1] if entity @a[tag=player1] if entity @a[tag=!player2] run tag @s add player2
scoreboard players reset @a JoinStandOff
execute if entity @e[tag=player1] if entity @e[tag=player2] run function stand_off:next_step
execute unless entity @e[tag=player1] unless entity @e[tag=player2] run scoreboard players enable @a[tag=!player1, tag=!player2] JoinStandOff

tag @e[tag=player1] add standoff
tag @e[tag=player2] add standoff

scoreboard players set @e[tag=standoff] PlacedPawn 0

execute if entity @e[tag=player1] if entity @e[tag=player2] run say @e[tag=standoff] are playing Stand Off