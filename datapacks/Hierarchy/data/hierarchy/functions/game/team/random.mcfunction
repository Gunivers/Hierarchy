#Compte le nombre de joueurs par team
scoreboard players set @e[type=armor_stand,name=Blue] Var1 0
scoreboard players set @e[type=armor_stand,name=Orange] Var1 0
execute as @a[team=Blue,tag=Ready] run scoreboard players add @e[type=armor_stand,name=Blue] Var1 1
execute as @a[team=Orange,tag=Ready] run scoreboard players add @e[type=armor_stand,name=Orange] Var1 1

#Regarde quelle team a le plus de joueurs
scoreboard players operation @e[type=armor_stand,name=Blue] Var1 -= @e[type=armor_stand,name=Orange] Var1

#Place un joueur random dans la team ayant le moins d'effectif
execute as @e[type=armor_stand,scores={Var1=..-1},name=Blue] run team join Blue @e[limit=1,sort=random,type=player,team=Random,tag=Ready]
execute as @e[type=armor_stand,scores={Var1=1..},name=Blue] run team join Orange @e[limit=1,sort=random,type=player,team=Random,tag=Ready]

#Place un joueur dans une team aleatoire si les deux teams ont le meme effectif
execute if entity @e[type=armor_stand,scores={Var1=0},name=Blue] run function hierarchy:game/team/random-child

#Relance la fonction si il reste des joueurs a placer
execute if entity @a[team=Random,tag=Ready] run function hierarchy:game/team/random
