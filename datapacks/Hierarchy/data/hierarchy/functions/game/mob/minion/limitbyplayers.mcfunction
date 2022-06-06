tag @s add Self

#Compte le nombre de joueurs par team
scoreboard players set @s Var2 0
execute as @s[team=Orange] as @a[team=Blue,scores={InGame=1..}] run scoreboard players add @e[tag=Self] Var2 1
execute as @s[team=Blue] as @a[team=Orange,scores={InGame=1..}] run scoreboard players add @e[tag=Self] Var2 1

#Détermine si il faut kill ou summon des minions
scoreboard players operation @s Var2 -= @s Var1

tag @s remove Self
