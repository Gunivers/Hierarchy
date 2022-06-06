#Place un joueur dans une team aleatoire si les deux teams ont le meme effectif
scoreboard players set @e[tag=Data] Var1 0
scoreboard players set @e[limit=1,sort=random,type=armor_stand,tag=Data] Var1 1

execute as @e[type=armor_stand,scores={Var1=1..},name=Blue] run team join Blue @e[limit=1,sort=random,type=player,team=Random,tag=Ready]
execute as @e[type=armor_stand,scores={Var1=1..},name=Orange] run team join Orange @e[limit=1,sort=random,type=player,team=Random,tag=Ready]
