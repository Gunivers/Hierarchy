
execute as @s[team=Orange] run tellraw @a ["",{"text":">> ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" died","color":"red","bold":false}]
execute as @s[team=Blue] run tellraw @a ["",{"text":">> ","color":"red","bold":false},{"selector":"@s","bold":true},{"text":" died","color":"red","bold":false}]
