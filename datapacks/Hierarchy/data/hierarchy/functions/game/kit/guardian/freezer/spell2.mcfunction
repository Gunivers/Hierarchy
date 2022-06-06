execute as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @s at @s[team=Blue] at @e[team=Blue,tag=IsPlaying] run particle firework ~ ~0.1 ~ 0.5 0 0.5 0 3 force
execute as @s[team=Blue] run scoreboard players set @e[team=Blue,scores={EffSpeed=..1002},tag=IsPlaying] EffSpeed 1002
execute as @s[team=Blue] run scoreboard players set @e[team=Orange,scores={EffSlow=..2},tag=IsPlaying] EffSlow 2
effect give @s[scores={Spell2=320..}] slowness 1 127 true
scoreboard players set @s[scores={EffRegen=..1002}] EffRegen 1002
summon falling_block ~ ~ ~ {NoGravity:1,BlockState:{Name:"minecraft:ice"},Tags:["Hat"],Time:0}
summon falling_block ~ ~1 ~ {NoGravity:1,BlockState:{Name:"minecraft:ice"},Tags:["Hat"],Time:0}
scoreboard players set @s[scores={EffInvulnerable=..2}] EffInvulnerable 2
scoreboard players set @s[scores={EffSilence=..2}] EffSilence 2
scoreboard players set @s[scores={EffSilencePrim=..2}] EffSilencePrim 2
execute at @s[scores={Spell2=..300}] run playsound block.glass.break record @a[distance=..15] ~ ~ ~ 2 1 1
execute at @s[scores={Spell2=..300}] as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] run particle block ice ~ ~1 ~ 0.5 1 0.5 0 200 force @a
execute at @s[scores={Spell2=399}] run playsound entity.blaze.ambient record @a[distance=..15] ~ ~ ~ 2 2 1
execute as @e[type=armor_stand,name=Blue,tag=Setting_Particles,limit=1,sort=nearest] at @s at @s[team=Orange] at @e[team=Orange,tag=IsPlaying] run particle firework ~ ~0.1 ~ 0.5 0 0.5 0 3 force
execute as @s[team=Orange] run scoreboard players set @e[team=Orange,scores={EffSpeed=..1002},tag=IsPlaying] EffSpeed 1002
execute as @s[team=Orange] run scoreboard players set @e[team=Blue,scores={EffSlow=..2},tag=IsPlaying] EffSlow 2
