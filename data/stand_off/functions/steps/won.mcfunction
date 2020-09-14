title @a[tag=standoff] subtitle ["", {"text": "with a total of "}, {"score": {"objective": "PlacedPawn", "name": "@s"}, "color": "red"}, {"text": " points"}]
title @a[tag=standoff] title ["", {"selector": "@s", "color": "gold"}, {"text": " won the game !"}]
tellraw @a[tag=standoff] ["", {"text": "The winner is "}, {"selector": "@s", "color": "dark_green"}, {"text": ", with a total of "}, {"score": {"objective": "PlacedPawn", "name": "@s"}, "color": "gold"}, {"text": " points, against "}, {"selector": "@p[tag=standoff, tag=!other]", "color": "red"}]
scoreboard players set $current standoff_state 0
