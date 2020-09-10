summon minecraft:armor_stand ~ ~ ~ {NoBasePlate:true, NoAI:true, ShowArms:true, Tags:["standoff"], Marker:true, DisabledSlots:2039583, Pose:{RightArm:[280f, 0f, 0f]}}
execute if score @s PlacePawn matches 1 as @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=standoff] run function stand_off:pawns/pawn
execute if score @s PlacePawn matches 2 as @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=standoff] run function stand_off:pawns/king
function stand_off:pawns/set_player

execute store result score $current PlacedPawn run data get entity @e[type=minecraft:armor_stand, sort=nearest, limit=1, tag=standoff] Health 1
scoreboard players operation @s PlacedPawn += $current PlacedPawn
scoreboard players reset $current PlacedPawn
tag @s add placed
