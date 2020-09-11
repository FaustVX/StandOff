execute if score $current standoff_state = $stopped standoff_state run function stand_off:load
execute if score $current standoff_state >= $waiting_player1 standoff_state if score $current standoff_state <= $waiting_player2 standoff_state run scoreboard players enable @a[tag=!standoff] join_standoff
execute if score $current standoff_state = $waiting_player1 standoff_state as @r[scores={join_standoff=1..}] run function stand_off:steps/wait_player
execute if score $current standoff_state = $waiting_player2 standoff_state as @r[scores={join_standoff=1..}] run function stand_off:steps/wait_player
execute if score $current standoff_state = $init_placing standoff_state run function stand_off:steps/init_placing
execute if score $current standoff_state >= $place_pawn standoff_state run function stand_off:show_health
execute if score $current standoff_state >= $init_placing standoff_state run function stand_off:particles
execute if score $current standoff_state = $place_pawn standoff_state as @p[tag=standoff, tag=player1, scores={PlacePawn=-1}] run scoreboard players operation $current standoff_state = $init_turn standoff_state
execute if score $current standoff_state = $place_pawn standoff_state as @p[tag=standoff, tag=!other, scores={PlacePawn=1..}] at @s run function stand_off:steps/place_pawn
execute if score $current standoff_state = $init_turn standoff_state run function stand_off:steps/init_turn
execute if score $current standoff_state = $turn_player standoff_state as @p[tag=standoff, tag=!other] at @s run function stand_off:steps/turn_player
execute if score $current standoff_state = $won standoff_state as @p[tag=standoff, tag=other] at @s run function stand_off:steps/won
