tag @s[type=armor_stand] add Env
tag @s[x=5000.5,y=100,z=5000.5,type=armor_stand,distance=100..] add Env
tag @s[x=5000.5,y=100,z=5000.5,type=painting,distance=100..] add Env
tag @s[type=item] add Env

tag @s[type=skeleton] add IsPlaying
tag @s[type=zombie] add IsPlaying
tag @s[type=spider] add IsPlaying
tag @s[type=ocelot] add IsPlaying
tag @s[type=armor_stand,tag=!Data,tag=!Conquest] add IsPlaying

scoreboard players set @s[type=!player,tag=!Env] InGame 1

data merge entity @s[type=item] {PickupDelay:99}

data merge entity @s[type=spider] {Silent:1}
data merge entity @s[type=ocelot] {Silent:1}
scoreboard players set @s[type=ocelot,tag=!Visible] EffInvisibility 999
scoreboard players set @s[type=spider,tag=!Visible] EffInvisibility 999

team join Blue @s[tag=Blue]
team join Orange @s[tag=Orange]


scoreboard players set @e[type=!player] LifeState 500
scoreboard players add @e HaveObjective 0
scoreboard players add @e Class 0
scoreboard players add @e Var1 0
scoreboard players add @e Var2 0
scoreboard players add @e Var3 0
scoreboard players add @e Var4 0
scoreboard players add @e Var5 0
scoreboard players add @e Var6 0
scoreboard players add @e Var7 0
scoreboard players add @e Timer 0

#Spells
scoreboard players add @e C13S3 0

#Effects
scoreboard players add @e EffDamage 0
scoreboard players add @e EffInvulnerable 0
scoreboard players add @e EffResistance 0
scoreboard players add @e EffPoison 0
scoreboard players add @e EffNoDie 0
scoreboard players add @e EffNoMove 0
scoreboard players add @e EffNoTp 0
scoreboard players add @e EffFly 0
scoreboard players add @e EffHeal 0
scoreboard players add @e EffInvisibility 0
scoreboard players add @e EffJump 0
scoreboard players add @e EffNoBonus 0
scoreboard players add @e EffNoMalus 0
scoreboard players add @e EffNoDie 0
scoreboard players add @e EffPlane 0
scoreboard players add @e EffRegen 0
scoreboard players add @e EffScare 0
scoreboard players add @e EffSilence 0
scoreboard players add @e EffSilencePrim 0
scoreboard players add @e EffSlow 0
scoreboard players add @e EffSpeed 0

execute if entity @a[scores={1=0}] run function hierarchy:global/security/init-player

#Arrows identification
execute at @e[type=arrow,tag=!IDgiven] run function hierarchy:global/security/arrowid
tag @e[type=arrow] add IDgiven

#Init done
tag @e add Init
scoreboard players set @e[type=!player] 1 1
