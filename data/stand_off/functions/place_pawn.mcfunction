execute as @s[tag=!place_pawn, tag=!placed_pawn] if predicate stand_off:is_sneaking_and_jumping at @s if block ~ ~ ~ minecraft:red_carpet run tag @s add place_pawn
execute at @s[tag=place_pawn, tag=!placed_pawn, tag=player1] align xyz run summon minecraft:armor_stand ~.5 ~.0625 ~.5 {Rotation:[0f,0f], ArmorItems:[{}, {}, {}, {id:"minecraft:iron_helmet", Count:1b}]}
execute at @s[tag=place_pawn, tag=!placed_pawn, tag=player2] align xyz run summon minecraft:armor_stand ~.5 ~.0625 ~.5 {Rotation:[180f,0f], ArmorItems:[{}, {}, {}, {id:"minecraft:golden_helmet", Count:1b}]}
execute as @s[tag=place_pawn, tag=!placed_pawn] run say @s[tag=place_pawn, tag=!placed_pawn] placed pawn
execute as @s[tag=place_pawn, tag=!placed_pawn] run tag @s add placed_pawn
execute as @s[tag=place_pawn, tag=placed_pawn] run tag @s add played
execute as @s[tag=place_pawn, tag=placed_pawn] run tag @s remove place_pawn