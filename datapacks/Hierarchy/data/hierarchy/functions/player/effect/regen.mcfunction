effect give @a[scores={EffRegen=1..999,Timer=21},tag=IsPlaying] regeneration 1 2 true
effect give @a[scores={EffRegen=1..999,Timer=31},tag=IsPlaying] regeneration 1 2 true
effect give @a[scores={EffRegen=1..999,Timer=11},tag=IsPlaying] regeneration 1 2 true
effect give @a[scores={EffRegen=1..999,Timer=1},tag=IsPlaying] regeneration 1 2 true
effect give @a[scores={EffRegen=1000..,Timer=21},tag=IsPlaying] regeneration 1 3 true
effect give @a[scores={EffRegen=1000..,Timer=31},tag=IsPlaying] regeneration 1 3 true
effect give @a[scores={EffRegen=1000..,Timer=1},tag=IsPlaying] regeneration 1 3 true
effect give @a[scores={EffRegen=1000..,Timer=11},tag=IsPlaying] regeneration 1 3 true
scoreboard players set @e[scores={EffRegen=1000}] EffRegen 0
scoreboard players remove @e[scores={EffRegen=1..}] EffRegen 1


execute at @e[type=armor_stand,name=Blue,tag=Game_WTF_5,limit=1,sort=nearest] at @a[scores={EffRegen=1..}] run particle heart ~ ~2 ~ 0.3 0.3 0.3 0 1
execute at @e[type=armor_stand,scores={Timer05=1},name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @e[scores={EffRegen=1..}] run particle happy_villager ~ ~1 ~ 0.3 0.7 0.3 0 3
