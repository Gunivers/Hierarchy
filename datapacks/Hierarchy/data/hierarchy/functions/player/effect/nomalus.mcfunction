execute as @e[scores={EffDamage=1..,EffHeal=..0,EffNoMalus=2000..}] run scoreboard players operation @s EffHeal = @s EffDamage

execute as @e[scores={EffNoMalus=1000..,EffPoison=1..,EffRegen=..0}] run scoreboard players operation @s EffRegen = @s EffPoison
execute as @e[scores={EffNoMalus=1000..,EffSlow=1..,EffSpeed=..0}] run scoreboard players operation @s EffSpeed = @s EffSlow

scoreboard players set @e[scores={EffNoMalus=1..}] EffSilence 0
scoreboard players set @e[scores={EffNoMalus=1..}] EffScare 0
scoreboard players set @e[scores={EffNoMalus=1..}] EffDamage 0
scoreboard players set @e[scores={EffNoMalus=1..}] EffSilencePrim 0
scoreboard players set @e[scores={EffNoMalus=1..}] EffPoison 0
scoreboard players set @e[scores={EffNoMalus=1..}] EffSlow 0


scoreboard players remove @e[scores={EffNoMalus=1000..}] EffNoMalus 0
scoreboard players remove @e[scores={EffNoMalus=2000..}] EffNoMalus 0
scoreboard players remove @e[scores={EffNoMalus=1..}] EffNoMalus 1
