scoreboard players reset * PlacePawn
scoreboard players enable @a[tag=standoff] precision_shot
playsound minecraft:entity.player.levelup master @a[tag=standoff]
execute as @p[tag=standoff, tag=player2] run function stand_off:next_turn

function stand_off:next_step
