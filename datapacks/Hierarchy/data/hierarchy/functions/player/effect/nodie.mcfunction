scoreboard players set @e[scores={EffNoDie=1000}] EffNoDie 0
scoreboard players set @e[scores={EffNoDie=2000}] EffNoDie 0
scoreboard players set @a[scores={EffNoDie=1..,LifeState=2..379}] LifeState 380
# scoreboard players set @a[scores={EffNoDie=1..,Respawn=0..}] EffEffSilencePrim 2
effect give @a[scores={EffNoDie=1..,InGame=1..,LifeState=..420}] slowness 1 100 true
scoreboard players set @a[scores={EffNoDie=1..,LifeState=..400}] EffInvulnerable 2
scoreboard players set @a[scores={EffNoDie=1..,LifeState=..440}] EffSilence 2
execute at @a[gamemode=adventure,scores={EffNoDie=1..,LifeState=..400}] run particle lava ~ ~ ~ 0 0 0 0 1
execute as @a[gamemode=adventure,scores={EffNoDie=1..,LifeState=381..382}] at @s run playsound entity.enderdragon.growl record @a[distance=..30] ~ ~ ~ 2 1 1
scoreboard players remove @e[scores={EffNoDie=1..,InGame=1..,LifeState=400..}] EffNoDie 1
