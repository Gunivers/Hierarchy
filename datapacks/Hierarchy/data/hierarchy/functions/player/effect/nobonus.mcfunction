execute as @e[scores={EffNoBonus=1000..,LifeState=500..}] at @s run scoreboard players operation @e[distance=..1,limit=1,sort=nearest] EffPoison = @e[scores={EffRegen=1..},distance=..1,limit=1,sort=nearest] EffRegen
scoreboard players set @e[scores={EffNoBonus=1..}] EffRegen 0
scoreboard players set @e[scores={EffNoBonus=1..}] EffResistance 0
scoreboard players set @e[scores={EffNoBonus=1..}] EffJump 0
execute as @e[scores={EffNoBonus=1000..,LifeState=500..}] at @s run scoreboard players operation @e[distance=..1,limit=1,sort=nearest] EffDamage = @e[scores={EffHeal=1..},distance=..1,limit=1,sort=nearest] EffHeal
scoreboard players set @e[scores={EffNoBonus=1..}] EffHeal 0
execute as @e[scores={EffNoBonus=1000..,LifeState=500..}] at @s run scoreboard players operation @e[distance=..1,limit=1,sort=nearest] EffSlow = @e[scores={EffSpeed=1..},distance=..1,limit=1,sort=nearest] EffSpeed
scoreboard players set @e[scores={EffNoBonus=1..}] EffSpeed 0
scoreboard players set @e[scores={EffNoBonus=1000}] EffNoBonus 0
scoreboard players remove @e[scores={EffNoBonus=1..}] EffNoBonus 1
