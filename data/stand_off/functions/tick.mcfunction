execute if score $current standoff_state = $stopped standoff_state run function stand_off:load
execute if score $current standoff_state >= $waiting_player1 standoff_state if score $current standoff_state <= $waiting_player2 standoff_state run scoreboard players enable @a[tag=!standoff] join_standoff
execute if score $current standoff_state = $waiting_player1 standoff_state if entity @a[scores={join_standoff=1..}] run function stand_off:steps/wait_player1
execute if score $current standoff_state = $waiting_player2 standoff_state if entity @a[scores={join_standoff=1..}] run function stand_off:steps/wait_player2
execute if score $current standoff_state = $init_game standoff_state run function stand_off:steps/init_game
