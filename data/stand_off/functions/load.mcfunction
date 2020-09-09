#define entity $current Current state player
#define entity $stopped
#define entity $waiting_player1
#define entity $waiting_player2
#define entity $init_placing
#define entity $place_pawn
#define entity $init_turn
#define entity $turn_player1
#define entity $turn_player2
#define entity $won

clear @a[tag=standoff] minecraft:written_book{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:diamond_sword{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:netherite_sword{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:golden_carrot{Tags:["standoff"]}
clear @a[tag=standoff] minecraft:fishing_rod{Tags:["standoff"]}

kill @e[type=!minecraft:player, tag=standoff]
effect clear @a[tag=standoff] minecraft:jump_boost
effect clear @a[tag=standoff] minecraft:speed

tag @a[tag=standoff] remove player1
tag @a[tag=standoff] remove player2
tag @a[tag=standoff] remove other
tag @a[tag=standoff] remove standoff

scoreboard objectives remove force_next_turn
scoreboard objectives remove precision_shot
scoreboard objectives remove standoff_health
scoreboard objectives remove PlacedPawn
scoreboard objectives remove PlacePawn
scoreboard objectives remove standoff_state
scoreboard objectives remove join_standoff
scoreboard objectives add join_standoff trigger
scoreboard objectives add standoff_state dummy
scoreboard objectives add PlacePawn trigger
scoreboard objectives add PlacedPawn dummy
scoreboard objectives add standoff_health dummy
scoreboard objectives add precision_shot trigger
scoreboard objectives add force_next_turn trigger

scoreboard players enable @a join_standoff
# scoreboard objectives setdisplay sidebar standoff_state
scoreboard players set $stopped standoff_state 0
scoreboard players set $waiting_player1 standoff_state 1
scoreboard players set $waiting_player2 standoff_state 2
scoreboard players set $init_placing standoff_state 3
scoreboard players set $place_pawn standoff_state 4
scoreboard players set $init_turn standoff_state 5
scoreboard players set $turn_player1 standoff_state 6
scoreboard players set $turn_player2 standoff_state 7
scoreboard players set $won standoff_state 8
scoreboard players set $current standoff_state 1

say Welcome to 'Stand Off'
