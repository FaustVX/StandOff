tag @p[tag=standoff, tag=other] remove other
tag @s add other

clear @a[tag=standoff] minecraft:written_book{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:diamond_sword{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:netherite_sword{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:fishing_rod{Tags:["standoff"]}

playsound minecraft:entity.experience_orb.pickup master @p[tag=standoff, tag=!other]

execute as @p[tag=standoff, tag=!other] run give @s diamond_sword{Enchantments:[{id:"minecraft:knockback", lvl:1}], Tags:["standoff"], Unbreakable:true}
execute as @p[tag=standoff, tag=!other] run give @s netherite_sword{Enchantments:[{id:"minecraft:knockback", lvl:2}], Tags:["standoff"], Unbreakable:true}
execute as @p[tag=standoff, tag=!other] run give @s minecraft:written_book{pages:["[\"\",{\"text\":\"\\n\"},{\"text\":\"[Precision Shot]\",\"underlined\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger precision_shot set 1\"},\"hoverEvent\":{\"action\":\"show_item\",\"value\":\"{\\\"id\\\":\\\"minecraft:fishing_rod\\\",\\\"Count\\\":1}\"}},{\"text\":\"\\n\"}]"],title:"Bonus",author:"Stand Off", Tags:["standoff"]}

execute as @e[type=minecraft:armor_stand, tag=standoff] run data modify entity @s Invulnerable set value true
execute if entity @p[tag=standoff, tag=!other, tag=player1] as @e[type=minecraft:armor_stand, tag=standoff, tag=player1] run data modify entity @s Invulnerable set value false
execute if entity @p[tag=standoff, tag=!other, tag=player2] as @e[type=minecraft:armor_stand, tag=standoff, tag=player2] run data modify entity @s Invulnerable set value false
