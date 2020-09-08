tag @s[tag=!takeoff, tag=!flying, tag= landing, nbt= {Motion:[0d,0d,0d]}] remove landing

tag @s[tag=!takeoff, tag= flying, tag=!landing, nbt= {Motion:[0d,0d,0d]}] add landing
tag @s[tag=!takeoff, tag= flying, tag= landing, nbt= {Motion:[0d,0d,0d]}] remove flying

tag @s[tag= takeoff, tag=!flying, tag=!landing, nbt=!{Motion:[0d,0d,0d]}] add flying
tag @s[tag= takeoff, tag= flying, tag=!landing, nbt=!{Motion:[0d,0d,0d]}] remove takeoff

tag @s[tag=!takeoff, tag=!flying, tag=!landing, nbt=!{Motion:[0d,0d,0d]}] add takeoff
