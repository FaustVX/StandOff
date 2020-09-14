tag @p[tag=standoff, tag=other] remove other
tag @s add other
tag @p[tag=standoff, tag=show_placable] remove show_placable
tag @p[tag=standoff, tag=!other] add show_placable

clear @a[tag=standoff] minecraft:written_book{Tags:["standoff"]}
playsound minecraft:entity.experience_orb.pickup master @p[tag=standoff, tag=!other]
execute as @p[tag=standoff, tag=!other] run give @s minecraft:written_book{pages:["[\"\",{\"text\":\"[Place Pawn]\",\"underlined\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger PlacePawn set 1\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[\"\",{\"text\":\"🗡\",\"color\":\"dark_green\"},{\"text\":\"/\"},{\"text\":\"♥\",\"color\":\"red\"}]}},{\"text\":\"\\n\"},{\"text\":\"[Place King]\",\"underlined\":true,\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger PlacePawn set 2\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[\"\",{\"text\":\"🗡🗡\",\"color\":\"dark_green\"},{\"text\":\"/\"},{\"text\":\"♥♥♥\",\"color\":\"red\"}]}},{\"text\":\"\\n\"}]"],title:"Place Pawns",author:"Stand Off", Tags:["standoff"]}
execute as @p[tag=standoff, tag=player1] if score @p[tag=standoff, tag=other] PlacedPawn = @p[tag=standoff, tag=!other] PlacedPawn run give @s minecraft:written_book{pages:["[\"\",{\"text\":\"\\n\"},{\"text\":\"[Next Step]\",\"bold\":true,\"underlined\":true,\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger PlacePawn set -1\"},\"hoverEvent\":{\"action\":\"show_text\",\"contents\":{\"text\":\"Stop placing pawns\",\"color\":\"red\"}}},{\"text\":\"\\n\"}]"],title:"Stop Placing Pawn",author:"Stand Off", Tags:["standoff"]}
