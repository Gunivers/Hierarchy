scoreboard players set @a[scores={Drop=5..}] Drop 0
scoreboard players add @a[scores={Drop=1..}] Drop 1
execute as @a[scores={Drop=2}] at @s run playsound block.piston.contract record @p ~ ~ ~ 2 2 1
