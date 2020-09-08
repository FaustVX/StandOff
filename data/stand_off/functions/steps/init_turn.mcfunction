playsound minecraft:entity.player.levelup master @a[tag=standoff]
clear @a[tag=standoff] minecraft:written_book{Tags:["standoff"]}
execute as @p[tag=standoff, tag=player2] run function stand_off:next_turn

function stand_off:next_step
