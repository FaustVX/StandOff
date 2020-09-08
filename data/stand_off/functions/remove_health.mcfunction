execute store result score @s standoff_health run data get entity @s Health
scoreboard players remove @s standoff_health 1
execute store result entity @s Health double 1 run scoreboard players get @s standoff_health
scoreboard players remove @p[tag=standoff, tag=other] PlacedPawn 1
tellraw @a[tag=standoff] ["", {"selector": "@p[tag=standoff, tag=other]", "color": "red"}, {"text": " lose 1 point against "}, {"selector": "@p[tag=standoff, tag=!other]", "color": "dark_green"}]
scoreboard players reset @s standoff_health
