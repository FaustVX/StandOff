data modify entity @s Health set value 1f
data modify entity @s Small set value true
data modify entity @s CustomNameVisible set value true
data merge entity @s {CustomName:"{\"text\":\"Pawn\"}"}
replaceitem entity @s armor.head minecraft:iron_helmet
replaceitem entity @s armor.legs minecraft:chainmail_helmet
