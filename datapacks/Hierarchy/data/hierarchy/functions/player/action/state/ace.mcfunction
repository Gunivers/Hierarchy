scoreboard players set @e[type=armor_stand,tag=Data] Var1 0
execute as @a[team=Blue,scores={LifeState=400..}] run scoreboard players set @e[type=armor_stand,tag=Blue] Var1 1
execute as @a[team=Orange,scores={LifeState=400..}] run scoreboard players set @e[type=armor_stand,tag=Orange] Var1 1
execute as @e[type=armor_stand,scores={Var1=..0},tag=Orange] run tellraw @a {"text":"","extra":[{"text":"\n      ACE\n","bold":"true","color":"dark_aqua"}]}
execute as @e[type=armor_stand,scores={Var1=..0},tag=Blue] run tellraw @a {"text":"","extra":[{"text":"\n      ACE\n","bold":"true","color":"gold"}]}
execute as @e[type=armor_stand,scores={Var1=..0},tag=Data] as @a run playsound entity.wither.death record @s

execute as @e[type=armor_stand,scores={Var1=..0},tag=Data] run tag @e[type=armor_stand,tag=Data] add AceMessage
