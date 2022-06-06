execute as @a[scores={Spell1=699..},tag=IsPlaying] at @s run playsound block.fire.ambient record @a[distance=..30] ~ ~ ~ 2 2 1
execute at @a[team=Blue,scores={Class=22,Spell1=699..},tag=IsPlaying] at @p[team=Orange,distance=..20] run particle flame ~ ~1 ~ 0.3 1 0.3 0 50 force
execute as @a[team=Blue,scores={Class=22,Spell1=699..},tag=IsPlaying] at @s run scoreboard players set @p[team=Orange,distance=..20] C2 300
execute as @a[team=Orange,scores={Class=22,Spell1=699..},tag=IsPlaying] at @s run scoreboard players set @p[team=Blue,distance=..20] C2 300
execute at @a[team=Orange,scores={Class=22,Spell1=699..},tag=IsPlaying] at @p[team=Blue,distance=..20] run particle flame ~ ~1 ~ 0.3 1 0.3 0 50 force
