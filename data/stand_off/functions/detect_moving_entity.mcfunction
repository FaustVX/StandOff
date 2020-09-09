tag @s[tag=landing] remove landing

tag @s[tag=flying, tag=!landing, nbt={Motion:[0d,0d,0d], OnGround:true}] add landing
tag @s[tag=takeoff, tag=!landing, nbt={Motion:[0d,0d,0d], OnGround:true}] add landing
tag @s[tag=flying, tag=landing] remove flying

tag @s[tag=takeoff, nbt=!{Motion:[0d,0d,0d]}] add flying
tag @s[tag=takeoff] remove takeoff

tag @s[tag=!takeoff, tag=!flying, tag=!landing, nbt=!{Motion:[0d,0d,0d]}] add takeoff
