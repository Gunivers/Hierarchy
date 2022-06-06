execute at @s[team=Blue] run scoreboard players set @e[scores={EffPoison=..1020},tag=AffectByBlue,distance=..10] EffPoison 1020
execute at @s[team=Blue] run scoreboard players operation @e[tag=AffectByBlue,distance=..10] TouchID = @s ID
execute as @s[team=Blue,scores={IsDead=2..}] run scoreboard players set @e[team=Blue,scores={EffRegen=..1060},tag=IsPlaying] EffRegen 1060
execute at @s[team=Blue] run scoreboard players set @e[scores={EffSlow=2000..3040},tag=AffectByBlue,distance=..10] EffSlow 3040
execute at @s[team=Blue] run scoreboard players set @e[scores={EffSlow=1000..1999},tag=AffectByBlue,distance=..10] EffSlow 2040
execute at @s[team=Blue] run scoreboard players set @e[scores={EffSlow=1..999},tag=AffectByBlue,distance=..10] EffSlow 1040
execute at @s[team=Blue] run scoreboard players set @e[scores={EffSlow=..0},tag=AffectByBlue,distance=..10] EffSlow 40

execute at @s[team=Orange] run scoreboard players set @e[scores={EffPoison=..1020},tag=AffectByOrange,distance=..10] EffPoison 1020
execute at @s[team=Orange] run scoreboard players operation @e[tag=AffectByOrange,distance=..10] TouchID = @s ID
execute as @s[team=Orange,scores={IsDead=2..}] run scoreboard players set @e[team=Orange,scores={EffRegen=..1060},tag=IsPlaying] EffRegen 1060
execute at @s[team=Orange] run scoreboard players set @e[scores={EffSlow=2000..3040},tag=AffectByOrange,distance=..10] EffSlow 3040
execute at @s[team=Orange] run scoreboard players set @e[scores={EffSlow=1000..1999},tag=AffectByOrange,distance=..10] EffSlow 2040
execute at @s[team=Orange] run scoreboard players set @e[scores={EffSlow=1..999},tag=AffectByOrange,distance=..10] EffSlow 1040
execute at @s[team=Orange] run scoreboard players set @e[scores={EffSlow=..0},tag=AffectByOrange,distance=..10] EffSlow 40

