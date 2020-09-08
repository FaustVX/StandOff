execute unless entity @e[type=minecraft:armor_stand, distance=..1, tag=standoff] align xyz if block ~ ~ ~ #stand_off:placable positioned ~.5 ~.0625 ~.5 run function stand_off:pawns/place

execute if entity @s[tag=placed] if score @s PlacedPawn >= @p[tag=standoff, tag=other] PlacedPawn run function stand_off:next_player
tag @s remove placed

scoreboard players reset * PlacePawn
scoreboard players enable @a[tag=standoff] PlacePawn
