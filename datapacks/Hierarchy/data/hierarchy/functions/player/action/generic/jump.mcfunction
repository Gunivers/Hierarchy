scoreboard players set @a[scores={Jump=5..}] Jump 0
scoreboard players add @a[scores={Jump=1..}] Jump 1
execute as @a[scores={Jump=2}] at @s run particle block stone ~ ~0.1 ~ 0.1 0.1 0.1 0 10 force @a
