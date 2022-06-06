scoreboard players reset Orange Info
scoreboard players reset Blue Info
execute as @e[type=armor_stand,scores={Timer=1},limit=1,sort=nearest] at @s run scoreboard players reset Orange Info
scoreboard players reset Blue Info
scoreboard players set PlayersInOrange: Info 0
scoreboard players set PlayersInBlue: Info 0
scoreboard players set PlayersInRandom: Info 0
scoreboard players operation PlayersInRandom: Info += @a[team=Random,tag=Ready] 1
scoreboard players operation PlayersInOrange: Info += @a[team=Orange,tag=Ready] 1
scoreboard players operation PlayersInBlue: Info += @a[team=Blue,tag=Ready] 1
execute as @e[type=armor_stand,scores={Timer=2},name=Blue] run title @a[scores={InGame=..0}] times 0 5 10
scoreboard players set ------ Info -1
