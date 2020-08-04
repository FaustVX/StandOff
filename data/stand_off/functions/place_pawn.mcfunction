execute as @s[tag=!place_pawn, tag=!placed_pawn] at @s if block ~ ~ ~ minecraft:red_carpet unless entity @e[type=minecraft:armor_stand, distance=..1] run tag @s add place_pawn
execute at @s[tag=place_pawn, tag=!placed_pawn] align xyz run summon minecraft:armor_stand ~.5 ~.0625 ~.5 {Tags:["not_set"], ShowArms:1b, NoBasePlate:1b, DisabledSlots:2097151}
execute as @s[tag=place_pawn, tag=!placed_pawn, tag=player1] run tag @e[type=minecraft:armor_stand, tag=not_set] add player1
execute as @s[tag=place_pawn, tag=!placed_pawn, tag=player2] run tag @e[type=minecraft:armor_stand, tag=not_set] add player2
execute as @e[type=minecraft:armor_stand, tag=not_set, tag=player1] run data merge entity @s {Rotation:[0f,0f], ArmorItems:[{id:"minecraft:iron_boots", Count:1b}, {id:"minecraft:iron_leggings", Count:1b}, {id:"minecraft:iron_chestplate", Count:1b}, {id:"minecraft:iron_helmet", Count:1b}]}
execute as @e[type=minecraft:armor_stand, tag=not_set, tag=player2] run data merge entity @s {Rotation:[180f,0f], ArmorItems:[{id:"minecraft:golden_boots", Count:1b}, {id:"minecraft:golden_leggings", Count:1b}, {id:"minecraft:golden_chestplate", Count:1b}, {id:"minecraft:golden_helmet", Count:1b}]}
execute as @e[type=minecraft:armor_stand, tag=not_set] run tag @s remove not_set
execute as @s[tag=place_pawn, tag=!placed_pawn] run say @s[tag=place_pawn, tag=!placed_pawn] placed pawn
execute as @s[tag=place_pawn, tag=!placed_pawn] run tag @s add placed_pawn
execute as @s[tag=place_pawn, tag=placed_pawn] run tag @s add played
execute as @s[tag=place_pawn, tag=placed_pawn] run scoreboard players add @s PlacedPawn 1
execute as @s[tag=place_pawn, tag=placed_pawn] run tag @s remove place_pawn

