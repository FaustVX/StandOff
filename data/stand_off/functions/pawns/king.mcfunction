data modify entity @s Health set value 3f
data modify entity @s Small set value false
data modify entity @s CustomNameVisible set value true
data merge entity @s {CustomName:"{\"text\":\"King\"}"}
replaceitem entity @s weapon.mainhand minecraft:iron_sword
replaceitem entity @s weapon.offhand minecraft:shield
replaceitem entity @s armor.head minecraft:golden_helmet
replaceitem entity @s armor.legs minecraft:golden_leggings
