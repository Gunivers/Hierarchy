effect give @a[scores={EffHeal=1},tag=IsPlaying] instant_health 1 0 true
effect give @a[scores={EffHeal=1001..2001},tag=IsPlaying] instant_health 1 1 true
effect give @a[scores={EffHeal=2001},tag=IsPlaying] instant_health 1 2 true
effect give @e[type=zombie,scores={EffHeal=1..999,LifeState=500..}] instant_damage 1 0 true
effect give @e[type=zombie,scores={EffHeal=1000..1999,LifeState=500..}] instant_damage 1 1 true
effect give @e[type=zombie,scores={EffHeal=2000..2999,LifeState=500..}] instant_damage 1 2 true
effect give @e[type=skeleton,scores={EffHeal=1..999,LifeState=500..}] instant_damage 1 0 true
effect give @e[type=skeleton,scores={EffHeal=1000..1999,LifeState=500..}] instant_damage 1 1 true
effect give @e[type=skeleton,scores={EffHeal=2000..2999,LifeState=500..}] instant_damage 1 2 true
scoreboard players set @e[scores={EffHeal=1000}] EffHeal 0
scoreboard players set @e[scores={EffHeal=2000}] EffHeal 0
scoreboard players remove @e[scores={EffHeal=1..}] EffHeal 1

execute at @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @a[scores={EffHeal=1..}] run particle heart ~ ~2 ~ 0.3 0.3 0.3 0 1
execute at @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[scores={EffHeal=1..}] run particle heart ~ ~2 ~ 0.3 0.3 0.3 0 10
