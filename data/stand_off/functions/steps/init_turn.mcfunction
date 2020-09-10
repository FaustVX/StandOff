scoreboard players reset * PlacePawn
scoreboard players enable @a[tag=standoff] precision_shot
scoreboard players enable @a[tag=standoff] retreat
scoreboard players enable @a[tag=standoff] switch_place
playsound minecraft:entity.player.levelup master @a[tag=standoff]
execute as @p[tag=standoff, tag=player2] run function stand_off:next_turn
tag @a[tag=standoff] remove show_placable

function stand_off:next_step
