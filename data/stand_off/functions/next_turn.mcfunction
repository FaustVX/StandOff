tag @p[tag=standoff, tag=other] remove other
tag @s add other

clear @a[tag=standoff] minecraft:diamond_sword{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:netherite_sword{Tags:["standoff"]}

playsound minecraft:entity.experience_orb.pickup master @p[tag=standoff, tag=!other]

execute as @p[tag=standoff, tag=!other] run give @s diamond_sword{Enchantments:[{id:"minecraft:knockback", lvl:1}], Tags:["standoff"], Unbreakable:true}
execute as @p[tag=standoff, tag=!other] run give @s netherite_sword{Enchantments:[{id:"minecraft:knockback", lvl:2}], Tags:["standoff"], Unbreakable:true}

execute as @e[type=minecraft:armor_stand, tag=standoff] run data modify entity @s Invulnerable set value true
execute if entity @p[tag=standoff, tag=!other, tag=player1] as @e[type=minecraft:armor_stand, tag=standoff, tag=player1] run data modify entity @s Invulnerable set value false
execute if entity @p[tag=standoff, tag=!other, tag=player2] as @e[type=minecraft:armor_stand, tag=standoff, tag=player2] run data modify entity @s Invulnerable set value false
