tag @p[tag=standoff, tag=other] remove other
tag @s add other

clear @a[tag=standoff] minecraft:written_book{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:diamond_sword{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:netherite_sword{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:fishing_rod{Tags:["standoff"]}

playsound minecraft:entity.experience_orb.pickup master @p[tag=standoff, tag=!other]
execute as @p[tag=standoff, tag=!other] unless entity @p[tag=standoff, scores={PlacedPawn=..0}] run tellraw @s ["", {"text": "It's your turn"}]
execute as @p[tag=standoff, tag= other] unless entity @p[tag=standoff, scores={PlacedPawn=..0}] run tellraw @s ["", {"text": "It's "}, {"selector": "@p[tag=standoff, tag=!other]", "color": "aqua"}, {"text": "'s turn"}]

execute as @p[tag=standoff, tag=!other] run give @s diamond_sword{Enchantments:[{id:"minecraft:knockback", lvl:1}], Tags:["standoff"], Unbreakable:true}
execute as @p[tag=standoff, tag=!other] run give @s netherite_sword{Enchantments:[{id:"minecraft:knockback", lvl:2}], Tags:["standoff"], Unbreakable:true}
execute as @p[tag=standoff, tag=!other] run give @s minecraft:written_book{pages:["[\"\",{\"text\":\"[Precision Shot]\",\"underlined\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger precision_shot set 1\"}},{\"text\":\"\\n\"},{\"text\":\"\\n\"},{\"text\":\"Drag an armor stand with a fishing rod\"}]","[\"\",{\"text\":\"[Retreat]\",\"underlined\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger retreat set 1\"}},{\"text\":\"\\n\"},{\"text\":\"\\n\"},{\"text\":\"Sneak close to any of your armor stand, then sneak on any of your spawn point to teleport your armor stand\"}]","[\"\",{\"text\":\"[Switch Place]\",\"underlined\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger switch_place set 1\"}},{\"text\":\"\\n\"},{\"text\":\"\\n\"},{\"text\":\"Sneak close to any of your armor stand, then sneak close to any other armor stand to switch these armor stands\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[\"\"]}}]","[\"\",{\"text\":\"[Double Move]\",\"underlined\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger double_move set 1\"}},{\"text\":\"\\n\"},{\"text\":\"\\n\"},{\"text\":\"Hit two of your armor_stand in the same turn\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[\"\"]}}]","{\"text\":\"[Force Next Turn]\",\"bold\":true,\"underlined\":true,\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger force_next_turn set 1\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":{\"text\":\"If you're stuck in the same turn, after hitting a pawn\"}}}"],title:"Bonus",author:"Stand Off", Tags:["standoff"]}

execute as @e[type=minecraft:armor_stand, tag=standoff] run data modify entity @s Marker set value true
execute if entity @p[tag=standoff, tag=!other, tag=player1] as @e[type=minecraft:armor_stand, tag=standoff, tag=player1] run data modify entity @s Marker set value false
execute if entity @p[tag=standoff, tag=!other, tag=player2] as @e[type=minecraft:armor_stand, tag=standoff, tag=player2] run data modify entity @s Marker set value false
