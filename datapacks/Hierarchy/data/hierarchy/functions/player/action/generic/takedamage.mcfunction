#Take damage
tag @e[gamemode=adventure,scores={TakeDamage=1999..2999}] add TakeDamage

execute as @e[gamemode=adventure,scores={TakeDamage=999..}] at @s run particle block redstone_block ~ ~1 ~ 0.3 0.5 0.3 0 20 force @a

scoreboard players remove @a[gamemode=adventure,scores={Class=..10,Spell1=10..,TakeDamage=1..999}] Spell1 10
scoreboard players remove @a[gamemode=adventure,scores={Class=..10,Spell2=10..,TakeDamage=1..999}] Spell2 10
scoreboard players remove @a[gamemode=adventure,scores={Class=..10,Spell3=10..,TakeDamage=1..999}] Spell3 10
scoreboard players add @a[gamemode=adventure,scores={Class=..10,TakeDamage=1..999,Mana=..295}] Mana 5
scoreboard players add @a[scores={TakeDamage=1..}] TakeDamage 1000
scoreboard players set @a[scores={TakeDamage=3000..}] TakeDamage 0

#Takes the arrow ID if the damage comes from an arrow
execute as @a[scores={ArrowID=1..}] run scoreboard players operation @s TouchID = @s ArrowID
