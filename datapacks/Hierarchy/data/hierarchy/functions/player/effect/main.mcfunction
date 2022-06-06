#Called By /Player/IsPlaying

scoreboard players add @e[type=!item] EffNoMalus 0
execute as @e[scores={EffNoMalus=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/nomalus
scoreboard players add @e[type=!item] EffNoBonus 0
execute as @e[scores={EffNoBonus=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/nobonus
scoreboard players add @e[type=!item] EffRegen 0
execute as @e[scores={EffRegen=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/regen
scoreboard players add @a EffPlane 0
execute as @e[scores={EffPlane=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/plane
scoreboard players set @a[scores={LifeState=450..455}] EffNoDie 0
execute as @e[scores={EffNoDie=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/nodie
scoreboard players add @e[type=!item] EffMana 0
scoreboard players remove @e[scores={EffMana=1..}] EffMana 1
scoreboard players add @e[type=!item] EffFly 0
execute as @e[scores={EffFly=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/fly
scoreboard players add @e[type=!item] EffJump 0
execute as @e[scores={EffJump=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/jump
scoreboard players add @e[type=!item] EffSpeed 0
execute as @e[scores={EffSpeed=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/speed
scoreboard players add @e[type=!item] EffInvisibility 0
execute as @e[scores={EffInvisibility=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/invisibility
scoreboard players add @e[type=!item] EffInvulnerable 0
execute as @e[scores={EffInvulnerable=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/invulnerable
scoreboard players add @e[type=!item] EffHeal 0
execute as @e[scores={EffHeal=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/heal
scoreboard players add @e[type=!item] EffResistance 0
execute as @e[scores={EffResistance=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/resistance
scoreboard players add @e[type=!item] EffDamage 0
execute as @e[scores={EffDamage=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/damage
scoreboard players add @e[type=!item] EffSlow 0
execute as @e[scores={EffSlow=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/slow
scoreboard players add @e[type=!item] EffScare 0
execute as @e[scores={EffScare=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/scare
scoreboard players add @e[type=!item] EffPoison 0
execute as @e[scores={EffPoison=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/poison
scoreboard players add @a EffSilencePrim 0
execute as @e[scores={EffSilencePrim=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/silenceprim
scoreboard players add @a EffSilence 0
execute as @e[scores={EffSilence=1..},limit=1,sort=nearest] at @s run function hierarchy:player/effect/silence
effect give @a[gamemode=adventure,team=Random,scores={Class=1..,InGame=0}] glowing 1 1 true
effect give @a[gamemode=adventure,team=Orange,scores={Class=1..,InGame=0}] glowing 1 1 true
effect give @a[gamemode=adventure,team=Blue,scores={Class=1..,InGame=0}] glowing 1 1 true

execute if entity @e[scores={C3=1..}] run function hierarchy:player/effect/c3

execute as @e[type=item,limit=1,sort=nearest] at @s run function hierarchy:game/book/potion

scoreboard players remove @a[scores={EffNoMove=1..}] EffNoMove 1
scoreboard players remove @a[scores={EffNoTp=1..}] EffNoTp 1
