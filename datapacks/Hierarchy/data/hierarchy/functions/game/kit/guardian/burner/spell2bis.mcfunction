execute as @e[tag=322B] at @s positioned ~ ~-199 ~ run effect give @e[scores={EffResistance=..100},tag=AffectByOrange,distance=..2] fire_resistance 5 100 true
execute as @e[tag=322B] at @s positioned ~ ~-199 ~ run scoreboard players set @e[scores={EffSlow=..3060},tag=AffectByBlue,distance=..2] EffSlow 3060
execute at @e[tag=322G] run particle flame ~ ~-199 ~ 0.3 0.3 0.3 0.01 1 force
execute as @e[type=boat,tag=322G] at @s run teleport @s ~ ~ ~ ~19.4 ~
execute as @e[type=boat,scores={Timer=..1},tag=322G] at @s positioned ~ ~-199 ~ run playsound minecraft:entity.blaze.ambient record @a[distance=..30] ~ ~ ~ 1 1 0
execute as @e[tag=322R] at @s positioned ~ ~-199 ~ run effect give @e[tag=AffectByBlue,distance=..2] fire_resistance 5 100 true
execute as @e[tag=322R] at @s positioned ~ ~-199 ~ run scoreboard players set @e[scores={EffSlow=..3060},tag=AffectByOrange,distance=..2] EffSlow 3060
