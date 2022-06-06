
execute as @s[team=Orange] run tellraw @a ["",{"text":">> ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" was killed by ","color":"red","bold":false},{"selector":"@p[scores={ID=0},team=Blue]","color":"none","bold":false}]
execute as @s[team=Blue] run tellraw @a ["",{"text":">> ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" was killed by ","color":"red","bold":false},{"selector":"@p[scores={ID=0},team=Orange]","color":"none","bold":false}]

execute as @a[scores={ID=0,KillStreak=3}] run tellraw @a ["",{"text":" > ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" TRIPLEKILL!!!","color":"red","bold":false}]
execute as @a[scores={ID=0,KillStreak=4}] run tellraw @a ["",{"text":" > ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" QUADRAKILL!!!!","color":"red","bold":false}]
execute as @a[scores={ID=0,KillStreak=5}] run tellraw @a ["",{"text":" > ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" PENTAKILL!!!!!","color":"red","bold":false}]
execute as @a[scores={ID=0,KillStreak=6..9}] run tellraw @a ["",{"text":" > ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" UNSTOPABLE!!!!!","color":"red","bold":false}]
execute as @a[scores={ID=0,KillStreak=10..}] run tellraw @a ["",{"text":" > ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" DEFINE HIS HIERARCHY!!!","color":"red","bold":false}]
execute as @a[scores={ID=0,KillStreak=3..}] run playsound minecraft:entity.enderdragon.growl record @a


execute as @s[scores={KillStreak=3..}] run tellraw @a ["",{"text":" > ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":"'s serial was stopped","color":"red","bold":false}]
