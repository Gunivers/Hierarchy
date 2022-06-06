replaceitem entity @e[team=!Spec,scores={EffInvulnerable=..0,EffScare=1..,HaveObjective=..0,InGame=1..}] armor.head carved_pumpkin 1
scoreboard players set @a[team=!Spec,scores={EffNoTp=..2,EffScare=1..}] EffNoTp 2
scoreboard players set @a[team=!Spec,scores={EffNoMove=..2,EffScare=1..}] EffNoMove 2
# execute as @e[team=!Spec,scores={EffScare=1..,InGame=1..,Timer=1}] at @s run teleport @s ~ ~ ~ ~50 ~5
# execute as @e[team=!Spec,scores={EffScare=1..,InGame=1..,Timer=11}] at @s run teleport @s ~ ~ ~ ~-75 ~-10
# execute as @e[team=!Spec,scores={EffScare=1..,InGame=1..,Timer=31}] at @s run teleport @s ~ ~ ~ ~-25 ~-5
# execute as @e[team=!Spec,scores={EffScare=1..,InGame=1..,Timer=21}] at @s run teleport @s ~ ~ ~ ~50 ~10


execute as @e[team=!Spec,scores={EffScare=1..,InGame=1..,Timer=1..10}] at @s run teleport @s ~ ~ ~ ~10 ~1
execute as @e[team=!Spec,scores={EffScare=1..,InGame=1..,Timer=11..20}] at @s run teleport @s ~ ~ ~ ~-14 ~-2
execute as @e[team=!Spec,scores={EffScare=1..,InGame=1..,Timer=31..}] at @s run teleport @s ~ ~ ~ ~-5 ~-1
execute as @e[team=!Spec,scores={EffScare=1..,InGame=1..,Timer=21..30}] at @s run teleport @s ~ ~ ~ ~10 ~2
scoreboard players remove @e[scores={EffScare=1..}] EffScare 1
