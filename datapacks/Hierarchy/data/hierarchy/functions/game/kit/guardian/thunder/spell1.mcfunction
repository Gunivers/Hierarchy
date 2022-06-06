execute at @e[name=RotBase,tag=331B] positioned ~ ~-200 ~ at @e[type=!player,scores={Class=1..},distance=..10] run particle cloud ~ ~0.2 ~ 0 0 0 0.5 10 force
execute as @e[name=RotBase,tag=331B] at @s positioned ~ ~-200 ~ run kill @e[type=!player,scores={Class=1..},tag=Projectile,distance=..10]
execute as @e[name=RotBase,tag=331B] at @s positioned ~ ~-200 ~ run kill @e[type=skeleton,tag=AffectByBlue,distance=..10]
execute as @e[name=RotBase,tag=331B] at @s positioned ~ ~-200 ~ run kill @e[type=wither_skeleton,tag=AffectByBlue,distance=..10]
execute as @e[name=RotBase,tag=331B] at @s positioned ~ ~-200 ~ run kill @e[type=skeleton_horse,tag=AffectByBlue,distance=..10]
execute as @e[name=RotBase,tag=331B] at @s positioned ~ ~-200 ~ run scoreboard players set @e[tag=AffectByOrange,distance=..10] EffInvulnerable 2
execute as @e[type=boat,tag=331G] at @s run teleport @s ~ ~ ~ ~19.4 ~
execute at @e[name=End,tag=331G] run particle cloud ~ ~-198 ~ 0.3 0.3 0.3 0.01 3 force
execute at @e[name=RotBase,tag=331G] run particle cloud ~ ~-196 ~ 0 4 0 0 10 force
execute at @e[name=RotBase,tag=331R] positioned ~ ~-200 ~ at @e[type=!player,scores={Class=..-1},distance=..10] run particle cloud ~ ~0.2 ~ 0 0 0 0.5 10 force
execute as @e[name=RotBase,tag=331R] at @s positioned ~ ~-200 ~ run kill @e[type=!player,scores={Class=..-1},tag=Projectile,distance=..10]
execute as @e[name=RotBase,tag=331R] at @s positioned ~ ~-200 ~ run kill @e[type=skeleton,tag=AffectByOrange,distance=..10]
execute as @e[name=RotBase,tag=331R] at @s positioned ~ ~-200 ~ run kill @e[type=wither_skeleton,tag=AffectByOrange,distance=..10]
execute as @e[name=RotBase,tag=331R] at @s positioned ~ ~-200 ~ run kill @e[type=skeleton_horse,tag=AffectByOrange,distance=..10]
execute as @e[name=RotBase,tag=331R] at @s positioned ~ ~-200 ~ run scoreboard players set @e[tag=AffectByBlue,distance=..10] EffInvulnerable 2
