effect give @a[scores={EffDamage=1,EffInvulnerable=..0,EffNoMalus=..0},tag=IsPlaying] instant_damage 1 0 true
effect give @a[scores={EffDamage=1001,EffInvulnerable=..0,EffNoMalus=..0},tag=IsPlaying] instant_damage 1 1 true
execute if entity @e[type=!player,scores={EffDamage=1..}] run function hierarchy:player/effect/damagenotplayer
scoreboard players set @e[scores={EffDamage=1000}] EffDamage 0
scoreboard players remove @e[scores={EffDamage=1..}] EffDamage 1
