execute as @a[team=Blue,scores={Class=15,Spell2=499..}] at @s run scoreboard players set @e[team=!Blue,scores={EffScare=..60,LifeState=500..},distance=..7] EffScare 60
execute as @a[team=Blue,scores={Class=15,Spell2=499..}] at @s run scoreboard players set @e[team=!Blue,scores={LifeState=500..},distance=..7] EffDamage 2
execute as @a[team=Blue,scores={Class=15,Spell2=499..}] at @s run scoreboard players operation @e[team=!Blue,scores={LifeState=500..},distance=..7] TouchID = @s ID
execute as @a[scores={Class=15,Spell2=499..}] at @s run playsound block.redstone_torch.burnout record @a[distance=..30] ~ ~ ~ 2 1 1
execute as @a[team=Orange,scores={Class=15,Spell2=499..}] at @s run scoreboard players set @e[team=!Orange,scores={EffScare=..60,LifeState=500..},distance=..7] EffScare 60
execute as @a[team=Orange,scores={Class=15,Spell2=499..}] at @s run scoreboard players set @e[team=!Orange,scores={LifeState=500..},distance=..7] EffDamage 2
execute as @a[team=Orange,scores={Class=15,Spell2=499..}] at @s run scoreboard players operation @e[team=!Orange,scores={LifeState=500..},distance=..7] TouchID = @s ID
execute at @a[scores={Class=15,Spell2=499..}] run particle cloud ~ ~0.3 ~ 4 0 4 0 50 force
