execute as @p[team=Blue,scores={Class=32,UseTp=1..},tag=IsPlaying,distance=..1] at @s run scoreboard players set @a[scores={EffDamage=..2},tag=AffectByBlue,distance=..7] EffDamage 2
execute as @p[team=Blue,scores={Class=32,UseTp=1..},tag=IsPlaying,distance=..1] at @s run scoreboard players operation @a[tag=AffectByBlue,distance=..7] TouchID = @s ID
execute at @p[scores={Class=32,UseTp=1..},tag=IsPlaying,distance=..1] run particle flame ~ ~0.1 ~ 5 0 5 0.1 100 force
execute as @p[team=Orange,scores={Class=32,UseTp=1..},tag=IsPlaying,distance=..1] at @s run scoreboard players set @a[scores={EffDamage=..2},tag=AffectByOrange,distance=..7] EffDamage 2
execute as @p[team=Orange,scores={Class=32,UseTp=1..},tag=IsPlaying,distance=..1] at @s run scoreboard players operation @a[tag=AffectByOrange,distance=..7] TouchID = @s ID
