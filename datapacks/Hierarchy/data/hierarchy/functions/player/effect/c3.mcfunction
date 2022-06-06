execute at @e[scores={C3=1..}] run particle effect ~ ~2 ~ 0 0 0 0 1
execute as @e[scores={C3=1..},tag=AffectByBlue] at @s run scoreboard players set @e[tag=AffectByBlue,distance=1..2] C3 300
execute as @e[scores={C3=1..},tag=AffectByOrange] at @s run scoreboard players set @e[tag=AffectByOrange,distance=1..2] C3 300

scoreboard players remove @a[scores={C3=1..}] C3 1
scoreboard players set @a[scores={LifeState=..400}] C3 0
