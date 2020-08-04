tag @a remove played

tag @a[tag=!player1, tag=player2] remove player2
tag @a[tag=player1, tag=!player2] add player2
tag @a[tag=player1, tag=player2] remove player1
tag @a[tag=!player1, tag=!player2] add player1

say @a[tag=player1] is player 1
say @a[tag=player2] is player 2