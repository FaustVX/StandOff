#define entity $current Current state player
#define entity $stopped
#define entity $waiting_player1
#define entity $waiting_player2
#define entity $init_game

tag @a[tag=standoff] remove player1
tag @a[tag=standoff] remove player2
tag @a[tag=standoff] remove standoff

scoreboard objectives remove standoff_state
scoreboard objectives remove join_standoff
scoreboard objectives add join_standoff trigger
scoreboard objectives add standoff_state dummy

scoreboard players enable @a join_standoff
scoreboard objectives setdisplay sidebar standoff_state
scoreboard players set $stopped standoff_state 0
scoreboard players set $waiting_player1 standoff_state 1
scoreboard players set $waiting_player2 standoff_state 2
scoreboard players set $init_game standoff_state 3
scoreboard players set $current standoff_state 1

say Welcome to 'Stand Off'
