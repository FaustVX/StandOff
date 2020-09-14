execute store result score @s standoff_health run data get entity @s Health
scoreboard players operation @s standoff_health -= @e[type=minecraft:armor_stand, tag=standoff, tag=landing, sort=nearest, limit=1] attack_damage
execute at @s[nbt=!{Small:true}] run particle minecraft:damage_indicator ~ ~2 ~
execute at @s[nbt= {Small:true}] run particle minecraft:damage_indicator ~ ~1 ~
execute at @p[tag=standoff, tag=other] anchored eyes run particle minecraft:damage_indicator ^ ^ ^1
execute store result entity @s Health double 1 run scoreboard players get @s standoff_health
tellraw @a[tag=standoff] ["", {"selector": "@p[tag=standoff, tag=other]", "color": "red"}, {"text": " lose "}, {"score": {"name": "@e[type=minecraft:armor_stand, tag=standoff, tag=landing, sort=nearest, limit=1]", "objective": "attack_damage"}, "color": "gold"}, {"text": " point against "}, {"selector": "@p[tag=standoff, tag=!other]", "color": "dark_green"}]
scoreboard players reset * standoff_health
