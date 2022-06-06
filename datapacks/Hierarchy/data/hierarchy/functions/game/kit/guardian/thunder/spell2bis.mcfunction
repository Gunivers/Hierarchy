execute as @p[team=Blue,scores={Class=33,UseTp=1..},tag=IsPlaying,distance=..1] at @s run effect give @e[tag=AffectByOrange,distance=..4] resistance 2 100 true
execute at @p[team=Blue,scores={Class=33,UseTp=1..},tag=IsPlaying,distance=..1] run summon lightning_bolt
execute as @p[team=Blue,scores={Class=33,UseTp=1..},tag=IsPlaying,distance=..1] at @s run scoreboard players operation @a[tag=AffectByBlue,distance=..3] TouchID = @s ID
execute as @p[team=Orange,scores={Class=33,UseTp=1..},tag=IsPlaying,distance=..1] at @s run effect give @e[tag=AffectByBlue,distance=..4] resistance 2 100 true
execute at @p[team=Orange,scores={Class=33,UseTp=1..},tag=IsPlaying,distance=..1] run summon lightning_bolt
execute as @p[team=Orange,scores={Class=33,UseTp=1..},tag=IsPlaying,distance=..1] at @s run scoreboard players operation @a[tag=AffectByOrange,distance=..3] TouchID = @s ID
