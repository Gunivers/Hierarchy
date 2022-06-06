tag @s[scores={Menu=1000}] add Surrend
tag @s[scores={Menu=1001}] remove Surrend

scoreboard players set @e[type=armor_stand,name=Blue] Var1 0
scoreboard players set @e[type=armor_stand,name=Blue] Var2 0

#Counts the number of players
execute as @s[team=Blue] as @a[team=Blue,scores={InGame=1..}] run scoreboard players add @e[type=armor_stand,name=Blue] Var2 1
execute as @s[team=Orange] as @a[team=Orange,scores={InGame=1..}] run scoreboard players add @e[type=armor_stand,name=Blue] Var2 1

#Counts the number of surrends
execute as @s[team=Blue] as @a[team=Blue,scores={InGame=1..},tag=Surrend] run scoreboard players add @e[type=armor_stand,name=Blue] Var1 1
execute as @s[team=Orange] as @a[team=Orange,scores={InGame=1..},tag=Surrend] run scoreboard players add @e[type=armor_stand,name=Blue] Var1 1

#Tells the team
execute as @s[team=Blue,scores={Menu=1000}] run tellraw @a[team=Blue,scores={InGame=1}] {"text":"> ","bold":"true","extra":[{"selector":"@s"},{"text":" voted to surrender. Votes: (","bold":"false"},{"score":{"name":"@e[type=armor_stand,name=Blue]","objective":"Var1"},"color":"gold"},{"text":"/","bold":"false"},{"score":{"name":"@e[type=armor_stand,name=Blue]","objective":"Var2"},"color":"gold"},{"text":")","bold":"false"}]}
execute as @s[team=Orange,scores={Menu=1000}] run tellraw @a[team=Orange,scores={InGame=1}] {"text":"> ","bold":"true","extra":[{"selector":"@s"},{"text":" voted to surrender. Votes: (","bold":"false"},{"score":{"name":"@e[type=armor_stand,name=Blue]","objective":"Var1"},"color":"gold"},{"text":"/","bold":"false"},{"score":{"name":"@e[type=armor_stand,name=Blue]","objective":"Var2"},"color":"gold"},{"text":")","bold":"false"}]}

execute as @s[team=Blue,scores={Menu=1001}] run tellraw @a[team=Blue,scores={InGame=1}] {"text":"> ","bold":"true","extra":[{"selector":"@s"},{"text":" want to keep fighting. Votes: (","bold":"false"},{"score":{"name":"@e[type=armor_stand,name=Blue]","objective":"Var1"},"color":"gold"},{"text":"/","bold":"false"},{"score":{"name":"@e[type=armor_stand,name=Blue]","objective":"Var2"},"color":"gold"},{"text":")","bold":"false"}]}
execute as @s[team=Orange,scores={Menu=1001}] run tellraw @a[team=Orange,scores={InGame=1}] {"text":"> ","bold":"true","extra":[{"selector":"@s"},{"text":" want to keep fighting. Votes: (","bold":"false"},{"score":{"name":"@e[type=armor_stand,name=Blue]","objective":"Var1"},"color":"gold"},{"text":"/","bold":"false"},{"score":{"name":"@e[type=armor_stand,name=Blue]","objective":"Var2"},"color":"gold"},{"text":")","bold":"false"}]}

#Sound
execute as @s[team=Blue] run playsound block.note.snare ambient @a[team=Blue]
execute as @s[team=Orange] run playsound block.note.snare ambient @a[team=Orange]

clear @s written_book
scoreboard players set @s Menu 0
