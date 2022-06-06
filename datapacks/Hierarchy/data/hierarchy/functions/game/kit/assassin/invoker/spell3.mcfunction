execute as @a[gamemode=adventure,scores={Class=16,InGame=1..,Spell3=-981..-1}] at @s if block ~ ~-0.3 ~ air run scoreboard players set @p[gamemode=adventure,scores={Class=16,InGame=1..,Spell3=-981..-1},distance=..1] Spell3 -980
scoreboard players set @a[gamemode=adventure,scores={Class=16,InGame=1..,Spell3=-977..-1}] Spell3 2400

replaceitem entity @a[gamemode=adventure,scores={Class=16,InGame=1..,Spell3=..-1}] hotbar.3 gunpowder{display:{Name:"{\"text\":\"PRESS SPACE and fall on your target!\",\"color\":\"dark_red\"}"},HideFlags:63} 1
execute as @a[team=Blue,scores={Class=16,Spell3=2400..}] at @s run scoreboard players set @e[team=!Blue,tag=IsPlaying,distance=..5] EffDamage 1
execute as @a[team=Blue,scores={Class=16,Spell3=2400..}] at @s run effect give @e[team=!Blue,tag=IsPlaying,distance=..5] blindness 3 1 true
execute as @a[team=Blue,scores={Class=16,Spell3=2400..}] at @s run scoreboard players set @e[team=!Blue,scores={EffSlow=..3020},tag=IsPlaying,distance=..5] EffSlow 3020
execute as @a[team=Blue,scores={Class=16,Spell3=2400..}] at @s run scoreboard players operation @a[team=Orange,tag=IsPlaying,distance=..5] TouchID = @s ID
execute as @a[team=Blue,scores={Class=16,Spell3=2400..}] at @s run kill @a[team=Orange,scores={Health=..16},tag=IsPlaying,distance=..5]
scoreboard players add @a[gamemode=adventure,scores={Class=16,InGame=1..,Spell3=..-1}] Spell3 1
effect give @a[gamemode=adventure,scores={Class=16,InGame=1..,Spell3=-999..-998}] levitation 1 25 true
execute as @a[gamemode=adventure,scores={Class=16,InGame=1..,Spell3=-999..-998}] at @s run playsound entity.ender_dragon.flap record @a[distance=..30] ~ ~ ~ 2 1 1
scoreboard players set @a[gamemode=adventure,scores={Class=16,HaveElytra=..3,InGame=1..,Spell3=..-1}] EffPlane 3

execute as @a[scores={Class=16,Spell3=2400..}] at @s run playsound entity.ender_dragon.growl record @a[distance=..15] ~ ~ ~ 2 2 1
scoreboard players set @a[gamemode=adventure,scores={Class=16,EffInvulnerable=..3,InGame=1..,Spell3=..-1}] EffInvulnerable 3
scoreboard players set @a[gamemode=adventure,scores={Class=16,InGame=1..,Spell3=..-1}] HaveObjective 0
effect give @a[scores={Class=16,EffPlane=1..},tag=IsPlaying] glowing 1 1 true
execute as @a[team=Orange,scores={Class=16,Spell3=2400..}] at @s run scoreboard players set @e[team=!Orange,tag=IsPlaying,distance=..5] EffDamage 1
execute as @a[team=Orange,scores={Class=16,Spell3=2400..}] at @s run effect give @e[team=!Orange,tag=IsPlaying,distance=..5] blindness 3 1 true
execute as @a[team=Orange,scores={Class=16,Spell3=2400..}] at @s run scoreboard players set @e[team=!Orange,scores={EffSlow=..3020},tag=IsPlaying,distance=..5] EffSlow 3020
execute as @a[team=Orange,scores={Class=16,Spell3=2400..}] at @s run scoreboard players operation @a[team=Blue,tag=IsPlaying,distance=..5] TouchID = @s ID
execute as @a[team=Orange,scores={Class=16,Spell3=2400..}] at @s run kill @a[team=Blue,scores={Health=..16},tag=IsPlaying,distance=..5]

execute at @a[scores={Class=16,Spell3=2400..}] run particle large_smoke ~ ~1 ~ 3 0.5 3 0 100 force
