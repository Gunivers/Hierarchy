tag @s add Source

execute at @s[team=Blue] as @a[team=Blue,tag=IsPlaying] at @s run scoreboard players set @e[team=!Blue,scores={EffDamage=..1},tag=IsPlaying,distance=..7] EffDamage 1002
execute at @s[team=Blue] as @a[team=Blue,tag=IsPlaying] at @s run scoreboard players set @e[team=!Blue,scores={EffSlow=..3020},tag=IsPlaying,distance=..7] EffSlow 3020
execute at @s[team=Blue] as @a[team=Blue,tag=IsPlaying] at @s run scoreboard players operation @e[team=!Blue,tag=IsPlaying,distance=..7] TouchID = @a[tag=Source] ID
execute at @s[team=Blue] as @a[team=Blue,tag=IsPlaying] at @s run playsound entity.blaze.ambient record @a[distance=..30] ~ ~ ~ 2 2 1
execute at @s[team=Blue] as @a[team=Blue,tag=IsPlaying] at @s run playsound entity.firework.blast_far record @a[distance=..30] ~ ~ ~ 2 1 1
execute at @s[team=Orange] as @a[team=Orange,tag=IsPlaying] at @s run scoreboard players set @e[team=!Orange,scores={EffDamage=..1},tag=IsPlaying,distance=..7] EffDamage 1002
execute at @s[team=Orange] as @a[team=Orange,tag=IsPlaying] at @s run scoreboard players set @e[team=!Orange,scores={EffSlow=..3020},tag=IsPlaying,distance=..7] EffSlow 3020
execute at @s[team=Orange] as @a[team=Orange,tag=IsPlaying] at @s run scoreboard players operation @e[team=!Orange,tag=IsPlaying,distance=..7] TouchID = @a[tag=Source] ID
execute at @s[team=Orange] as @a[team=Orange,tag=IsPlaying] at @s run playsound entity.blaze.ambient record @a[distance=..30] ~ ~ ~ 2 2 1
execute at @s[team=Orange] as @a[team=Orange,tag=IsPlaying] at @s run playsound entity.firework.blast_far record @a[distance=..30] ~ ~ ~ 2 1 1

execute at @s[team=Orange] at @a[team=Orange,tag=IsPlaying] run particle firework ~ ~1 ~ 3 3 3 0 100 force
execute at @s[team=Blue] at @a[team=Blue,tag=IsPlaying] run particle firework ~ ~1 ~ 3 3 3 0.2 100 force

tag @s remove Source
